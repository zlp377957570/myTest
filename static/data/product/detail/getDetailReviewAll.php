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

    //获取5条评论
    $sql = "select * from mimi_details_review where p_name = '$name'";
    $result = mysqli_query($conn,$sql);
    $review = mysqli_fetch_all($result,1);

    $reviewList = array();  
    for($i=0;$i<count($review);$i++){
        $obj = new StdClass;
        $img = $review[$i]["d_review_imgList"];
        $imgListAll = explode('~~~',$img);

        $review[$i]["d_review_replyList"] = json_decode($review[$i]["d_review_replyList"],true);
        $obj->reviewOnly = $review[$i];
        $obj->imgListAll = $imgListAll;
        $obj->replyList = $review[$i]["d_review_replyList"];

        array_push($reviewList,$obj);
    }
  
    $output["reviewListAll"] = $reviewList;       
}



echo json_encode($output);
?>