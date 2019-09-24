<?php
//data/getMiProductsByKw.php
// header('Content-type:text/json');
require_once("../init.php");
@$kw=$_REQUEST["kw"];
@$pno=$_REQUEST["pno"];
@$order=$_REQUEST["order"];
@$filter=$_REQUEST["filter"];
$output=["count"=>0,"pageSize"=>8,"pageCount"=>0,"pno"=>0,"order"=>null,"filter"=>[],"products"=>[]];
// if($kw!=null&&$pno!=null){
// 	// $kw = '小米';
// 	// $pno = 0;
// 	$kws=explode(" ",$kw);
// 	for($i=0;$i<count($kws);$i++){
// 		$kws[$i]=" p_name like '%".$kws[$i]."%'";
//     }
// 	$where=" where ".implode(" and ",$kws);
// 	$sql="select count(*) from mi_product_overview $where";
// 	$result=mysqli_query($conn,$sql);
// 	$output["count"]=mysqli_fetch_row($result)[0];
//     echo $output["count"]."<br>";



// 	$output["pageCount"]=Ceil($output["count"]/$output["pageSize"]);
// 	$output["pno"]=$pno;
// 	$limit=" limit ".$output["pageSize"]*$pno.",".$output["pageSize"];
// 	$sql="select *, ".
// "(select md from mi_product_pic where i_f_id=p_f_id limit 1)"
// 		." as md from mi_product_overview $where $limit ";
// // $sql = "select md from mi_product_pic where"
// 	$result=mysqli_query($conn,$sql);
// 	$output["products"]["detail"]=mysqli_fetch_all($result,1);
// }
// $kw = '小米8';Countablein
// $pno = 0;
// echo $order;
if($kw!=null&&$pno!=null&&$order!=null){
	$filters = explode(",",$filter);
	echo $filters;
	echo sizeof($filters);
	print_r($filter);
	// if(count($filter,COUNT_NORMAL)>0){
	// 	foreach($filter as $fv){
	// 		$where = null;
	// 		$where += " and ".$fv != "";
	// 	}
	// 	echo $where;
	// }
	if($order=='综合'){
		$sql = "SELECT * FROM mi_product_overview WHERE p_name LIKE '%$kw%' LIMIT 0,5";
		$result = mysqli_query($conn,$sql);
		$values=mysqli_fetch_all($result,1);	
	}else if($order=='新品'){
		$sql = "SELECT * FROM mi_product_overview WHERE p_name LIKE '%$kw%' order by shelf_time asc LIMIT 0,5 ";
		$result = mysqli_query($conn,$sql);
		$values=mysqli_fetch_all($result,1);			
	}else if($order=='销量'){
		$sql = "SELECT * FROM mi_product_overview WHERE p_name LIKE '%$kw%' order by sales_count asc LIMIT 0,5 ";
		$result = mysqli_query($conn,$sql);
		$values=mysqli_fetch_all($result,1);			
	}else if($order=='价格A'){
		$sql = "SELECT * FROM mi_product_overview WHERE p_name LIKE '%$kw%' order by price asc LIMIT 0,5 ";
		$result = mysqli_query($conn,$sql);
		$values=mysqli_fetch_all($result,1);			
	}else if($order=='价格B'){
		$sql = "SELECT * FROM mi_product_overview WHERE p_name LIKE '%$kw%' order by price desc LIMIT 0,5 ";
		$result = mysqli_query($conn,$sql);
		$values=mysqli_fetch_all($result,1);			
	}
	foreach($values as $val){
		$pfid = $val["p_f_id"];
		// echo $pfid;
		$sql = "select i_color,src from mi_product_inventory where i_f_id = $pfid and img_type = '1'";
		$result = mysqli_query($conn,$sql);
		$li=mysqli_fetch_all($result,1);
		$val["pics"] = $li;
		// echo '<br>';
		array_push($output["products"],$val);
	}
	$output["order"] = $order;
	$output["filter"] = $filter;
}


echo json_encode($output);
// echo json_encode($values);
?>