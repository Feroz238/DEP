<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Responsive donor table</title>
   
             <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
   

  <link href="css/style.css" rel="stylesheet">
  <style>
    *{

        margin:0%;
        padding: 0%;
        box-sizing: border-box;
    }
    body{
        background: #32312f;
        font-family:sans-serif;

    }
    .table-container{
        padding: 0 10%;
        margin: 40px auto 0;
    }
    .heading{
        font-size: 40px;
        text-align: center;
        color: #f1f1f1;
        margin-bottom: 40px;
    }
    .table{
        width: 100%;
        border-collapse: collapse;
        background: darkkhaki;
    }    
    .table thead{
        background: coral;
        
    }
    .table thead tr th{
        font-size: 14px;
        font-weight: 600;
        letter-spacing: 0.35px;
        color: #ffffffff;
        opacity: 1;
        padding: 12px;
        vertical-align: top;
        border:1px solid #dee2e685;
    }
    .table tbody tr td{
        font-size: 14px;
        letter-spacing: 0.35px;
        font-weight: normal;
        color: #f1f1f1;
        background-color: #3c3f44;
        padding:8px;
        text-align: center;
        border:1px solid #dee2e685;

    }
    @media (max-width: 768px)
    {
        .table thead{
            display: none;

        }
        .table, .table tbody,.table tr,.table td{
            display: block;
            width: 100%px;

        }
        .table tr{
            margin-bottom: 15px;

        }
        .table tbody tr td{
            text-align: right;
            padding-left: 50%;
            position: relative;
        }
        .table td:before{
            content:attr(data-label);
            position: absolute;
            left: 0;
            width:50%;
            padding-left: 15px;
            font-size: 14px;
            font-weight: 600;
            text-align: left;
        }
    }
  
    </style>
</head>

<body>
<div class="col-md-6 offset-md-4 mt-6"><br>
                                   <a href="http://localhost/blood/admin/dashboard/index1.php">     <input type="" name="HOME" class="btn btn-primary" value="GO TO DASHBOARD">  </a>
     
                                        
                                 

                                    </div>
                                    </DIV>

    <div class="table-container">
        <h1 class="heading"> Admin table For Donor's<br>( Aloso you Can Update And Delete Your Data That's Your Choies )</h1>
        <table class="table">
                <thead>
                        <tr>
                          <th scope="col"> ID </th>
                          <th scope="col">first name </th>
                          <th scope="col">last name</th>
                          <th scope="col">address</th>
                          <th scope="col">email</th>
                          <th scope="col">phone number</th>
                          <th scope="col">age</th>
                          <th scope="col">gender</th>
                          <th scope="col">blood type</th>
                          <th scope="col">cnic number</th>
                         
                          <th scope="col">date</th>
                          <th scope="col">quantity</th>
                          <th scope="col">Edit</th>
                         
                          <th scope="col">Delete</th>
                  
                
                </thead>
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
<td>".$result['cnic_number']."</td>
<td>".$result['date']."</td>
<td>".$result['quantity']."</td>
<td><a href='edit.php? ID=$result[id] &fn=$result[first_name]&ln=$result[last_name]&address=$result[address] 
&ph=$result[phone_number]&age=$result[age]&gn=$result[gender] &bt=$result[blood_type]&cn=$result[cnic_number] &date=$result[date] 
&qn=$result[quantity]'   class='btn btn-outline-danger'>Edit</a></td>
<td><a href='ddelete.php? ID=$result[id]' class='btn btn-outline-danger'>Delete</a></td>
";

}


?>
</table>
               
            
        </div>
    </div>
    <!-- Vendor JS Files -->
 <script src="assets/vendor/jquery/jquery.min.js"></script>
 <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
 <script src="assets/vendor/php-email-form/validate.js"></script>
 <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
 <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
 <script src="assets/vendor/venobox/venobox.min.js"></script>
 <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
 <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
 <script src="assets/vendor/aos/aos.js"></script>

 <!-- Template Main JS File -->
 <script src="js/main.js"></script>

</body>

</html>
