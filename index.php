<?php
include 'include/db.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vaccination Monitoring System</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="container">
            <div class="wrapper">
                <div class="title"><span>Login</span></div>
                <form action="index.php" method="post">
                    <?php
                    include 'controller/register.php';
                    ?>
                    <div class="form-group row">
                    	<div class="col-md-4">
                        	<label>First Name</label>
                        	<input type="text" name="fname" class="form-control" id="fname" placeholder="Type Here...">
                        </div>

                        <div class="col-md-4">
                        	<label>Middle Name</label>
                        	<input type="text" name="mname" class="form-control" id="mname" placeholder="Type Here...">
                        </div>

                        <div class="col-md-4">
                        	<label>Last Name</label>
                        	<input type="text" name="lname" class="form-control" id="lname" placeholder="Type Here...">
                        </div>
                    </div>

                    <div class="form-group row">
                    	<div class="col-md-6">
                        	<label>Birthdate</label>
                        	<input type="date" name="dob" class="form-control" placeholder="Birthdate">
                        </div>

                        <div class="col-md-6">
                        	<label>Age</label>
                        	<input type="number" name="age" class="form-control" placeholder="Type Here...">
                        </div>
                    </div>
                    
                    <div class="form-group row">
                    	<div class="col-md-4">
                    		<label>Address</label>
                    		<input type="text" name="address" class="form-control" placeholder="Type Here...">
                    	</div>
                    	<div class="col-md-4">
                    		<label>Purok</label>
                    		<input type="text" name="purok" class="form-control" placeholder="Type Here...">
                    	</div>
                    	<div class="col-md-4">
                    		<label>Contact Number</label>
                    		<input type="number" maxlength="13" name="contact_number" class="form-control" placeholder="Type Here...">
                    	</div>
                    </div>
                    <div class="form-group row">
                    	<div class="col-md-12">
                    		<input type="submit" name="btnRegister" value="Register" class="btn btn-info form-control" style="background-color: #00908d">
                    	</div>
                    </div>
                </form>
            </div>
        </div>
</body>
</html>