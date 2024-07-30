<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Donor white Blood Cell </title>
  <meta content="" name="description">
  <meta content="" name="keywords">


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

     background:url("assets/img/slide/images.png");
}
   </style>

</head>

<body>

  <!-- ======= Header ======= --><br><br>
<?php include"header.php"
?><!-- End Header -->
  <!-- ======= Our Team Section ======= -->

     <section id="team" class="team section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-right">
          <h2>Only<font color="red"> White Blood  donor </font>information.</h2>
          <h3> Donation Time Is 9:00 AM to 11:00 AM For Only One User Donation Time           </div>
      </div>
    </section>
 <!--  JS File -->
  <script src="assets/js/main.js"></script>
  <main class="my-form">
    <div class="cotainer">
                <div class="row justify-content-center" id="doner">

            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><center><b> <h1>New White Blood Donor Register Now</div></center></b></h1>
                        <div class="card-body">
                            <form name="my-form" onsubmit="return validform()" action="save_wbc_donor.php" method="POST">
                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right"><b> Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Full Name Of Donor......."name="name" id="full_name" class="form-control" name="name"required>

                                    </div>
                                </div>
                                     <div class="form-group row">
                                    <label for="father_name" class="col-md-4 col-form-label text-md-right"><b>Father Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Father Name Of Donor......."name=" father_name" id="father_name" class="form-control" name="father_name-"required>

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
                                        <input type="text" PLACEHOLDER="Only phone_number Of Donor......."name="phone_number" id="phone_number" class="form-control"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="f_phone_number" class="col-md-4 col-form-label text-md-right"><b>Father Phone Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Father phone_number Of Donor......."name="f_phone_number" id="f_phone_number" class="form-control"required>
                                    </div>
                                </div>
                                   <div class="form-group row">
                                    <label for="age" class="col-md-4 col-form-label text-md-right"><b>Age</label></b>
                                    <div class="col-md-6">
                                        <input type="number" PLACEHOLDER="Only Donor Age......."name=" age" id="age" class="form-control" name="age"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="gender" class="col-md-4 col-form-label text-md-right"><b>Gender</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Donor (Male / Female )......."name="gender" id="gender" class="form-control"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="blood_type" class="col-md-4 col-form-label text-md-right"><b>White Blood Cell Type</label></b>
                                    <div class="col-md-6">
                                        <input type="text"PLACEHOLDER="(Monocytes/Lymphocytes/Neutrophils/Basophils/Eosinophils. )......."name=" blood_type" id="blood_type" class="form-control" name="blood_type"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="cnic_number" class="col-md-4 col-form-label text-md-right"><abbr title="National Id Card"><b>CNIC</abbr> Number For Donor</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER=" Donor CNIC Number......."name="cnic_number" id="cnic_number" class="form-control" name="cnic_number"required>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="f_cnic_number" class="col-md-4 col-form-label text-md-right"><abbr title="National Id Card"><b>CNIC</abbr> Number For Father</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER=" Father CNIC Number......."name=" f_cnic_number" id="f_cnic_number" class="form-control" name="f_cnic_number"required>
                                    </div>
                                </div>
                      


                                <div class="col-md-6 offset-md-4 mt-3">
                                        <input type="submit" name="submit" class="btn btn-primary" value="Submit">  
                                        <input type="reset" name="reset" class="btn btn-primary" value="Reset">
                                    </div>
                                </form></div>
                            
                        </div>
                    </div>
            </div>
        </div>
      </div>
    </main>




          <!--foooter section !--><?php include"footer.php"
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
