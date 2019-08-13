<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();

// var_dump($getData);
// $getData = "小米9 全网通版 8GB+256GB 全息幻彩紫";
// $getData = "小米9 6GB+128GB";
$getDataList = explode(" ",$getData);
// print_r($getDataList);
$oname = $getDataList[0];
$oversion = $getDataList[1];

$output=[];
if($getData!=''){
    
    $sql = "select * from mimi_details_min_iconlistall where d_icon_name = '$oname' and d_icon_version = '$oversion'";
    $result=mysqli_query($conn,$sql);
    $list = mysqli_fetch_all($result,1);
    // print_r($list);  

    $output["iconAllList"] = $list;      
}



echo json_encode($output);
?>