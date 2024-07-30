<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> blood detail's</title>
    

 

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!--css file !-->

  <link href="css/style.css" rel="stylesheet">


</head>

<body>

 

    
  </header><!-- End Header -->


  
    <!--end of donation heightlight -->

    <!-- ======= Our blood Section ======= -->
    <section id="clients" class="clients">
      <div class="container" data-aos="fade-down">

        <div class="section-title">
          <h2>BLOOD  QUANTITY INFORMATION AVALIBALE IN BLOOD BANK. SO FIRST LOOK CLEARLY AND THEN RECIVED BLOOD ABOUT THIS INFORMATION. </h2>
        </div>

        <div class="row no-gutters clients-wrap clearfix" data-aos="fade-down">
        <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='A+'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>        
            </div>
          </div>
        </div>
        <?php
            }
          }
        ?>
         <!-- /A+ -->
         <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='B+'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled2.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>            
               </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
         <!-- /B+ -->

          <!-- /A+ -->
          <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='AB+'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled3png.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i> 
                <?php  echo $row['quantity']."ml";;?>           
            </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
         <!-- /AB+ -->
         <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='AB-'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled4.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>          
            </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
      
         <!-- /AB- -->
         <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='A-'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
       
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled7.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>            
            </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
   
         <!-- /A- -->
         <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='B-'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
       
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled8.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>         
            </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
       
         <!-- /B- -->

         <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='O+'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled5.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>           
            </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
         <!-- /O+ -->
         <?php 
          include "connection.php";
          $query="SELECT * from blood_cat where cat_name='O-'";
          $result=mysqli_query($conn,$query);
          if(mysqli_num_rows($result) >0){
              while($row=mysqli_fetch_assoc($result)){
            ?>
          <div class="col-lg-3 col-md-4 col-6">
            <div class="client-logo">
              <img src="assets/img/clients/Untitled6.png" class="img-fluid" alt="">
              <div class="testimonial-item">                
                <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                <?php  echo $row['quantity']."ml";;?>          
            </div>
            </div>
          </div>
          <?php
            }
          }
        ?>
         <!-- /O- -->

        </div>

      </div>
    </section><!-- End Our blood Section -->

  </main><!-- End #main -->

  


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