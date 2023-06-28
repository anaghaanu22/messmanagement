<?php
include 'connection.php';

$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

$sql = mysqli_query($con,"INSERT INTO register(name,email,password)values('$name','$email','$password')");

if ($sql) {

    $myarray['message'] = 'Added';
  
} else {

  $myarray['message'] = 'Failed';
}
echo json_encode($myarray);

?>