<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");

$output=[];

$sql = "select * from mimi_detail_height_imgList where is_carousel !='无'";
$result=mysqli_query($conn,$sql);
$carouselAll = mysqli_fetch_all($result,1);



$sql = "select * from mimi_detail_height_imgList where is_carousel ='无'";
$result=mysqli_query($conn,$sql);
$imgList = mysqli_fetch_all($result,1);
// print_r($imgList);
$output["imgList"] =$imgList;
// for($i=1;$i<=$list;$i++){
    // print_r($list[$i]['is_carousel']);
    // if($list[$i]['is_carousel']==='1b1'){
        // array_push($arr,$list[$i]);
        // echo '1111';
    // }
// }
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
// echo '<br>';
// echo '<br>';
// echo '<br>';
// echo '</br>';
// foreach($list as $element){
//     // if($element->is_carousel == 'lb1'){
//         // print_r($element['is_carousel']);
//         if($element['is_carousel'] === 'lb1'){
//             echo 'caonima';
//         }else{
//             echo '2';    
//         }
//     // }
// }
// print_r($arr);
// for($i=1;$i<=$count;$i++){
//     // echo $i;
//     $sql="select * from mimi_detail_height_imgList where p_index = $i";
//     $result=mysqli_query($conn,$sql);
//     $values=mysqli_fetch_all($result,1);

//     $obj = new StdClass;
//     $obj->p_name = $values[0]["p_name"];
//     $obj->style_type = $values[0]["style_type"];
//     $obj->p_line = $values[0]["p_line"];
//     $obj->values = $values;
//     array_push($output["products"],$obj);


// } 

echo json_encode($output);
?>