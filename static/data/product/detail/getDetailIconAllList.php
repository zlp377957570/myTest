<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();

$getData = json_decode($getData,true);
$name = $getData["name"];
$version = $getData["version"];
$output=[];
if($getData!=''){
    
    $sql = "select d_icon_min_list from mimi_details_min_iconlistall where d_icon_name = '$name' and d_icon_version = '$version'";
    $result=mysqli_query($conn,$sql);
    $list = mysqli_fetch_all($result,1)[0];
    // print_r($list);  

    $output["iconAllList"] = $list;      
}



echo json_encode($output);
?>