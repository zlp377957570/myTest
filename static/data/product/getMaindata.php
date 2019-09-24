<?php
//data/getProductsByKw.php
//1:修改响应头格式为json
header("Content-Type:application/json;charset=utf-8");
require_once("../init.php");
// @$kw=$_REQUEST["kw"];
// @$pno=$_REQUEST["pno"];
$output=["products"=>[]];
// if($kw!=null&&$pno!=null){
	// $kw = '小米';
	// $pno = 0;
// 	$kws=explode(" ",$kw);
// 	for($i=0;$i<count($kws);$i++){
// 		$kws[$i]=" title like '%".$kws[$i]."%'";
//     }
// 	$where=" where ".implode(" and ",$kws);
// 	$sql="select count(*) from xz_laptop $where";
// 	$result=mysqli_query($conn,$sql);
// 	$output["count"]=mysqli_fetch_row($result)[0];
    


// 	$output["pageCount"]=Ceil($output["count"]/$output["pageSize"]);
// 	$output["pno"]=$pno;
// 	$limit=" limit ".$output["pageSize"]*$pno.",".$output["pageSize"];
// 	$sql="select *, ".
// "(select md from xz_laptop_pic where laptop_id=lid limit 1)"
// 		." as md from xz_laptop $where $limit ";
$sql = "select count(distinct(p_index)) from mimi_product_overview";
$result=mysqli_query($conn,$sql);
$count = mysqli_fetch_row($result)[0];
// print_r($count);
// $sql="select * from mimi_product_overview where p_index = 1";
// 	$result=mysqli_query($conn,$sql);
//     $values=mysqli_fetch_all($result,1);
    // $arr
    // foreach($values as $val=>$i){
    //     $s = $i;
    //     $z = $i["p_index"];
    //     $sql="select * from mimi_product_overview where p_index = 1";
    //     // print_r($s);
    //     print_r($z);
    // }
for($i=1;$i<=$count;$i++){
    // echo $i;
    $sql="select * from mimi_product_overview where p_index = $i";
    $result=mysqli_query($conn,$sql);
    $values=mysqli_fetch_all($result,1);
    // $values = mysqli_fetch_row($result)[0];
    // $i['index'] = $values;
    // array_push($output["products"],$values);
    $obj = new StdClass;
    $obj->p_name = $values[0]["p_name"];
    $obj->style_type = $values[0]["style_type"];
    $obj->p_line = $values[0]["p_line"];
    $obj->values = $values;
    array_push($output["products"],$obj);
        // print_r($values);

} 
// print_r($values);
// }
echo json_encode($output);
?>