<?php 
include 'config.php';
$ad=new Admin();
$uid=$_SESSION['u_id'];
$st=$ad->ret("SELECT * FROM `user` WHERE `u_id`='$uid'");
$row=$st->fetch(PDO::FETCH_ASSOC);
$vregno=$row['vreg_no'];






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

  <title>Notification</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome-animation/0.2.1/font-awesome-animation.min.css">
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
  <link rel="stylesheet" type="text/css" href="not.css">
</head>

<body>
  <!-- header section strats -->
  <header class="header_section">
    <div class="container">
      <?php include 'topbar.php'; ?>
    </div>

  </header>
  <section>
  <div class="square_box box_three"></div>
  <div class="square_box box_four"></div>
  <div class="container mt-5">
    <div class="row">

      
      
    

      
      <div class="col-sm-12">
        <div class="alert fade alert-simple alert-danger alert-dismissible text-left font__family-montserrat font__size-16 font__weight-light brk-library-rendered rendered show" role="alert" data-brk-library="component__alert">
          <button type="button" class="close font__size-18" data-dismiss="alert">
                  <span aria-hidden="true">
                    <i class="fa fa-times danger "></i>
                  </span>
                  <span class="sr-only">Close</span>
                </button>
          <i class="start-icon far fa-times-circle faa-pulse animated"></i>
          <strong class="font__weight-semibold">Alert!</strong> <?php 
          $st1=$ad->ret("SELECT * FROM `notification` WHERE `vreg_no`='$vregno' AND `nstatus`='sent' ORDER BY `ndate`");
          
          $c=$st1->rowCount();
          if($c>0){
            while($r=$st1->fetch(PDO::FETCH_ASSOC)){
              echo $r['message'];

            
            
          
           ?>
          
          <span><a type="button" class="btn btn-info" href="controller/updatenotify.php?csid=<?php echo $r['cs_id']; ?>">View Case </a></span><br><br><br>
        <?php } }else{
          ?>
          no notification
        <?php } ?>
        </div>
      </div>

      
    </div>
  </div>
</section><br><br>
<div style="margin-bottom: 300px;"></div>

  <!-- end header section -->

  <!-- slider section -->


  <!-- end slider section -->

  <!-- welcome section -->
  

  <!-- info section -->
  
  <!-- end info section -->


  <!-- footer section -->
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





</body>

</html>