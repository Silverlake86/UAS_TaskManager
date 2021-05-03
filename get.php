<?php

include "connection.php";

$sql = "SELECT * FROM task_list";
$query = mysqli_query($conn,$sql);
while ($data = mysqli_fetch_array($query)){

    $item[] = array (
        'task_name'=>$data["task_name"],
        'description'=>$data["description"],
        'name'=>$data["name"],
	      'date_posted'=>$data["date_posted"],
        'due_date'=>$data["due_date"],
        'status'=>$data["status"],
    );
  }

  $response = array (
        'task' => $item
  );

  echo json_encode($response);

?>