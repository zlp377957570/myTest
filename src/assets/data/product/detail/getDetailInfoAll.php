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
// $name = "黑鲨手机2 Pro";
// $set_meal = "标配";
// $selectArr1 = array("d_style_version","d_style_color","p_set_meal");
// $selectArr2 = array("12GB+256GB", "电鸣黑", "标配");
// $info = null;

// $getData = 'aaa';
// $type = "set";
// $name = "小米9";
// $set_meal = "标配";
// $name = "黑鲨手机2 Pro";
// $selectArr1 = array("d_style_version","d_style_color","p_set_meal");
// $selectArr2 = array("12GB+256GB", "电鸣黑", "标配");
// $selectArr2 = array("8GB+128GB", "深空灰", "标配");
// $info = null;
//         echo '  -    -   -   -  ';
// print_r($type);
// print_r($name);
// print_r($set_meal);
// print_r($selectArr1);
// print_r($selectArr2);
// print_r($info);
// $getData = "小米9 全网通版 8GB+256GB 全息幻彩紫";
// $getData = "小米9 全网通版 6GB+128GB";
// $getData = "小米9 全网通版 8GB+128GB 全息幻彩紫";
// $getDataList = explode(",",$getData);
// print_r($getDataList);
// $oname = $getDataList[0];
// $omodel = $getDataList[1];
// $oversion = $getDataList[2];
// echo $oname;
// echo $omodel;
// echo $oversion;
$output=[];
if($getData!=''){
    // $sql = "select count(p_name) from mimi_details_style where p_info = '$getData'";
    // $result=mysqli_query($conn,$sql);
    // $count = mysqli_fetch_row($result)[0];
    // // echo $count;   
    // if($count==0){
    //     // echo '11111';
    //     $sql = "select * from mimi_details_style where p_name = '$oname' and d_style_model = '$omodel' and d_style_version = '$oversion'";
    //     $result=mysqli_query($conn,$sql);
    //     $only = mysqli_fetch_all($result,1)[0];
    //     // print_r($only);  
    // }else{
    //     $sql = "select * from mimi_details_style where p_info = '$getData'";
    //     $result=mysqli_query($conn,$sql);
    //     $only = mysqli_fetch_all($result,1)[0];
    // }
    // 黑鲨手机2 Pro
    // 黑鲨游戏手机2 Pro 12GB+256GB 电鸣黑
    //标配

    // 黑鲨手机2 Pro
    // 黑鲨游戏手机2 Pro 12GB+256GB 电鸣黑

        // echo '  -    -   -   -  ';
    if($type==='get'){
        $p = "p_name";
        $sql = "select * from mimi_details_style where $p = '$name' and p_set_meal = '$set_meal' and p_info = '$info'";
        $result=mysqli_query($conn,$sql);
        $only = mysqli_fetch_all($result,1)[0];        
    }
    if($type==='set'){
        // $kws=explode(" ",$kw);
        // for($i=0;$i<count($kws);$i++){
        //     $kws[$i]=" title like '%".$kws[$i]."%'";
        // }
        // $where=" where ".implode(" and ",$kws);
        $count = count($selectArr1);
        for($i=0; $i<$count;$i++){
            $sqlArr = array();
            $sss = $count-$i;
            // echo '  -    -   -   -  ';
            // print_r($sss);
            // echo '  -    -   -   -  ';
            for($j=0; $j<$sss;$j++){
                $sqlArr[$j] = "$selectArr1[$j] = '$selectArr2[$j]'";
            }
            $where=" where p_name = '$name' and ".implode(" and ",$sqlArr); 
            $sql = "select * from mimi_details_style $where";
            // echo 'aaaaaaaaaaa';
            // print_r($sql);
            // print_r($sqlArr);
            $result=mysqli_query($conn,$sql);
            $only = mysqli_fetch_all($result,1);              
            // echo '  -    -   -   -  ';
            // print_r($only);
            if(count($only)>0){
                $only = $only[0];
                // // 获取手机图片组
                // $imgs = $only["d_style_imgs"];
                // $imgsList = json_decode($imgs,true);            
        
                // //获取手机规格组
                // $name = $only["p_name"];
                // $version = $only["d_style_version"];
                // $color = $only["d_style_color"];
                // $size = $only["d_style_size"];
                // $set_meal = $only["p_set_meal"];
                // $sql = "select d_style_version from mimi_details_style where p_name = '$name'";
                // $result = mysqli_query($conn,$sql);
                // $ver = mysqli_fetch_all($result,1);
                // $versionList = array_unique($ver,SORT_REGULAR);
                // // print_r($versionList);
        
                // //获取手机款式组
                // $sql = "select d_style_color from mimi_details_style where p_name = '$name' and d_style_version = '$version'";
                // $result = mysqli_query($conn,$sql);
                // $cor = mysqli_fetch_all($result,1);
                // $colorList = array_unique($cor,SORT_REGULAR);
        
                // //获取手机尺寸组
                // $sql = "select d_style_size from mimi_details_style where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color'";
                // $result = mysqli_query($conn,$sql);
                // $siz = mysqli_fetch_all($result,1);
                // $sizeList = array_unique($siz,SORT_REGULAR);
                // // print_r($sizeList);
        
                // //获取手机套餐组
                // $sql = "select p_set_meal from mimi_details_style where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color' and d_style_size = '$size'";
                // $result = mysqli_query($conn,$sql);
                // $meal = mysqli_fetch_all($result,1);
                // $set_mealList = array_unique($meal,SORT_REGULAR);
                // // print_r($set_mealList);

                // $output["imgsList"] = $imgsList;         
                // $output["colorList"] = $colorList;      
                // $output["versionList"] = $versionList;        
                // $output["sizeList"] = $sizeList;        
                // $output["detail"] = $only;   
                break;
            }   
                       
        }            

    }
    if($only){
        // $only = $only[0];
        // 获取手机图片组
        $imgs = $only["d_style_imgs"];
        $imgsList = json_decode($imgs,true);     

        //获取手机规格组
        $name = $only["p_name"];
        $version = $only["d_style_version"];
        $color = $only["d_style_color"];
        $size = $only["d_style_size"];
        $set_meal = $only["p_set_meal"];
        $sql = "select d_style_version from mimi_details_style where p_name = '$name'";
        $result = mysqli_query($conn,$sql);
        $ver = mysqli_fetch_all($result,1);
        $versionList = array_unique($ver,SORT_REGULAR);
        // print_r($versionList);

        //获取手机款式组
        $sql = "select d_style_color from mimi_details_style where p_name = '$name' and d_style_version = '$version'";
        $result = mysqli_query($conn,$sql);
        $cor = mysqli_fetch_all($result,1);
        $colorList = array_unique($cor,SORT_REGULAR);

        //获取手机尺寸组
        $sql = "select d_style_size from mimi_details_style where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color'";
        $result = mysqli_query($conn,$sql);
        $siz = mysqli_fetch_all($result,1);
        $sizeList = array_unique($siz,SORT_REGULAR);
        // print_r($sizeList);

        //获取手机套餐组
        $sql = "select p_set_meal from mimi_details_style where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color' and d_style_size = '$size'";
        $result = mysqli_query($conn,$sql);
        $meal = mysqli_fetch_all($result,1);
        $set_mealList = array_unique($meal,SORT_REGULAR);
        // print_r($set_mealList);

        $output["imgsList"] = $imgsList;         
        $output["colorList"] = $colorList;      
        $output["versionList"] = $versionList;        
        $output["sizeList"] = $sizeList;        
        $output["set_mealList"] = $set_mealList;        
        $output["detail"] = $only;   
    } 

 
}



echo json_encode($output,true);
?>