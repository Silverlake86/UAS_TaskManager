<?php
  
include "connection.php";

$task_name = $_POST["task_name"];
$description = $_POST["description"];
$name = $_POST["name"];
$date_posted = $_POST["date_posted"];
$due_date = $_POST["due_date"];
$status = $_POST["status"];

$sql = "INSERT INTO `task_list` (`task_name`, `description`, `name`, `date_posted`, `due_date`, `status`) VALUES ('".$task_name."', '".$description."', '".$name."', '".$date_posted."', '".$due_date."' , '".$status."');";


$query = mysqli_query($conn, $sql);
if ($query){
	$msg = "New Task Has Been Successfully Added.";

}else{
	$msg = "Failed to Add Task.";
}

  $response = array (
		'Task Data' => $msg
  );
  
  echo json_encode($response);
?>