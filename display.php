<?php
include "connection.php";
$query ="SELECT * FROM donor";
$data=mysqli_connect($conn,$query);
$total=mysqli_num_row($data);
echo "$total";

?>