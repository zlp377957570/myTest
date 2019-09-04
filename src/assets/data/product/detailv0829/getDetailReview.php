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
        // $obj->src = $srcLists[$i];
        // $obj->name = $nameLists[$i];
        // $obj->val = $valLists[$i];

       $reply = array();
        $img = $review[$i]["d_review_imgList"];
        $icon = $review[$i]["d_review_reply_icon"];
        $names = $review[$i]["d_review_reply_name"];
        $val = $review[$i]["d_review_reply_val"];
        $imgListAll = explode('~~~',$img);
        $iconList = explode('~~~',$icon);
        $nameList = explode('|',$names);//打撒评论
        $valList = explode('|',$val);

        $imgList = array_slice($imgListAll,0,3);
        $names = array_slice($nameList,0,1);//获取评论其中一条回复
        $val = array_slice($valList,0,1);

        $nn = array_reduce($names,'nameOnlys');//数组降维转成字符串
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
        $obj->imgList = $imgList;
        $obj->imgListAll = $imgListAll;
        $obj->replyList = $reply;
        // $obj->iconList = $iconList;
        // $obj->nameList = $nameList;
        // $obj->valList = $valList;


        // print_r($obj);
        // var_dump("</br>");
        // var_dump("</br>");
        // var_dump("</br>");
        array_push($reviewList,$obj);

    }

    // print_r($reviewList);
    // print_r($review);

   
    // $output["review"] = $review;      
    $output["reviewList"] = $reviewList;      
    $output["recommend"] = $recommend;      
    $output["foryouRecommend"] = $foryouRecommend;      
}



echo json_encode($output);
?>