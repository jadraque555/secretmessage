<?php 

include('config/database.php');
include('UserInfo.php');
 


if (isset($_REQUEST['create_user'])) {

	$name = $_REQUEST['name'];
	$device = UserInfo::get_device();
	$os = UserInfo::get_os();
	$ip_address = UserInfo::get_ip();
	$browser = UserInfo::get_browser();
	$user_agent_data = UserInfo::get_user_agent();
	$uniqueId= date('Ymd', time()).mt_rand();

	$sql = "INSERT INTO users ( name, ip_address, user_agent_data, device, os, created_at, updated_at, unique_id)
	VALUES ('".$name."', '".$ip_address."', '".$user_agent_data."', '".$device."','".$os."','".date('Y-m-d')."','".date('Y-m-d')."', '".$uniqueId."')";


	if ($conn->query($sql) === TRUE) {

		$id = "SELECT LAST_INSERT_ID()";

		setcookie("secret-message-id", $conn->insert_id);

	  	echo json_encode($conn->insert_id);

	} else {

	  echo json_encode(false);

	}

	$conn->close();


} else if( isset($_REQUEST['send_message']) ) {

	$user_id = $_REQUEST['unique_id'];
	$message = $_REQUEST['message'];
	$device = UserInfo::get_device();
	$os = UserInfo::get_os();
	$ip_address = UserInfo::get_ip();
	$browser = UserInfo::get_browser();
	$user_agent_data = UserInfo::get_user_agent();
	$uniqueId= date('Ymd').time().mt_rand();

	$sql = "INSERT INTO user_message (unique_id, message, user_agent_data, device, os, ip_address, created_at, updated_at, user_id)
			VALUES ('".$user_id."', '".$message."', '".$user_agent_data."', '".$device."', '".$os."','".$ip_address."', '".date('Y-m-d H:i:s')."', '".date('Y-m-d')."', '".$user_id."')";

	if ($conn->query($sql) === TRUE) {

	  	echo json_encode(true);

	} else {

	  echo json_encode(false);

	}

	$conn->close();


} else if( isset($_REQUEST['remove_message']) ) {

	$id = $_REQUEST['id'];

	$sql = "Delete from user_message where id=".$id;
	
	if ($conn->query($sql) === TRUE) {

	  	echo json_encode(true);

	} else {

	  echo json_encode(false);

	}

	$conn->close();

} else if (isset($_REQUEST['get_user_message'])) {

	$user_id = $_COOKIE['secret-message-id'];

	$sql = "SELECT * FROM user_message WHERE user_id =".$user_id." ORDER BY id DESC";

	$result = $conn->query($sql);

	if ($result->num_rows != 0) {

		$data = [];

		while($row = $result->fetch_assoc()) {
		   $strDate = strtotime($row['created_at']);
		   $row['created_at'] = date('Y-M-d H:i:s', $strDate);
		  $data[] = $row;
		}

	  	echo json_encode(array(
	  		"total_count" => $result->num_rows,
	  		"data" => $data
	  	));

	} else {

	    echo json_encode(array(
	    	"total_count" => 0
	    ));

	}


}