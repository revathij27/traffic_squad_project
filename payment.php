<?php 
include 'config.php';
$ad=new Admin();
$uid=$_SESSION['u_id'];
$cs_id=$_GET['csid'];

$stmt=$ad->ret("SELECT * FROM `rcase` WHERE `cs_id`='$cs_id'");
$row=$stmt->fetch(PDO::FETCH_ASSOC);
$amt=$row['penalty'];



?>




<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	<link rel="stylesheet" type="text/css" href="payment.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
</head>
<body>
	<div class="container p-0">
		<form method="post" action="controller/payment.php">
        <div class="card px-4">
            <p class="h8 py-3">Payment Details</p>
            <div class="row gx-3">
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Holder Name</p>
                        <input class="form-control mb-3" type="text" placeholder="Name" name="name">
                        <input type="hidden" name="penalty" value="<?php echo $amt; ?>">
                         <input type="hidden" name="cs_id" value="<?php echo $cs_id; ?>">
                    </div>
                </div>
                <div class="col-12">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Card Number</p>
                        <input class="form-control mb-3" type="password" placeholder="1234 5678 435678" name="cno">
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">Expiry</p>
                        <input class="form-control mb-3" type="text" placeholder="MM/YYYY" name="exp">
                    </div>
                </div>
                <div class="col-6">
                    <div class="d-flex flex-column">
                        <p class="text mb-1">CVV/CVC</p>
                        <input class="form-control mb-3 pt-2 " type="password" placeholder="***" name="cvv">
                    </div>
                </div>
                <div class="col-12">
                    <button class="btn btn-primary mb-3" name="pay">
                        <span class="ps-3">Pay Rs <?php echo $row['penalty']; ?>/-</span>
                        <span class="fas fa-arrow-right"></span>
                    </button>
                </div>
            </div>
        </div>
    </form>
    </div>

</body>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</html>