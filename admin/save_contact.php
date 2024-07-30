<?php
include "connection.php";

if(isset($_POST['submit'])){

$name=$_POST['name'];
$email=$_POST['email'];
$idea=$_POST['idea'];
$message=$_POST['message'];

// $_password=$_POST['userpassword'];



 $result="INSERT INTO `message_text` ( `name`, `email`, `idea`, `messsage`) VALUES 
  ('{$name}','{$email}','{$idea}','{$message}')";
//$insert_query="INSERT into room(`name`,`email`)value('{$name}','{$email}')";

if(mysqli_query($conn,$result)){
    header("location:http://localhost/blood/insert.php");
  
}else{
   die(mysqli_error($conn));
}
}

?>

