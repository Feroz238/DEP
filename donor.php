


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Registration-page</title>
    

 

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!--css file !-->

  <link href="css/style.css" rel="stylesheet">

   <style type="text/css">
   	#doner{

     background:url("assets/img/slide/IMG_20210610_125056.jpg");
}
   </style>
</head>

<body>

  <!-- ======= Header ======= -->
    
 <?php include "header.php";
  ?>

 <!-- ======= contact us ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Well Come A New Donor <br> </h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End contant us -->
<!--well come section-->


<!--end well come section--> 

 <!--  JS File -->
  <script src="js/main.js"></script>
  <main class="my-form">
    <div class="cotainer" id="doner">
        <div class="row justify-content-center" id="doner">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><center><b> <h1>New Blood Donor (Red Blood) Register Now</div></center></b></h1>
                        <div class="card-body">
                           
                    <form action="save_donor.php" method="POST" class="form-group">
                                <div class="form-group row">
                                    <label for="first_name" class="col-md-4 col-form-label text-md-right"><b>First Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only First Name Of Donor......."name="first_name" id="first_name" class="form-control" name="first_name-"required>

                                    </div>
                                </div>
                                  <div class="form-group row">
                                    <label for="last_Name" class="col-md-4 col-form-label text-md-right"><b>Last Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Last Name Of Donor......."name="last_name" id="last_Name" class="form-control" name="last_Name"required>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="address" class="col-md-4 col-form-label text-md-right"><b>Address</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Address Of Donor......."name="address" id="address" class="form-control" name="address"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right"><b>E-Mail Address</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only email-address Of Donor......."name="email" id="email" class="form-control" name="email"required>
                                    </div>
                                </div>

                             

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right"><b>Phone Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only phone_number Of Donor......."name="phone_number" id="phone_number" class="form-control"name="phone_number"required>
                                    </div>
                                </div>
                                   <div class="form-group row">
                                    <label for="age" class="col-md-4 col-form-label text-md-right"><b>Age</label></b>
                                    <div class="col-md-6">
                                        <input type="number" PLACEHOLDER="Only Donor Age......."name="age" id="age" class="form-control" name="age"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="gender" class="col-md-4 col-form-label text-md-right"><b>Gender</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Donor (Male / Female )......."name=" gender" id="gender" class="form-control"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="blood_type" class="col-md-4 col-form-label text-md-right"><b>Blood Type</label></b>
                                    <div class="col-md-6">
                                    <select name="blood_type" id="" class="form-control">
                                    <option disabled selected>Select Category</option>

                                    <?php 
                                        include "connection.php";
                                        $query="SELECT cat_id , cat_name from blood_cat ";
                                        $result=mysqli_query($conn,$query);
                                        if(mysqli_num_rows($result) >0){
                                            while($row=mysqli_fetch_assoc($result)){
                                              echo " <option value='{$row['cat_id']}'>{$row['cat_name']}</option>";
                                            }
                                          }
                                          ?>
                                        </select>
                                        
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="cnic_number" class="col-md-4 col-form-label text-md-right"><abbr title="National Id Card"><b>CNIC</abbr> Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER=" Donor CNIC Number......."name="cnic_number" id="cnic_number" class="form-control" name="cnic_number"required>
                                    </div><br>
                                    </div>
                                    <div class="form-group row">
                                    <label for="quantity" class="col-md-4 col-form-label text-md-right"><b>Quantity Of Blood</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER=" Donor Blood quantity ( )......."name="quantity" id="quantity" class="form-control" name="quantity"required>
                                    </div>
                                </div>
                              

                                    <div class="col-md-6 offset-md-4 mt-3">
                                        <input type="submit" name="submit" class="btn btn-primary" value="Submit">  
                                        <input type="reset" name="reset" class="btn btn-primary" value="Reset">
                                    </div>
                                </form>
                                </div>
                            
                        </div>
                    </div>
            </div>
        </div>
      </div>
    </main>

 <!-- ======= contact us ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2><font size="300"><FONT COLOR=DARK>THANK YOU FOR SAVE HUMAN LIFE  </h2></font>
         
        </div>

      </div>
    </section><!-- End contant us -->
<!--well come section-->

<!--foooter section !-->
<?php include"footer.php"
?><!-- End Footer -->


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






        