<?php
$id=$_GET['ID'];
$conn=mysqli_connect("localhost","root","","obmsc");
mysqli_query($conn, "DELETE FROM `message_text`WHERE id=$id ");
header("location:contacttable.php");

?>