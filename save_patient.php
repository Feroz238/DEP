<?php
include "connection.php";
$error="";
if(isset($_POST['submit'])){

$first_name=$_POST['first_name'];
$last_name=$_POST['last_name'];
$branch_name=$_POST['branch_name'];
$ward_name=$_POST['ward_name'];
$bed_number=$_POST['bed_number'];
$phone_number=$_POST['phone_number'];
$blood_type=$_POST['blood_type'];

$age=$_POST['age'];
$gender=$_POST['gender'];
$date=date('Y/m/d');
$blood_pint=$_POST['blood_pint'];




$select="SELECT quantity from blood_cat where cat_id={$blood_type}";
$quantity=mysqli_query($conn,$select);
$value=0;
if(mysqli_num_rows($quantity) >0 ){
    while($row=mysqli_fetch_assoc($quantity)){
       $value=$row['quantity'];
    }

}
$default_val=0;
if($value>0){
$result="INSERT INTO `patient`(`first_name`,`last_name`,`branch_name`,`ward_name`,`bed_number`,`phone_number`,`blood_type`,`age`,`gender`,`date`,`blood_pint`) 
        VALUES ('{$first_name}','{$last_name}','{$branch_name}','{$ward_name}','{$bed_number}','{$phone_number}','{$blood_type}','{$age}','{$gender}','{$date}','{$blood_pint}');";
    if($blood_pint>$value){
        $result.="UPDATE blood_cat set quantity={$default_val} where cat_id={$blood_type}";
    }else{
        $result.="UPDATE blood_cat set quantity=quantity-{$blood_pint} where cat_id={$blood_type}";
    }
    
    
}else{
    header("location:http://localhost/blood/patient.php");
}


if(mysqli_multi_query($conn,$result)){
     header("location:http://localhost/blood/insert.php");
   
}else{
    die(mysqli_error($conn));
}

 $result=mysqli_query($conn,$result);
 if($result){
     echo"successful";
 }else{
     die(mysqli_error($conn));
 }


}
  
?>















