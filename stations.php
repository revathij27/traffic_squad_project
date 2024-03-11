<?php 
include 'config.php';
$ad=new Admin();



?>



<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Royal</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Roboto:400,500&display=swap"
    rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>

<body>
  <!-- header section strats -->
  <header class="header_section">
    <div class="container">
     <?php include 'topbar.php'; ?>
    </div>
  </header>
  <!-- end header section -->





  <!-- service section -->
  <section class="service_section layout_padding-top">
    <div class="container">
      <div class="service_detail">
       
        <h2>
          Police Stations
        </h2>
      </div>


    <!--   <div class="service_img-container">
        <div class="service_img-box i-box-1">
          <a href=""> Bank security</a>
        </div>
        <div class="service_img-box i-box-2">
          <a href="">society Guard </a>
        </div>
        <div class="service_img-box i-box-3">
          <a href="">Hotel Security </a>
        </div>
        <div class="service_img-box i-box-4">
          <a href=""> Home security</a>
        </div>
      </div> -->
      <!-- <div class="service_btn">
        <a href="">
          <span>
            Read More
          </span>
          <img src="images/arrow-black.png" alt="" class="ml-2" />
        </a>
      </div> -->
    </div>
  </section>
  <!-- end service section -->

  <!-- security section -->

  <section class="security_section layout_padding"  >
 
    <h2>
      Our Stations
    </h2>

<div >
  <div style="display:flex;flex-direction: row;">
    <?php  
    $stmt=$ad->ret("SELECT * FROM `station`");
    while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
      ?>
      <div class="card" style="width:400px;display: flex;" >
  <img src="https://images.unsplash.com/photo-1529622368377-4090e6daae59?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cG9saWNlJTIwc3RhdGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60" class="card-img-top" alt="Fissure in Sandstone"/>
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#!" class="btn btn-primary">Button</a>
  </div>
</div>


    <?php } ?>

</div>
    

       
    
  </section>
  <!-- end security section -->






  <!-- info section -->
  <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class=" col-md-4 info_detail">
          <div>
            <p>
              There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration
              in some form, by injected humour, or randomised words which don't look even slightly believable.
            </p>
          </div>
        </div>
        <div class=" col-md-4 address_container">
          <div>
            <h3>
              Address:
            </h3>
            <div class="address_link-container">
              <a href="">
                <img src="images/location.png" alt="">
                <span> Address: 73 Canal Street, New York, NY
                </span>
              </a>
              <a href="">
                <img src="images/phone.png" alt="">
                <span> Tel: +1 123 456 789
                </span>
              </a>
              <a href="">
                <img src="images/mail.png" alt="">
                <span>
                  Email: demo@gmail.com
                </span>
              </a>
            </div>
          </div>
        </div>
        <div class=" col-md-4 news_container">
          <div>
            <div>
              <h3>
                newsletter

              </h3>
              <form action="">
                <input type="email" placeholder="ENTER YOUR EMAIL">
                <div>
                  <button type="submit">
                    Subscribe
                  </button>
                </div>
              </form>
            </div>
            <div class="social_container">
              <div>
                <img src="images/fb.png" alt="">
              </div>
              <div>
                <img src="images/twitter.png" alt="">
              </div>
              <div>
                <img src="images/linkedin.png" alt="">
              </div>
              <div>
                <img src="images/youtube.png" alt="">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end info section -->


  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
      Copyright &copy; 2019 All Rights Reserved By
      <a href="https://html.design/">Free Html Templates</a>
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js">
  </script>
  <script type="text/javascript">
    $(".owl-carousel").owlCarousel({
      loop: true,
      margin: 20,
      nav: true,
      navText: [],
      autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 1
        },
        600: {
          items: 2
        },
        1000: {
          items: 3
        }
      }
    });
  </script>

  <script>
    $(".nav_search-btn").click(function () {
      if ($(".nav_search-input").hasClass("d-none")) {
        event.preventDefault();
        $(".nav_search-input")
          .animate({
              left: "-1000px"
            },
            "1000000"
          )
          .removeClass("d-none");
      } else {
        $(".nav_search-input")
          .animate({
              left: "0px"
            },
            "1000000"
          )
          .addClass("d-none");
      }
    });
  </script>



</body>

</html>