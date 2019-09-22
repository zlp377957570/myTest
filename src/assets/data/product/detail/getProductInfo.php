<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();
$getData = json_decode($getData,true);
$type = $getData["type"];
$name = $getData["name"];
$set_meal = $getData["set_meal"];
$selectArr1 = $getData["selectArr1"];
$selectArr2 = $getData["selectArr2"];
$info = $getData["itemInfo"];

// $getData = 'aaa';
// $type = "set";
// // $name = "小米9";
// $set_meal = "标配";
// $name = "黑鲨手机2 Pro";
// $selectArr1 = array("d_style_version","d_style_color","p_set_meal");
// $selectArr2 = array("12GB+256GB", "电鸣黑", "标配");
// // $selectArr2 = array("8GB+128GB", "深空灰", "标配");
$output=[];
if($getData!=''){

    if($type==='get'){
        $p = "p_name";
        $sql = "select * from mimi_product_info where $p = '$name' and p_set_meal = '$set_meal' and p_info = '$info'";
        $result=mysqli_query($conn,$sql);
        $only = mysqli_fetch_all($result,1)[0];        
    }
    if($type==='set'){
        $count = count($selectArr1);
        for($i=0; $i<$count;$i++){
            $sqlArr = array();
            $sss = $count-$i;

            for($j=0; $j<$sss;$j++){
                $sqlArr[$j] = "$selectArr1[$j] = '$selectArr2[$j]'";
            }
            $where=" where p_name = '$name' and ".implode(" and ",$sqlArr); 
            $sql = "select * from mimi_product_info $where";

            $result=mysqli_query($conn,$sql);
            $only = mysqli_fetch_all($result,1);              

            if(count($only)>0){
                $only = $only[0];
                break;
            }   
                       
        }            

    }

    if($only){
        $name = $only["p_name"];
        $version = $only["d_style_version"];
        $color = $only["d_style_color"];
        $size = $only["d_style_size"];      
        $set_meal = $only["p_set_meal"];      

        $sql = "select pi_set_meal from mimi_product_info where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color' and d_style_size = '$size' and p_set_meal = '$set_meal'";
        $result = mysqli_query($conn,$sql);
        $set_mealList = mysqli_fetch_all($result,1);
        // $set_mealList = array_unique($meal,SORT_REGULAR);
        
        for($l=0;$l<count($set_mealList);$l++){
            $set_mealList[$l]["pi_set_meal"] = json_decode($set_mealList[$l]["pi_set_meal"],true);
        }        
        // print_r($set_mealList);
        $output["product_info"] = $only;   
        $output["product_set_meal"] = $set_mealList[0];   
    } 

 
}



echo json_encode($output,true);
?>