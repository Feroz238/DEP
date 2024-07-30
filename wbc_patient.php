<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Nedded  white Blood Cell For Patient's </title>
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

     background:url("assets/img/slide/image (12).jpg");
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
          <h2>Only<font color="red"> White Blood  Patient </font>information.</h2>
          <h3> Only Patient Requst For White Blood (WB) And Request Any Time's       </div>
      </div>
    </section>
<!--  JS File -->
  <script src="assets/js/main.js"></script>
  <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center" id="doner">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><center><b><h1> Patient Registration form For White Blood </div></center></b></h1>
                        <div class="card-body">
                            <form  action="save_wbc_patient.php" method="POST">
                                <div class="form-group row">
                                    <label for="name" class="col-md-4 col-form-label text-md-right"><b> Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Full Name Of Patient......."name="name" id="name" class="form-control" name="name"required>
                                    </div>
                                </div>
                                  <div class="form-group row">
                                    <label for="father_name" class="col-md-4 col-form-label text-md-right"><b>Father Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Father Name Of Patient......."name=" father_name" id="father_name" class="form-control" name="father_name"required>
                                    </div>
                                </div>
                                   <div class="form-group row">
                                    <label for="branch_name" class="col-md-4 col-form-label text-md-right"><b>Branch Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text"PLACEHOLDER="Branch Name Where Patient Admit......."name="branch_name" id="branch_name" class="form-control" name="branch_name"required>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="ward_name" class="col-md-4 col-form-label text-md-right"><b>Ward Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text"PLACEHOLDER="Patient Ward Name ()......."name="ward_name" id="ward_name" class="form-control" name="ward_name"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="bed_number" class="col-md-4 col-form-label text-md-right"><b>Bed Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only bed_number ()......."name=" bed_number" id="bed_number" class="form-control" name="bed_number"required>
                                    </div>
                                </div>

                             

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right"><b>Phone Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Patient phone_number......."name=" phone_number" id="phone_number" class="form-control"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="f_phone_number" class="col-md-4 col-form-label text-md-right"><b>Father Phone Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text"PLACEHOLDER="Only Father of Patient phone_number......."name=" f_phone_number" id="f_phone_number" class="form-control"required>
                                    </div>
                                </div>


                                <div class="form-group row">
                                    <label for="blood_type" class="col-md-4 col-form-label text-md-right"><b>White Cell Blood Type</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="(Monocytes/Lymphocytes/Neutrophils/Basophils/Eosinophils. )."name="blood_type" id="blood_type" class="form-control" name="blood_type"required>
                                    </div>
                                </div>
                             

                                   <div class="form-group row">
                                    <label for="age" class="col-md-4 col-form-label text-md-right"><b>Age</label></b>
                                    <div class="col-md-6">
                                        <input type="number"PLACEHOLDER="Patient Age()......."name=" age" id="age" class="form-control" name="age"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="gender" class="col-md-4 col-form-label text-md-right"><b>Gender</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Patient ( Male / Female)......."name=" gender" id="gender" class="form-control"required>
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
