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
// $getData = "小米9 全网通版 8GB+128GB 全息幻彩紫";
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
    $sql = "select count(p_name) from mimi_details_style where p_info = '$getData'";
    $result=mysqli_query($conn,$sql);
    $count = mysqli_fetch_row($result)[0];
    // echo $count;   
    if($count==0){
        // echo '11111';
        $sql = "select * from mimi_details_style where p_name = '$oname' and d_style_model = '$omodel' and d_style_version = '$oversion'";
        $result=mysqli_query($conn,$sql);
        $only = mysqli_fetch_all($result,1)[0];
        // print_r($only);  
    }else{
        $sql = "select * from mimi_details_style where p_info = '$getData'";
        $result=mysqli_query($conn,$sql);
        $only = mysqli_fetch_all($result,1)[0];
    }
    // print_r($only);  


    // 获取手机图片组
    $imgs = $only["d_style_imgs"];
    $imgsList = explode("~~~",$imgs);

    // //获取赠品组
    // $gifts = $only["d_style_is_gift"];
    // $giftList = explode("~~~",$gifts);

    //获取手机规格组
    $name = $only["p_name"];
    $sql = "select d_style_version from mimi_details_style where p_name = '$name'";
    $result = mysqli_query($conn,$sql);
    $ver = mysqli_fetch_all($result,1);
    $versionList = array_unique($ver,SORT_REGULAR);
    // print_r($versionList);

    //获取手机规格组
    // $color = $only["d_style_color"];
    // $sql = "select d_style_version from mimi_details_style where d_style_color = '$color'";
    // $result = mysqli_query($conn,$sql);
    // $versionList = mysqli_fetch_all($result,1);
    // print_r($versionList);

    //获取手机款式组
    $version = $only["d_style_version"];
    $sql = "select d_style_color from mimi_details_style where d_style_version = '$version'";
    $result = mysqli_query($conn,$sql);
    $colorList = mysqli_fetch_all($result,1);
    // print_r($colorList);
    
    //获取手机服务信息表   
    // $sql = "select * from mimi_detail_service where p_name = '$name'";
    // $result = mysqli_query($conn,$sql);
    // $serviceList = mysqli_fetch_all($result,1);   

// //获取承诺
//     $promise = $only["d_style_promise"];
//     $only["d_style_promise"] = json_decode($promise,true);

// //获取设备配置信息
//     $iconList = $only["d_style_iconList"];
//     $only["d_style_iconList"] = json_decode($iconList,true);

// //获取分期
//     $installment = $only["d_style_installment"];
//     $only["d_style_installment"] = json_decode($installment,true);
//     // print_r($arr);

     
    $output["imgsList"] = $imgsList;         
    $output["colorList"] = $colorList;      
    $output["versionList"] = $versionList;        
    $output["detail"] = $only;      
 
}



echo json_encode($output,true);
?>