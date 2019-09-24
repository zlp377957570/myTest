<?php
//addShoppingInfor
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../../init.php");
$getData = file_get_contents('php://input');
// $requests = !empty($getData) ? json_decode($getData, true) : array();

$params = json_decode($getData,true);
$obj = $params["obj"];
$id = $obj["mimi_si_id"];
// json_encode($pi["pi_choose"],JSON_UNESCAPED_UNICODE);
$set_meal = json_encode($obj["si_set_meal"],JSON_UNESCAPED_UNICODE);
// $server = $obj["si_server"];
$server = json_encode($obj["si_server"],JSON_UNESCAPED_UNICODE);
// $gift = $obj["si_gift"];
$gift = json_encode($obj["si_gift"],JSON_UNESCAPED_UNICODE);
// $choose = $obj["si_choose"];
$choose = json_encode($obj["si_choose"],JSON_UNESCAPED_UNICODE);
$count = $obj["si_count"];
$checked = $obj["si_checked"];
// print_r($obj);
// print_r($set_meal);
// print_r($server);
// print_r($gift);
// print_r($count);
// print_r($checked);



// echo '>>>>>>>>>>>>>>>>>>>>>';

$sql="UPDATE mimi_shopping_info set si_set_meal = '$set_meal',si_server = '$server',si_gift = '$gift',si_choose = '$choose',si_count = '$count',si_checked = '$checked' where mimi_si_id = '$id'";
mysqli_query($conn,$sql);




$output = [];

// $output["params"] = $getData;
echo json_encode($output);
?>