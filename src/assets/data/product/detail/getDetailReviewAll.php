<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$name = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();
$name = '小米9';
$output=[];
if($name!=''){

    //获取相关推荐
    // $name = $only["p_name"];
    $sql = "select d_recommend_src,d_recommend_name,d_recommend_price from mimi_details_recommend where p_name = '$name'";
    $result = mysqli_query($conn,$sql);
    $recommend = mysqli_fetch_all($result,1);
    // print_r($recommend);


    //获取5条评论
    $sql = "select * from mimi_details_review where p_name = '$name' limit 0,5";
    $result = mysqli_query($conn,$sql);
    $review = mysqli_fetch_all($result,1);
    // print_r($recommend);
    $reviewList = array();
    for($i=0;$i<count($review);$i++){
        $obj = new StdClass;
        // $obj->src = $srcLists[$i];
        // $obj->name = $nameLists[$i];
        // $obj->val = $valLists[$i];

        $img = $review[$i]["d_review_imgList"];
        $icon = $review[$i]["d_review_reply_icon"];
        $names = $review[$i]["d_review_reply_name"];
        $val = $review[$i]["d_review_reply_val"];
        $imgList = explode('~~~',$img);
        $iconList = explode('~~~',$icon);
        $nameList = explode('|',$names);
        $valList = explode('|',$val);
        $obj->imgList = $imgList;
        $obj->iconList = $iconList;
        $obj->nameList = $nameList;
        $obj->valList = $valList;
        // print_r($obj);
        // var_dump("</br>");
        // var_dump("</br>");
        // var_dump("</br>");
        array_push($reviewList,$obj);
    }
    // print_r($reviewList);
    // print_r($review);

   
    $output["review"] = $review;      
    $output["reviewList"] = $reviewList;      
    $output["recommend"] = $recommend;      
}



echo json_encode($output);
?>