<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$name = file_get_contents('php://input');
$output=[];

// $sql = "select * from mimi_detail_height_imgList where d_h_name = '$name' and is_carousel !='无'";
// $result=mysqli_query($conn,$sql);
// $carouselAll = mysqli_fetch_all($result,1);


// $sql = "select * from mimi_detail_height_imgList where d_h_name = '$name' and is_carousel ='无'";
// $result=mysqli_query($conn,$sql);
// $imgList = mysqli_fetch_all($result,1);
// // print_r($imgList);
// $output["imgList"] =$imgList;

// $count = $imgList[0]["carousel_count"];


// $arr = array();
// for($i=1;$i<=$count;$i++){
//     $obj = new StdClass;
//     $val = array();
//     foreach($carouselAll as $element){
//         if($element['is_carousel'] === 'lb'.$i){
//             $obj->name = 'carousel'.$i;
//             array_push($val,$element);
//             $obj->value = $val;
//         }else{

//         }
//     }  
//     array_push($arr,$obj);
// }
// $output["carouselAll"] = $arr;

$sql = "select * from mimi_new_heheight_imgList where p_name = '$name'";
$result=mysqli_query($conn,$sql);
$heheight_imgList = mysqli_fetch_all($result,1)[0];
$output["heightAll"] = $heheight_imgList;
// print_r();
echo json_encode($output);
?>