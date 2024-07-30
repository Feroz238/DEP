<?PHP

include "connection.php";
if(isset($_POST['submit'])){

$name=$_POST['name'];
$father_name=$_POST['father_name'];
$address=$_POST['address'];
$email=$_POST['email'];
$phone_number=$_POST['phone_number'];
$f_phone_number=$_POST['f_phone_number'];

$age=$_POST['age'];
$gender=$_POST['gender'];
$blood_type=$_POST['blood_type'];

$cnic_number=$_POST['cnic_number'];
$f_cnic_number=$_POST['f_cnic_number'];
$date=date('Y/m/d');

$result="INSERT INTO `white_blood_donor`(`name`,`father_name`,`address`,`email`,`phone_number`,`f_phone_number`,`age`,`gender`,`blood_type`,`cnic_number`,`f_cnic_number`,`date`)
 VALUES ('{$name}','{$father_name}','{$address}','{$email}','{$phone_number}','{$f_phone_number}','{$age}','{$gender}','{$blood_type}','{$cnic_number}','{$f_cnic_number}','{$date}')";
//    echo $insert;
   
if(mysqli_query($conn,$result)){
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















