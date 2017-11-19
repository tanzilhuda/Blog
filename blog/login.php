<!DOCTYPE html>
<html>
<head>
    <title>My Blog</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	
	<div class="header">
	    <h2>Login form</h2>
	</div>

		<form method="POST" action="login.php">    
			<div class="error">
				
			</div>
		    
		    <div class="input-group">
		        <label>Email</label>
		        <input type="email" name="email" required value="">
		    </div>
		    <div class="input-group">
		        <label>Password</label>
		        <input type="password" required name="password">
		    </div>
		    
		    <div class="checkbox">
		    	<input type="checkbox" name="keep">
		        <label>Keep me Logged in</label>     
		    </div>

		    <div class="input-group">
		        <button type="submit" class="btn" name="login">Login</button>
		    </div>

		    <p>
		        Not yet a member? <a href="register.html">Sign up</a>
		    </p>

		</form>
	</body>
</html>