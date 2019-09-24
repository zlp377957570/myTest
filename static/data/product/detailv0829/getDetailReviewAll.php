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
    function nameOnlys(&$nn, $record) {

        // echo '********';
        // return $ids . ',' . $record['id'];
        return $record;
    };
    function valOnlys(&$vv, $record) {
        return $record;
    };   
    for($i=0;$i<count($review);$i++){
        $obj = new StdClass;

       $reply = array();
        $img = $review[$i]["d_review_imgList"];
        $icon = $review[$i]["d_review_reply_icon"];
        $names = $review[$i]["d_review_reply_name"];
        $val = $review[$i]["d_review_reply_val"];
        $imgListAll = explode('~~~',$img);
        $iconList = explode('~~~',$icon);
        $nameList = explode('|',$names);
        $valList = explode('|',$val);
        $names = array_slice($nameList,0,1);
        $val = array_slice($valList,0,1);
        $nn = array_reduce($names,'nameOnlys');
        $vv = array_reduce($val,'valOnlys');
        $review[$i]["d_review_reply_name"] = $nn;
        $review[$i]["d_review_reply_val"] = $vv;

        for($j=0;$j<count($nameList);$j++){
            $vals = new StdClass;
            $vals->icon = $iconList[$j];
            $vals->name = $nameList[$j];
            $vals->val = $valList[$j];
            array_push($reply,$vals);
        }
        $obj->reviewOnly = $review[$i];
        $obj->imgListAll = $imgListAll;
        $obj->replyList = $reply;

        array_push($reviewList,$obj);
    }
  
    $output["reviewListAll"] = $reviewList;       
}



echo json_encode($output);
?>