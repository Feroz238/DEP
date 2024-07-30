<?php
$id=$_GET['ID'];
$conn=mysqli_connect("localhost","root","","obmsc");
mysqli_query($conn, "DELETE FROM `white_blood_donor`WHERE id=$id ");
header("location:wbc_donortable.php");

?>