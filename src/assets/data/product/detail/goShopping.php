<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
// $getData = file_get_contents('php://input');
// $requests = !empty($postData) ? json_decode($postData, true) : array();

$output=[];

// $sql = "select * from mimi_shopping_info";
// $result=mysqli_query($conn,$sql);
// $values = mysqli_fetch_row($result)[0];
// echo $count;   
// if($count==0){
//     // echo '11111';
//     $shoppingCountAll = 0;
// }else{
//     $sql = "select sum(si_count) from mimi_shopping_info";
//     $result=mysqli_query($conn,$sql);
//     $val = mysqli_fetch_row($result)[0];    
//     $shoppingCountAll = $val;
// }


$sql = "SELECT si_info FROM `mimi_shopping_info` a WHERE (a.si_info) IN (SELECT si_info FROM `mimi_shopping_info` GROUP BY si_info HAVING COUNT(*) > 1)";
$result = mysqli_query($conn,$sql);
$val = mysqli_fetch_all($result,1);
for($i=0;$i<count($val);$i++){  //暂时没用
    $info = $val[$i]["si_info"];

    $sql = "select sum(si_count) from mimi_shopping_info where si_info = '$info'";
    $result=mysqli_query($conn,$sql);
    $valAll = mysqli_fetch_row($result)[0];

    $sql = "update mimi_shopping_info set si_count = '$valAll' where si_info = '$info'";
    mysqli_query($conn,$sql);

    
}

// print_r($val);


$sql = "DELETE FROM mimi_shopping_info WHERE mimi_si_id IN (SELECT mimi_si_id FROM (SELECT mimi_si_id FROM mimi_shopping_info GROUP BY si_info HAVING count(*) > 1)e)";
mysqli_query($conn,$sql);

$sql = "SELECT DISTINCT * FROM mimi_shopping_info";
$result = mysqli_query($conn,$sql);
$valList = mysqli_fetch_all($result,1);  
// $shoppingList = json_decode($valList,true);
// print_r($valList);

for($l=0;$l<count($valList);$l++){
    // print_r();   
    // $ss = $valList[$l]["si_set_meal"];
    // $vv = urlencode($ss);
    // $bb = urldecode(json_encode($vv, JSON_UNESCAPED_UNICODE));
    // print_r($bb);
    $valList[$l]["si_set_meal"] = json_decode($valList[$l]["si_set_meal"],true);
    $valList[$l]["si_server"] = json_decode($valList[$l]["si_server"],true);
    $valList[$l]["si_gift"] = json_decode($valList[$l]["si_gift"],true);
    $valList[$l]["si_choose"] = json_decode($valList[$l]["si_choose"],true);
    $valList[$l]["si_only"] = json_decode($valList[$l]["si_only"],true);
    // print_r(json_decode(urldecode($valList[$l]["si_set_meal"])),true);
// print_r($valList[$l]["si_set_meal"]);    
}
// print_r($valList);
$output["shoppingList"] = $valList;

echo json_encode($output);
// echo json_encode($val);
?>