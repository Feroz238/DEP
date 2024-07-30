<?php
$id=$_GET['ID'];
$conn=mysqli_connect("localhost","root","","obmsc");
mysqli_query($conn, "DELETE FROM `donor`WHERE id=$id ");
header("location:donortable.php");

?>