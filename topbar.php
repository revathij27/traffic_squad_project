
<?php 
if(isset($_SESSION['u_id'])){
  $ad=new Admin();
$uid=$_SESSION['u_id'];
$st1=$ad->ret("SELECT * FROM `user` WHERE `u_id`='$uid'");
$r=$st1->fetch(PDO::FETCH_ASSOC);
$vregno=$r['vreg_no'];

$ste=$ad->ret("SELECT * FROM `notification` WHERE `vreg_no`='$vregno' AND `nstatus`='sent'");


$c=$ste->rowCount();

}





?>

<nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="#">
          <div class="logo_box">
            <img src="images/logonew.png" alt="" style="width:100px;border-radius:5px;" />
          </div>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mr-2">
            <li class="nav-item active">
              <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="rules.php">Traffic Rules<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="station.php">Stations<span class="sr-only">(current)</span></a>
            </li>
            <?php 
            if(isset($_SESSION['u_id'])){
              ?>
              <li class="nav-item active">
              
    </span>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="viewcasedetails.php">Status</a>
            </li>
            <?php }
            ?>
            
            <!-- <li class="nav-item">
              <a class="nav-link" href="about.html">About Us </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="service.html">Services</a>
            </li> -->
            <!-- <li class="nav-item">
              <a class="nav-link" href="blog.html">Blog</a>
            </li> -->
            <!-- <li class="nav-item">
              <a class="nav-link" href="contact.html">Contact us</a>
            </li> -->
            <?php if(isset($_SESSION['u_id'])){
              ?>
              <li class="nav-item">
              <a class="nav-link" href="controller/ulogout.php"
              class="dropdown-menu show" >LogOut
              
              </a>

            </li>

           <?php }else{
            ?>
            <li class="nav-item">
              <a class="nav-link" href="login/"
              class="dropdown-menu show" >Login
              
              </a>

            </li>
           <?php } ?>
            

          </ul>
      
        </div>
      </nav>