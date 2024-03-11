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

  <title>Rules</title>

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



  <!-- story section -->
  
        <br><br><br>

        <table class="table">
  <thead>
    <tr>
      <th scope="col">S ID</th>
      <th scope="col">OFFENCE</th>
      <th scope="col">SECTION</th>
      <th scope="col">PENALTY</th>
    </tr>
  </thead>
  <tbody>
<?php 
$stmt=$ad->ret("SELECT * FROM `trules`");
$i=0;
while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
  ?>
<tr>
      <th scope="row"><?php echo $i=$i+1; ?></th>
      <td><img src="controller/<?php echo $row['sign']; ?>" width="130px;" height="100px;" style="border-radius: 100%"><?php echo $row['offence']; ?></td>
      <td><?php echo $row['section']; ?></td>
      <td><?php echo $row['penalty']; ?> Rs.</td>
    </tr>


<?php } ?>
    

    
  </tbody>
</table>
      </div>
    
    </section>



  </div>

  <!-- end story section -->



  <!-- info section -->
  <?php include 'footer.php'; ?>
  <!-- end info section -->


  <!-- footer section -->
 
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