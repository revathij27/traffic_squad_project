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

  <title>Traffic_Squad</title>

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

  <!-- slider section -->
  <section class=" slider_section">
    <div id="carouselExampleIndicators" class="carousel slide vert" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="slider_box">
            <div class="fixed_company-detail">
              
            </div>
            <div class="slider-detail">
              <div class="slider_detail-heading">
                
                <h1>
                  TRAFFIC SQUAD
                </h1>
              </div>
              <div class="slider_detail-text">
                <p>
                 This website helps the police by means of time and efficiency. In this application the police can register a case against a vehicle with vehicle number as a proof and the user side receive the receipt with the fine details. 

                </p>
              </div>
              <div class="slider_detail-btn">
                <a href="">
                  <span>
                    Read More
                  </span>
                  <img src="images/arrow.png" alt="" class="ml-2" />
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="slider_box">
            <div class="fixed_company-detail">
              
            </div>
            <div class="slider-detail">
              <div class="slider_detail-heading">
                
                <h1>
                TRAFFIC SQUAD
                </h1>
              </div>
              <div class="slider_detail-text">
              <p>
              This website helps the police by means of time and efficiency. In this application the police can register a case against a vehicle with vehicle number as a proof and the user side receive the receipt with the fine details.
                </p>
              </div>
              <div class="slider_detail-btn">
                <a href="">
                  <span>
                    Read More
                  </span>
                  <img src="images/arrow.png" alt="" class="ml-2" />
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="slider_box">
            <div class="fixed_company-detail">
              
            </div>
            <div class="slider-detail">
              <div class="slider_detail-heading">
                
                <h1>
                TRAFFIC SQUAD
                </h1>
              </div>
              <div class="slider_detail-text">
                <p>
                This website helps the police by means of time and efficiency. In this application the police can register a case against a vehicle with vehicle number as a proof and the user side receive the receipt with the fine details. 
                </p>
              </div>
              <div class="slider_detail-btn">
                <a href="">
                  <span>
                    Read More
                  </span>
                  <img src="images/arrow.png" alt="" class="ml-2" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </section>

  <!-- end slider section -->

  <!-- welcome section -->
  <section class="welcome_section layout_padding">
    <div class="container-fluid">
      <div class="row">
        <div class=" col-md-6">
          <div>
            <img class="img-fluid" src="images/welcome.jpg" alt="" />
          </div>
        </div>
        <div class=" col-md-6">
          <div class="welcome_detail">
            <h3>
              Welcome
            </h3>
            <h2>
              Welcome to Traffic Squad
            </h2>
            <p>
              The objective of the system is to make the public aware about the traffic rules and regulations.<br>
              To help the police to register the cases fast and effective.<br>
              To prevent the occurance of road traffic violations.<br>
              Corruption made by the officers are prevented.
            </p>
            <div class="welcome_detail-btn">
              <a href="">
                <span>
                  Read More
                </span>
                <img src="images/arrow-black.png" alt="" class="ml-2" />
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end welcome section -->

  
  

  

  <!-- end story section -->

 

  <!-- info section -->
  <?php include 'footer.php'; ?>
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

  <script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11,
        center: {
          lat: 40.645037,
          lng: -73.880224
        },
      });

      var image = 'images/maps-and-flags.png';
      var beachMarker = new google.maps.Marker({
        position: {
          lat: 40.645037,
          lng: -73.880224
        },
        map: map,
        icon: image
      });
    }
  </script>
  <!-- google map js -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
  </script>
  <!-- end google map js -->

</body>

</html>