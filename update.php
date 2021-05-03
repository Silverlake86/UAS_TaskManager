<?php

	include "connection.php";
	$ID = $_GET['task_id'];
	
	$task_name = $_POST["task_name"];
	$description = $_POST["description"];
	$name = $_POST["name"];
	$date_posted = $_POST["date_posted"];
	$due_date = $_POST["due_date"];
	$status = $_POST["status"];
	
	$query = "UPDATE `task_list` SET `task_name` = '".$task_name."', `description` = '".$description."', `name` = '".$name."', `date_posted` = '".$date_posted."', `due_date` = '".$due_date."', `status` = '".$status."' WHERE `task_list`.`task_id` = ".$ID.";";		
	mysqli_query($conn, $query);
	if ($query){
	$msg = "Task has been Updated Successfully.";

	}else{
	$msg = "Fail to Update Task.";
	}

  $response = array (
		'Task Status' => $msg
  );
  
  echo json_encode($response);
?>