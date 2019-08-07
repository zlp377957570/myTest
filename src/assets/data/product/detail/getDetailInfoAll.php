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

    //获取赠品组
    $gifts = $only["d_style_is_gift"];
    $giftList = explode("~~~",$gifts);

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
    
    //获取手机配置信息表
        //获取配置图片路径
        $srcList = $only["d_style_iconList_srcList"];
        $srcLists = explode(",",$srcList);
        // print_r($srcLists);  
        //获取配置名称
        $nameList = $only["d_style_iconList_nameList"];
        $nameLists = explode(",",$nameList);
        // print_r($nameLists);  
        //获取配置参数
        $valList = $only["d_style_iconList_valList"];
        $valLists = explode(",",$valList);
        // print_r($valLists);  
        $arr = array();

    for($i=0;$i<count($nameLists);$i++){
        $obj = new StdClass;
        $obj->src = $srcLists[$i];
        $obj->name = $nameLists[$i];
        $obj->val = $valLists[$i];

        array_push($arr,$obj);
    }
    // print_r($arr);

    //获取相关推荐
    // // $name = $only["p_name"];
    // $sql = "select d_recommend_src,d_recommend_name,d_recommend_price from mimi_details_recommend where p_name = '$name'";
    // $result = mysqli_query($conn,$sql);
    // $recommend = mysqli_fetch_all($result,1);
    // print_r($recommend);

    //获取5条评论
    // $name = $only["p_name"];
    // $sql = "select * from mimi_details_review where p_name = '$name' limit 0,5";
    // $result = mysqli_query($conn,$sql);
    // $review = mysqli_fetch_all($result,1);
    // print_r($recommend);

    // print_r($giftList);  
    // print_r($srcList);  
    // print_r($color.'cccccc');  
    // print_r($version.'vvvvvv');  
    // print_r($imgs.'iiiiii');  

    $output["iconList"] = $arr;      
    $output["imgsList"] = $imgsList;      
    $output["giftList"] = $giftList;      
    $output["colorList"] = $colorList;      
    $output["versionList"] = $versionList;      
    $output["detail"] = $only;      
    // $output["recommend"] = $recommend;      
    // $output["review"] = $review;      
}



echo json_encode($output);
?>