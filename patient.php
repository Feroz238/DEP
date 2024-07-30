<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Blood Requester</title>
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

     background:url("assets/img/slide/images (1).jpg");
}
   </style>


</head>

<body>

  <!-- ======= Header ======= -->
 <?php include"header.php"
 ?><!-- End Header -->
   <!-- ======= contact us ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Well Come A New Patient Registration Page <br> </h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End contant us -->
<!--  JS File -->
  <script src="js/main.js"></script>
  <main class="my-form">
    <div class="cotainer">
        <div class="row justify-content-center" id="doner">
            <div class="col-md-8">
                    <div class="card">
                        <div class="card-header"><center><b><h1>Olny Patient Request For Blood </div></center></b></h1>
                        <div class="card-body">
                            <form name="my-form" onsubmit="" action="save_patient.php" method="POST">
                                <div class="form-group row">
                                    <label for="first_name" class="col-md-4 col-form-label text-md-right"><b>First Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only First Name Of Patient......."name=" first_name" id="first_name" class="form-control" name="first_name"required>
                                    </div>
                                </div>
                                  <div class="form-group row">
                                    <label for="last_Name" class="col-md-4 col-form-label text-md-right"><b>Last Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Last Name Of Patient......."name=" last_name" id="last_Name" class="form-control" name="last_Name"required>
                                    </div>
                                </div>
                                   <div class="form-group row">
                                    <label for="branch_name" class="col-md-4 col-form-label text-md-right"><b>Branch Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Branch Name Where Patient Admit......."name="branch_name" id="branch_name" class="form-control" name="branch_name"required>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label for="ward_name" class="col-md-4 col-form-label text-md-right"><b>Ward Name</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Patient Ward Name ()......."name="ward_name" id="ward_name" class="form-control" name="ward_name"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="bed_number" class="col-md-4 col-form-label text-md-right"><b>Bed Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only bed_number ()......."name="bed_number" id="bed_number" class="form-control" name="bed_number"required>
                                    </div>
                                </div>

                             

                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right"><b>Phone Number</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Only Patient phone_number......."name="phone_number" id="phone_number" class="form-control"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="blood_type" class="col-md-4 col-form-label text-md-right"><b>Blood Type</label></b>
                                    <div class="col-md-6">
                                    <select name="blood_type" id="blood_cat" class="form-control">
                                    <option disabled selected>Select Category</option>

                                    <?php 
                                        include "connection.php";
                                        $query="SELECT cat_id , cat_name, quantity from blood_cat ";
                                        $result=mysqli_query($conn,$query);
                                        if(mysqli_num_rows($result) >0){
                                            while($row=mysqli_fetch_assoc($result)){
                                              if($row['quantity']>0){
                                              echo " <option id='blood_vol' value='{$row['cat_id']}'>{$row['cat_name']}</option>";
                                            }
                                          }
                                          }
                                          ?>
                                        </select>
                                        
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="blood_pint" class="col-md-4 col-form-label text-md-right"><b>Blood Available</label></b>
                                    <div class="col-md-6" id="blood_avail">
                                        <input type="text"  disabled name="available" id="blood_pint" class="form-control" value="0">
                                    </div>
                                </div>
                                   <div class="form-group row">
                                    <label for="age" class="col-md-4 col-form-label text-md-right"><b>Age</label></b>
                                    <div class="col-md-6">
                                        <input type="number" PLACEHOLDER="Patient Age()......."name="age" id="age" class="form-control" name="age"required>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="gender" class="col-md-4 col-form-label text-md-right"><b>Gender</label></b>
                                    <div class="col-md-6">
                                        <input type="text" PLACEHOLDER="Patient ( Male / Female)......."name="gender" id="gender" class="form-control"required>
                                    </div>
                                </div>
                                
                              
                        
                               
                                     
                               <div class="form-group row">
                                    <label for="blood_pint" class="col-md-4 col-form-label text-md-right"><b>Blood Pint's (Requried)</label></b>
                                    <div class="col-md-6">
                                        <input type="text"PLACEHOLDER="Only Patient Need Blood Pint's in mml......."name=" blood_pint" id="blood_pint" class="form-control" name="blood_pint"required>
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
  <script src="js/jquery.js"></script>
  <script>

  $(document).ready(function(){

    $("#blood_cat").change(function(){
      var issue_id =$("#blood_cat").val();
      var cat_id = 'num=' + issue_id;
      // console.log(issue_id);


      $.ajax({
          url:"load.php",
          type:"POST",
          data:cat_id,
          success:function(data){
            $("#blood_avail").html(data);
          }


      });
    
    });

  });
  

  </script>
  


</body>

</html>

