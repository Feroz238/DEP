<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact -Us</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!--css file !-->

  <link href="css/style.css" rel="stylesheet">>

</style>
</head>

<body>

  <!-- ======= Header ======= -->
  <?php
  include "header.php"?><!-- End Header -->

  <main id="main">

    <!-- ======= contact  us======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End us contact-->
   

    <!-- ======= Contact Section ======= -->
   

    <section id="contact" class="contact">
      <div class="container"id="doner">

        <div class="row justify-content-center" data-aos="fade-up">

          <div class="col-lg-10">

            <div class="info-wrap">
              <div class="row">
                <div class="col-lg-4 info">
                                  <B>  <h4>Location:</h4>
                  <p>DHQ Hospital <br>Lover Chitral, Address Near <br> Police Line / Distic Cort</p></B>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                  
                <B>  <h4>Email:</h4>
                  <p>fu80850@gmail.com<br>
                  dhqhospital@gmail.com</p></B>
                </div>

                <div class="col-lg-4 info mt-4 mt-lg-0">
                                   <B> <h4>Call:</h4>
                  <p>+92 3449595494<br>+92 343 6688 076</p></B>
                </div>
              </div>
            </div>

          </div>

        </div>

        <div class="row mt-5 justify-content-center" data-aos="fade-up">
          <div class="col-lg-10">
            <form action="save_contact.php" method="POST">
              <div class="form-row">
                <div class="col-md-6 form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4"required />
                 
                </div>
                <div class="col-md-6 form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email"required />
                  
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="idea" id=" idea" placeholder="Only project idea" data-rule="minlen:4" required/>
                
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"required></textarea>
                
              </div>
              <div class="mb-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="col-md-6 offset-md-4 mt-3">
                                        <input type="submit" name="submit" class="btn btn-primary" value="Submit">  
                                        <input type="reset" name="reset" class="btn btn-primary" value="Reset">
                                    </div>
                                </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section --> 


     <!-- ======= contact  us======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
         <CENTER> <h2>OGANIZATION  TEAM MEMBERS </h2></CENTER></FONT>
         
        </div>

      </div>
    </section>
<BR>

     <!-- hero section !-->
    <section id="hero">
    <div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(assets/img/slide/slide-1.jpg);">
          <div class="carousel-container">
           
          </div>
        </div>
    </div>
</div></section>
  <!-- End us contact-->

<!--end of hero section !-->


  </main><!-- End #main -->

 <!--foooter section !-->
 <?php
 include "footer.php"?><!-- End Footer -->


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
