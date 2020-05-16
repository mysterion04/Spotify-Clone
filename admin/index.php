<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

	<link rel="stylesheet" href="../css/style1.css">

</head>
<body>
	
	<div class="container main-section1">
		<div class="section white center main-section2">


			<?php 

				if (isset($_SESSION['msg'])) {
					
					echo '<div class="error-msg">
							<p>'.$_SESSION['msg'].'</p>
						</div>';

					unset($_SESSION['msg']);
				}
			 ?>

			<form action="../backend/admin-panel/admin-login-db.php" method="post">

				<div style="padding: 10px;" class="left">
					<label for="email_admin">Email Address : </label>
				</div>

				<div style="padding: 10px;">

					<input name="email" id="email_admin" type="email">

				</div>

				<br>

				<div style="padding: 10px;" class="left">
					<label for="pass">Password : </label>
				</div>

				<div style="padding: 10px;">
				
					<input name="password" id="pass" type="password">

				</div>

				<br>

				<button class="btn waves-effect submit-button" type="submit">Log In</button>

			</form>
			
		</div>
	</div>


	    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

	
</body>
</html>