<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();

// var_dump($getData);
// $getData = "小米9 全网通版 8GB+256GB 全息幻彩紫";
// $getData = "小米9 全网通版 6GB+128GB";
// $getData = "小米9 全网通版 8GB+128GB 透明版";
$getDataList = explode(" ",$getData);
// print_r($getDataList);
$oname = $getDataList[0];
$omodel = $getDataList[1];
$oversion = $getDataList[2];
// echo $oname;
// echo $omodel;
// echo $oversion;
$output=[];
if($getData!=''){

    $sql = "select count(pi_name) from mimi_product_info where pi_info = '$getData'";
    $result=mysqli_query($conn,$sql);
    $count = mysqli_fetch_row($result)[0];
    // echo $count;   
    if($count==0){
        // echo '11111';
        $sql = "select * from mimi_product_info where pi_name = '$oname' and pi_model = '$omodel' and pi_version = '$oversion'";
        $result=mysqli_query($conn,$sql);
        $only = mysqli_fetch_all($result,1)[0];
        // print_r($only);  
    }else{
        $sql = "select * from mimi_product_info where pi_info = '$getData'";
        $result=mysqli_query($conn,$sql);
        $only = mysqli_fetch_all($result,1)[0];
    }


    $output["product_info"] = $only;
}
// $json_string = json_encode($only, JSON_FORCE_OBJECT);
// $json_string = json_decode($only,JSON_FORCE_OBJECT);
// print_r($only);
// 小米9 全网通版 8GB+256GB 透明版
// 小米9 全网通版 8GB+256GB 透明版
echo json_encode($output);
?>