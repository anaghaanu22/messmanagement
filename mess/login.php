<?php

include 'connection.php';

$username = $_POST['email'];
$password = $_POST['password'];
$sql = mysqli_query($con, "SELECT * from register where email ='$username' and password ='$password'");



if ($sql) {
    if(mysqli_num_rows($sql)>0){
        $row = mysqli_fetch_assoc($sql);

        $myarray['message'] = 'login';
    
      

    }
    else {

        $myarray['message'] = 'failed';
      }
  
} 
echo json_encode($myarray);
