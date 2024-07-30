<?php
include "connection.php";
error_reporting(0);
$id=$_GET['id'];
$name=$_GET['name'];
$fn=$_GET['fn'];

$bh=$_GET['bh'];
$wn=$_GET['wn'];
$bn=$_GET['bn'];
$ph=$_GET['ph'];
$fph=$_GET['fph'];
$bt=$_GET['bt'];
$age=$_GET['age'];
$gn=$_GET['gn'];

$date=$_GET['date'];



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Responsive Patientupdation table</title>
   
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!--css file !-->

  <link href="css/style.css" rel="stylesheet">

  <style>

    .table{
        color:white;
        border-radius:20px;
        
    }
   #button{
       background-color:green;
       color:white;
       height:52px;
       width:123px;
       margin-left:150px;
   

   }
    body
        {
            background:#7E9680;
        }
    input{
        width:98%;
        height:45px;
        border:2px solid black;
     border-radius:5px;
     padding: 8px 15px 8px 15px;   
     box-shadow:1px 1px 2px 1px;   
 
    }
  
  
    </style>
</head>

<body>
<br>
 <CENTER><a class="btn btn-secondary" href="http://localhost/blood/admin/dashboard/index1.php" role="button">GO TO DASHBOARD »</a>
</CENTER>
<form action="wbc_editpatient.php"method="GET">
<center><h1> Upation data into Data Base </h1></center>
<table border="5" bgcolor="pink" align="center" cellspacing="10">
<tr>
<td> <B> <CENTER>id </td>
<td> <input type="number" value="<?php echo "$id"  ?>"name="id" requried ></td>
</tr>
<tr>
<td> <B> <CENTER>Full Name </td></B> </CENTER>
<td> <input type="text" value="<?php echo "$name"  ?>"name="name" requried ></td>
</tr>
<tr>
<td> <B> <CENTER>Father Name </td></CENTER>
<td> <input type="text" value="<?php echo "$fn"  ?>"name="father_name" requried> </td>
</tr>
<tr>
<td><B><CENTER> Branch Name </td></B></CENTER>
<td> <input type="text" value="<?php echo "$bh"  ?>"name="branch_name" requried ></td>
</tr>
<tr>
<td><B><CENTER> Ward Name  </td></B></CENTER>
<td> <input type="text" value="<?php echo "$wn"  ?>"name="ward_name" requried ></td>
</tr>
<tr>
<td><B><CENTER> Bed Number  </td></B></CENTER>
<td> <input type="text" value="<?php echo "$bn"  ?>"name="bed_number" requried ></td>
</tr>
<tr>
<td><B><CENTER> Phone Number</td></B></CENTER>
<td> <input type="text" value="<?php echo "$ph"  ?>"name="phone_number" requried ></td>
</tr>
<tr>
<td><B><CENTER>Father Phone Number</td></B></CENTER>
<td> <input type="text" value="<?php echo "$fph"  ?>"name="f_phone_number" requried ></td>
</tr>
<tr>
<td><B><CENTER> Blood Type </td></B></CENTER>
<td> <input type="text" value="<?php echo "$bt"  ?>"name="blood_type" requried ></td>
</tr>
<tr>
<td> <B><CENTER>Age </td></B></CENTER>
<td> <input type="number" value="<?php echo "$age"  ?>"name="age" requried ></td>

</tr>
<tr>
<td><B><CENTER> Gender </td></B></CENTER>
<td> <input type="text" value="<?php echo "$gn"  ?>"name="gender" requried ></td>
</tr>


<tr>
<td><B><CENTER> date </td></B></CENTER>
<td> <input type="date/time" value="<?php echo "$date"  ?>"name="date" requried > </td>
</tr>


<tr>

<a><td calspan="2" align="center"><center> <input type="submit"id="button" value="UDATED"name="submit"></td> </a></center>
</tr>

</form>



</table>



 

</body>

</html>
<?php
if($_GET[submit])

{
    $_id=$_GET['id'];
    $name=$_GET['name'];
    $father_name=$_GET['father_name'];
    $branch_name=$_GET['branch_name'];
    $ward_name=$_GET['ward_name'];
    $bed_number=$_GET['bed_number'];
    $phone_number=$_GET['phone_number'];
    $fphone_number=$_GET['f_phone_number'];
    $blood_type=$_GET['blood_type'];
    $age=$_GET['age'];
    $gender=$_GET['gender'];
    
 
    $date=$_GET['date'];
   
    $query="UPDATE `white_blood_patient` SET id='$_id',name='$name',father_name='$father_name',branch_name='$branch_name',ward_name='$ward_name',bed_number='$bed_number',phone_number='$phone_number', 
    f_phone_number='$fphone_number',blood_type='$blood_type',age='$age',gender='$gender' WHERE id='$id'";

$data=mysqli_query($conn,$query);
if($data)
{
    echo "<script>alter('Record updated')</script>";
    header("location:http://localhost/blood/admin/wbc_patienttable.php");

}
else{
    echo "field";  
}

}


?>