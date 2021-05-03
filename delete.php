<?php

	include_once('connection.php');
	$ID = $_GET['task_id'];
	$query = "DELETE FROM `task_list` WHERE `task_list`.`task_id` = ".$ID.";";
	mysqli_query($conn, $query);
	if ($query){
	$msg = "Task is Successfully Deleted";

	}else{
	$msg = "Failed to Delete Data.";
	}

  $response = array (
		'Status Data Task' => $msg
  );
  
  echo json_encode($response);
?>
