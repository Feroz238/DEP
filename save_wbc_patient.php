<?php
include "connection.php";
if(isset($_POST['submit'])){

$name=$_POST['name'];
$father_name=$_POST['father_name'];
$branch_name=$_POST['branch_name'];
$ward_name=$_POST['ward_name'];
$bed_number=$_POST['bed_number'];
$phone_number=$_POST['phone_number'];
$f_phone_number=$_POST['f_phone_number'];
$blood_type=$_POST['blood_type'];

$age=$_POST['age'];
$gender=$_POST['gender'];

$date=date('Y/m/d');


  /*echo "$name";
echo "$father_name";
echo "$branch_name";
echo "$ward_name";
echo "$bed_number";
echo "$phone_number";
echo "$age";
echo "$gender";
echo "$blood_type";*/

$result="INSERT INTO `white_blood_patient`(`name`,`father_name`,`branch_name`,`ward_name`,`bed_number`,`phone_number`,`f_phone_number`,`blood_type`,`age`,`gender`,`date`)
 VALUES ('{$name}','{$father_name}','{$branch_name}','{$ward_name}','{$bed_number}','{$phone_number}','{$f_phone_number}','{$blood_type}','{$age}','{$gender}','{$date}')";
//    echo $insert;
   
if(mysqli_query($conn,$result)){
     header("location:http://localhost/blood/SUCCEFULLPATIENT.php");
   
}else{
    die(mysqli_error($conn));
}

// $result=mysqli_query($conn,$result);
// if($result){
//     echo"successful";
// }else{
//     die(mysqli_error($conn));
// }


}
  
?>















