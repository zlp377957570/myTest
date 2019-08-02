<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();

// var_dump($getData);
$output=[];
if($getData!=''){
    $sql = "select * from mimi_details_style where p_info = '$getData'";
    $result=mysqli_query($conn,$sql);
    $only = mysqli_fetch_all($result,1)[0];
    print_r($only);  
    $color = $only["d_style_color"];
    print_r($color);  
    // echo $only;  
}
// 小米9 全网通版 6GB+128GB 全息幻彩紫
// 小米9 全网通版 6GB+128GB 全息幻彩紫

$sql = "select * from mimi_detail_height_imgList where is_carousel !='无'";
$result=mysqli_query($conn,$sql);
$carouselAll = mysqli_fetch_all($result,1);



$sql = "select * from mimi_detail_height_imgList where is_carousel ='无'";
$result=mysqli_query($conn,$sql);
$imgList = mysqli_fetch_all($result,1);

$output["imgList"] =$imgList;

$count = $imgList[0]["carousel_count"];
// echo $count;

$arr = array();
for($i=1;$i<=$count;$i++){
    $obj = new StdClass;
    $val = array();
    foreach($carouselAll as $element){
        // if($element->is_carousel == 'lb1'){
            // print_r($element['is_carousel']);
            if($element['is_carousel'] === 'lb'.$i){
                // echo 'caonima';
               $obj->name = 'carousel'.$i;
               array_push($val,$element);
               $obj->value = $val;
            }else{
                // echo '2';    
            }
        // }
    }  
    array_push($arr,$obj);
}
$output["carouselAll"] = $arr;


echo json_encode($output);
?>