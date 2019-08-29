<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
// $getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();

// var_dump($getData);
// $getData = "小米9 全网通版 8GB+256GB 全息幻彩紫";
// $getData = "小米9 全网通版 6GB+128GB";
// $getData = "小米9 全网通版 8GB+128GB 透明版";
// $getDataList = explode(" ",$getData);
// print_r($getDataList);
// $oname = $getDataList[0];
// $omodel = $getDataList[1];
// $oversion = $getDataList[2];
// echo $oname;
// echo $omodel;
// echo $oversion;
$output=[];

$sql = "select count(si_info) from mimi_shopping_info";
$result=mysqli_query($conn,$sql);
$count = mysqli_fetch_row($result)[0];
// echo $count;   
if($count==0){
    // echo '11111';
    $shoppingCountAll = 0;
}else{
    $sql = "select sum(si_count) from mimi_shopping_info";
    $result=mysqli_query($conn,$sql);
    $val = mysqli_fetch_row($result)[0];    
    $shoppingCountAll = $val;
}


$output["shoppingCountAll"] = $shoppingCountAll;

// $json_string = json_encode($only, JSON_FORCE_OBJECT);
// $json_string = json_decode($only,JSON_FORCE_OBJECT);
// print_r($only);
// 小米9 全网通版 8GB+256GB 透明版
// 小米9 全网通版 8GB+256GB 透明版
echo json_encode($output);
?>