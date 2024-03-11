<?php 
include 'config.php';
$ad=new Admin();
$uid=$_SESSION['u_id'];
$st=$ad->ret("SELECT * FROM `user` WHERE `u_id`='$uid'");
$row=$st->fetch(PDO::FETCH_ASSOC);
$vregno=$row['vreg_no'];



$stmt3=$ad->ret("SELECT * FROM `rcase` INNER JOIN `trules` ON rcase.r_id=trules.r_id WHERE rcase.vreg_no='$vregno' ORDER BY `cs_date` DESC");











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

  <title>Challan Status</title>

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
  <section class="layout_padding">
  <div class="square_box box_three"></div>
  <div class="square_box box_four"></div>
  <div class="container mt-5">
    <div class="row">
      <h3 style="color:red;"  >Challen Status</h3><br><br><br>
      <table class="table">
  <thead>
    <tr>
      <th scope="col">Challen No</th>
      <th scope="col">Offender Name</th>
      <th scope="col">Vehicle No</th>
      <th scope="col">Offence</th>
      <th scope="col">Penalty</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <?php
    while($row3=$stmt3->fetch(PDO::FETCH_ASSOC)){

      ?>


      <tr>
      <th scope="row"><?php echo $row3['challenno']; ?></th>
      <td><?php echo $row3['oname']; ?></td>
      <td><?php echo $row3['vreg_no']; ?></td>
      <td><?php echo $row3['offence']; ?></td>
      <td><?php echo $row3['penalty']; ?></td>
      <td>
        <a type="button" class="btn btn-primary btn-floating" title="view" href="singlecase.php?csid=<?php echo $row3['cs_id']; ?>">
  <i class="far fa-eye"></i>
 
</a>
<?php
if($row3['cs_status']=='sent'){
  ?>
<a type="button" class="btn btn-warning" href="payment.php?csid=<?php echo $row3['cs_id']; ?>">Make payment</a>


  <?php
   }else if($row3['cs_status']=='paid'){
    ?>
    <a type="button" class="btn btn-warning" href="feedback/index.php?uid=<?php echo $uid.'&csid='.$row3['cs_id']; ?>">Give Feedback</a><br>
    <button class="badge rounded-pill badge-success" style="margin-left:60px;">Payment made</button>




  <?php }else if($row3['cs_status']=='completed'){
    ?>
     <button class="badge rounded-pill badge-success" style="margin-left:60px;">Payment successful</button><br>
      <button class="badge rounded-pill badge-success" style="margin-left:100px;">Feedback sent</button>




  <?php }


 ?>


      </td>
    </tr>
    <?php } ?>
    
    
    
  </tbody>
</table>



      
      
    

      
     
      
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