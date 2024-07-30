<?php
include "config.php";
error_reporting(0);
$id=$_GET['id'];
$username=$_GET['username'];
$email=$_GET['email'];
$password=$_GET['password'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Responsive adminupdation table</title>
   
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
            background:#987;
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
 <center><a class="btn btn-secondary" href="http://localhost/blood/admin/dashboard/index1.php" role="button">GO TO DASHBOARD »</a>
</center>
<form action="adminedittable.php"method="GET">
<center><h1> Updation data into Data Base </h1></center>
<table border="5" bgcolor="pink" align="center" cellspacing="10">
<tr>
<td> <B> <CENTER>id </td>
<td> <input type="number" value="<?php echo "$id"  ?>"name="id" requried ></td>
</tr>
<tr>
<td> <B> <CENTER>Full Name </td></B> </CENTER>
<td> <input type="text" value="<?php echo "$username"  ?>"name="username" requried ></td>
</tr>
<tr>
<td> <B> <CENTER>Email </td></CENTER>
<td> <input type="text" value="<?php echo "$email"  ?>"name="email" requried> </td>
</tr>
<tr>
<td><B><CENTER> Password </td></B></CENTER>
<td> <input type="text" value="<?php echo "$password"  ?>"name="password" requried ></td>
</tr>
<tr>

<a><td calspan="2" align="center"><center> <input type="submit"id="button" value="UDATED"name="submit"></td> </a></center>
</tr>
<tr>
</form>



</table>



 

</body>

</html>
<?php
if($_GET[submit])

{
    $_id=$_GET['id'];
    $username=$_GET['username'];
    $email=$_GET['email'];
    $password=$_GET['password'];
    
    $query="UPDATE `users` SET id='$_id',username='$username',email='$email',password='$password' WHERE id='$id'";

$data=mysqli_query($conn,$query);
if($data)
{
    echo "<script>alert('Wow! User Registration Completed.')</script>";
    header("location:http://localhost/blood/admin/adminedit.php");

}
else{
    echo "field";  
}

}


?>