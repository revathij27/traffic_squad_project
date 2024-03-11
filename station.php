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

  <title>Station</title>

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


  <!-- end slider section -->

  <!-- welcome section -->

  <section class="welcome_section layout_padding" style="display:flex;flex-direction:column;">
    <div class="container-fluid">

    <div>  
<label ><b>Filter By Location<b></label>
      <select name="l_id" onchange="fil(this.value)">
        <option selected disabled>Choose Location</option>
        <?php 
        $stmt1=$ad->ret("SELECT * FROM `location`");
        while($row1=$stmt1->fetch(PDO::FETCH_ASSOC)){
?>
<option value="<?php echo $row1['l_id']; ?>"><?php echo $row1['lname']; ?></option>

       <?php  }?>
        
        
      </select>
    </div><br><br>

  
  
<div class="row">

  <?php
  if(isset($_GET['lid'])){
    $l_id=$_GET['lid'];
    $stmt2=$ad->ret("SELECT * FROM `station` WHERE `l_id`='$l_id'");
    while($row2=$stmt2->fetch(PDO::FETCH_ASSOC)){
      ?>
    <div class=" col-md-6" style="display:flex;flex-direction:column;margin-bottom: 50px;border-style: none;">
          <div>
            <img class="img-fluid" src="controller/<?php echo $row2['simage']; ?>" alt="" width="400px" style="border-radius: 20px;"/>
          </div>
          <div class="welcome_detail">
            <!-- <h3>
              Welcome
            </h3> -->
            <h4 style="font-family: Book Antiqua;">
             <?php echo $row2['s_name']; ?>
            </h4>
            <b>Hours:</b><span style="color:green;">Open 24 Hours</span><br>
            <b>Address: </b><span style="color:black;"><?php echo $row2['saddress']; ?></span><br>
            <b>Phone:</b><span style="color:blue;"><?php echo $row2['sphone']; ?></span>
            
          </div>

        </div>



    <?php }
  }else{
    
  $stmt=$ad->ret("SELECT * FROM `station`");
  while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
    ?>
  <div class=" col-md-6" style="display:flex;flex-direction:column;margin-bottom: 50px;border-style: none;">
          <div>
            <img class="img-fluid" src="controller/<?php echo $row['simage']; ?>" alt="" width="400px" style="border-radius: 20px;"/>
          </div>
          <div class="welcome_detail">
            <!-- <h3>
              Welcome
            </h3> -->
            <h4 style="font-family: Book Antiqua;">
             <?php echo $row['s_name']; ?>
            </h4>
            <b>Hours:</b><span style="color:green;">Open 24 Hours</span><br>
            <b>Address: </b><span style="color:black;"><?php echo $row['saddress']; ?></span><br>
            <b>Phone:</b><span style="color:blue;"><?php echo $row['sphone']; ?></span>
            
          </div>

        </div>


  <?php }

  }



   ?>








      
   
        


       
      </div>


  
      


    </div>
  </section>
  <!-- end welcome section -->



  <!-- info section -->
  <section class="info_section layout_padding">
    <div class="container">
      <div class="row">
        <div class=" col-md-4 info_detail">
          <div>
            
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
                <span> Address:Thalassery, Kannur, Kerala
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
                  Email: traffic_squad@gmail.com
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
  <script type="text/javascript">
    function fil(v){
      window.location.href="station.php?lid="+v;

    }
  </script>





</body>

</html>