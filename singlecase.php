<?php 
include 'config.php';
$ad=new Admin();
$uid=$_SESSION['u_id'];
$cs_id=$_GET['csid'];



$stmt3=$ad->ret("SELECT * FROM `rcase` INNER JOIN `trules` ON rcase.r_id=trules.r_id WHERE `cs_id`='$cs_id'");

$row=$stmt3->fetch(PDO::FETCH_ASSOC);








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
  <!-- Font Awesome -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<!-- Google Fonts -->
<link
  href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css"
  rel="stylesheet"
/>
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
      <h3 style="color:red;"  >Challen Details</h3><br><br><br>
      <div class="container">
  <form>
    <h2>E Challen Details</h2>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="first">Offender Name</label>
          <input type="text" class="form-control" placeholder="" id="first" value="<?php echo $row['oname']; ?>" readonly>
        </div>
      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">
        <div class="form-group">
          <label for="last">Offender Phone No</label>
          <input type="text" class="form-control" placeholder="" id="last" value="<?php echo $row['ophone']; ?>" readonly>
        </div>
      </div>
      <!--  col-md-6   -->
    </div>


    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
          <label for="company">Offence Date</label>
          <input type="text" class="form-control" placeholder="" id="company" value="<?php echo $row['d_voilated']; ?>" readonly>
        </div>


      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">

        <div class="form-group">
          <label for="phone">Offence Time</label>
          <input type="text" class="form-control" id="phone" placeholder="phone" value="<?php echo $row['t_voilated']; ?>" readonly>
        </div>
      </div>
      <!--  col-md-6   -->
    </div>
    <!--  row   -->


    <div class="row">
      <div class="col-md-6">

        <div class="form-group">
          <label for="email">License Number</label>
          <input type="text" class="form-control" id="email" placeholder="email" value="<?php echo $row['licenseno']; ?>" readonly>
        </div>
      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">
        <div class="form-group">
          <label for="url">Your Vehicle No <small></small></label>
          <input type="text" class="form-control" id="url" placeholder="url" value="<?php echo $row['vreg_no']; ?>" readonly>
        </div>

      </div>
      <!--  col-md-6   -->
    </div>
    <!--  row   -->

    <div class="row">
      <div class="col-md-6">

        <div class="form-group">
          <label for="email">Offence</label>
          <input type="text" class="form-control" id="email" placeholder="email" value="<?php echo $row['offence']; ?>" readonly>
        </div>
      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">
        <div class="form-group">
          <label for="url">Section <small></small></label>
          <input type="text" class="form-control" id="url" placeholder="url" value="<?php echo $row['section']; ?>" readonly>
        </div>

      </div>
      <!--  col-md-6   -->
    </div>

    <div class="row">
      <div class="col-md-6">

        <div class="form-group">
          <label for="text">Penalty</label>
          <input type="email" class="form-control" id="email" placeholder="email" value="<?php echo $row['penalty']; ?> Rs" readonly>
        </div>
      </div>
      <!--  col-md-6   -->

      <div class="col-md-6">
        <div class="form-group">
          <label for="url">Place Of Voilation<small></small></label>
          <input type="text" class="form-control" id="url" placeholder="url" value="<?php echo $row['vplace']; ?>" readonly>
        </div>

      </div>
      <!--  col-md-6   -->
    </div>

    
    
    </div>


    <a type="submit" class="btn btn-primary" href="viewcasedetails.php">Back</a>
  </form>
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
<!-- MDB -->
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"
></script>

</html>