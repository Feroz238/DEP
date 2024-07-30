<?php
include "connection.php";
error_reporting(0);
$id=$_GET['id'];
$fn=$_GET['fn'];

$email=$_GET['email'];


$idea=$_GET['idea'];
$messsage=$_GET['messsage'];



?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Responsive donorupdation table</title>
   
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
 <a class="btn btn-secondary" href="http://localhost/blood/admin/dashboard/index1.php" role="button">GO TO DASHBOARD »</a>


<form action="conttable.php"method="GET">
<center><h1> Upation data into Data Base </h1></center>
<table border="5" bgcolor="pink" align="center" cellspacing="10">
<tr>
<td> <B> <CENTER>id </td>
<td> <input type="number" value="<?php echo "$id"  ?>"name="id" requried ></td>
</tr>
<tr>
<td> <B> <CENTER>First Name </td></B> </CENTER>
<td> <input type="text" value="<?php echo "$fn"  ?>"name="name" requried ></td>
</tr>
<tr>
<td> <B> <CENTER>Email </td></CENTER>
<td> <input type="text" value="<?php echo "$email"  ?>"name="email" requried> </td>
</tr>
<tr>
<td><B><CENTER> Idea </td></B></CENTER>
<td> <input type="text" value="<?php echo "$idea"  ?>"name="idea" requried ></td>
</tr>

<tr>
<td><B><CENTER>Your Message</td></B></CENTER>
<td> <input type="text" value="<?php echo "$messsage"  ?>"name="messsage" requried ></td>
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
    $email=$_GET['email'];
    $idea=$_GET['idea'];
    
    $message=$_GET['messsage'];
   
    $query="UPDATE `message_text` SET id='$_id',name='$name',email='$email',idea='$idea',messsage='$message' WHERE id='$id'";

$data=mysqli_query($conn,$query);
if($data)
{
    echo "<script>alter('Record updated')</script>";
    header("location:http://localhost/blood/admin/contacttable.php");

}
else{
    echo "field";  
}

}


?>