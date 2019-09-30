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

    //获取为你推荐
    // $name = $only["p_name"];
    $sql = "select * from mimi_detail_foryou_recommend where p_name = '$name'";
    $result = mysqli_query($conn,$sql);
    $foryouRecommend = mysqli_fetch_all($result,1);

    //获取5条评论
    $sql = "select * from mimi_details_review where p_name = '$name' limit 0,5";
    $result = mysqli_query($conn,$sql);
    $review = mysqli_fetch_all($result,1);

    $reviewList = array();
 
    for($i=0;$i<count($review);$i++){
        $obj = new StdClass;
        $img = $review[$i]["d_review_imgList"];
        $imgListAll = explode('~~~',$img);

        // $imgListAll = array_slice($imgListAll,0,3);

        $review[$i]["d_review_replyList"] = json_decode($review[$i]["d_review_replyList"],true);
        $obj->reviewOnly = $review[$i];
        $obj->imgListAll = $imgListAll;
        $obj->replyList = $review[$i]["d_review_replyList"];

        // var_dump("</br>");
        // var_dump("</br>");
        // var_dump("</br>");
        array_push($reviewList,$obj);

    }
 
    $output["reviewList"] = $reviewList;      
    $output["recommend"] = $recommend;      
    $output["foryouRecommend"] = $foryouRecommend;      
}



echo json_encode($output);
?>