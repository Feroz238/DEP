<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>disply data</title>
</head>
<body>
    
<table border="2">
<tr>
<th> id </th>
<th> First name </th>
<th> last name </th>
<th> address </th>
<th> email </th>
<th> phone number </th>
<th> age </th>
<th>gender </th>
<th> blood type </th>
<th> cinc_number </th>
<th> date </th>
<th> quantity </th>
</tr>

<?php
include "connection.php";
error_reporting(0);
$query=" select * from donor";
$data=mysqli_query($conn,$query);
$total=mysqli_num_rows($data);

echo $resu['id']."".$result['first_name']."" .$result['last_name']."".$result['address']."".$result['email']."".$result['phone_number'].""
.$result['age']."".$result['gender']."".$result['blood_type']."".$result['cinc_number']."".$result['date']."".$result['quantity'];
if($total !=0)
{
    $result=mysqli_fetch_assoc($data);
}
else
{
    echo "no record found ";
}

while($result=mysqli_fetch_assoc($data))
{
    echo "
<tr>
<td>".$result['id']."</td>
<td>".$result['first_name']."</td>
<td>".$result['last_name']."</td>
<td>".$result['address']."</td>
<td>".$result['email']."</td>
<td>".$result['phone_number']."</td>
<td>".$result['age']."</td>
<td>".$result['gender']."</td>
<td>".$result['blood_type']."</td>
<td>".$result['cinc_number']."</td>
<td>".$result['date']."</td>
<td>".$result['$quantity']."</td>
";

}


?>
</table>
</body>
</html>
