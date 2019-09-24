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


$sql="DELETE FROM mimi_shopping_info where mimi_si_id = '$id'";
mysqli_query($conn,$sql);




$output = [];

// $output["params"] = $getData;
echo json_encode($output);
?>