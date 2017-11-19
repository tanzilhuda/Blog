<!DOCTYPE html>
<html>
<head>
    <title>Blog Registration</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="header">
    <h2>Registration Form</h2>
</div>

<form method="" action="" enctype="multipart/form-data">

    <!-- Display validation error here-->
   

    <div class="input-group">
        <label>Username</label>
        <input type="text" name="username" value="">
    </div>
    <div class="input-group">
        <label>Email</label>
        <input type="email" name="email" value="">
    </div>
    <div class="input-group">
        <label>Password</label>
        <input type="password" name="">
    </div>
    <div class="input-group">
        <label>Confirm password</label>
        <input type="password" name="">
    </div>
    <div class="input-group">
        <label>Image: </label>
        <input type="file" name="">
    </div>
    <div class="input-group">
        <button type="submit" class="btn" name="register">Register</button>
    </div>

    <p>
        Already a member? <a href="login.html">Log in</a>
    </p>
</form>
</body>
</html>