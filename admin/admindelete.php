<?php
$id=$_GET['ID'];
$conn=mysqli_connect("localhost","root","","login_register_pure_coding");
mysqli_query($conn, "DELETE FROM `users`WHERE id=$id ");
header("location:adminedit.php");

?>