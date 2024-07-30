<?PHP

include "connection.php";
if(isset($_POST['submit'])){

$first_name=$_POST['first_name'];
$last_name=$_POST['last_name'];
$address=$_POST['address'];
$email=$_POST['email'];
$phone_number=$_POST['phone_number'];
$age=$_POST['age'];
$gender=$_POST['gender'];
$blood_type=$_POST['blood_type'];
$cnic_number=$_POST['cnic_number'];
$date=date('Y/m/d');
$quantity=$_POST['quantity'];

$result="INSERT INTO `donor`(`first_name`,`last_name`,`address`,`email`,`phone_number`,`age`,`gender`,`blood_type`,`cnic_number`,`date`) 
      VALUES ('{$first_name}','{$last_name}','{$address}','{$email}','{$phone_number}','{$age}','{$gender}','{$blood_type}','{$cnic_number}','{$date}');";
$result.="UPDATE blood_cat set quantity=quantity+{$quantity} where cat_id={$blood_type}";

if(mysqli_multi_query($conn,$result)){
     header("location:http://localhost/blood/succefull.php");
   
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















