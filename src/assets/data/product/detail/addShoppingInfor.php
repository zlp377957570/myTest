<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($getData) ? json_decode($getData, true) : array();

$params = json_decode($getData,true);

$pi = $params["pi"];
$count = $params["count"];
$p_info = $params["p_info"];
// version,color,size,set_meal
$name = $params["name"];
$version = $params["version"];
$color = $params["color"];
$size = $params["size"];
$set_meal = $params["set_meal"];
$pi_set_meal = json_encode($pi["pi_set_meal"],JSON_UNESCAPED_UNICODE);//对象转字符串时 JSON_UNESCAPED_UNICODE：保持中文原样
$pi_server = json_encode($pi["pi_server"],JSON_UNESCAPED_UNICODE);
$pi_gift = json_encode($pi["pi_gift"],JSON_UNESCAPED_UNICODE);
$pi_choose = json_encode($pi["pi_choose"],JSON_UNESCAPED_UNICODE);

$output = [];

//
$sql = "select p_name,d_style_src,d_style_version,d_style_disk,d_style_color,d_style_price,d_style_original_price,d_style_MaxCount from mimi_details_style where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color' and d_style_size = '$size' and p_set_meal = '$set_meal'";
$result=mysqli_query($conn,$sql);
$only = mysqli_fetch_all($result,1)[0];
$p_only = json_encode($only,JSON_UNESCAPED_UNICODE);

// print_r($p_only);
// print_r($p_info);
$sql = "select sum(si_count) from mimi_shopping_info where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color' and d_style_size = '$size' and p_set_meal = '$set_meal'";
$result=mysqli_query($conn,$sql);
$val = mysqli_fetch_row($result)[0];
// print_r($val);
// print_r($val);
// print_r($val);
// print_r($val);
// print_r($val);
// print_r($val);
// print_r($val);
// print_r($val);
if($count+$val>$only["d_style_MaxCount"]){
    $output["hint"] = '最大数量';
    // print_r('aaaaaaaaaaaaaaaaaaaaaaaa');
}else{
    if($val){
        $vals = $val+$count;
        $sql="UPDATE mimi_shopping_info set si_count = '$vals' where p_name = '$name' and d_style_version = '$version' and d_style_color = '$color' and d_style_size = '$size' and p_set_meal = '$set_meal'";
        mysqli_query($conn,$sql);
        // print_r('ssssssssssssssssssssssss');        
    }else{
        $sql="insert into mimi_shopping_info values (null,'$name','$version','$color','$size','$set_meal','$p_info','$p_only','$pi_set_meal','$pi_server','$pi_gift','$pi_choose','$count','1')";
        mysqli_query($conn,$sql);
        // print_r('vvvvvvvvvvvvvvvvvvvvvvvv');            
    }
    $output["hint"] = 'ok';    
}
$sql = "select sum(si_count) from mimi_shopping_info";
$result=mysqli_query($conn,$sql);
$valAll = mysqli_fetch_row($result)[0];

// echo $val;

$output["shoppCountAll"] = $valAll;



// $output["params"] = $getData;
echo json_encode($output);
?>