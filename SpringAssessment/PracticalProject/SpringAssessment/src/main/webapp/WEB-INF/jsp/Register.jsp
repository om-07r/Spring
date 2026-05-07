<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>

<style>
    *{
        margin:0;
        padding:0;
        box-sizing:border-box;
        font-family: Arial, Helvetica, sans-serif;
    }

    body{
        height:100vh;
        display:flex;
        justify-content:center;
        align-items:center;
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    .register-container{
        width:380px;
        background:white;
        padding:40px;
        border-radius:16px;
        box-shadow:0 10px 30px rgba(0,0,0,0.2);
    }

    .register-container h2{
        text-align:center;
        margin-bottom:25px;
        color:#333;
    }

    .input-group{
        margin-bottom:20px;
    }

    .input-group label{
        display:block;
        margin-bottom:8px;
        color:#555;
        font-weight:bold;
    }

    .input-group input{
        width:100%;
        padding:12px;
        border:1px solid #ccc;
        border-radius:8px;
        font-size:15px;
        transition:0.3s;
    }

    .input-group input:focus{
        border-color:#667eea;
        outline:none;
        box-shadow:0 0 8px rgba(102,126,234,0.4);
    }

    .register-btn{
        width:100%;
        padding:12px;
        background:#667eea;
        color:white;
        border:none;
        border-radius:8px;
        font-size:16px;
        font-weight:bold;
        cursor:pointer;
        transition:0.3s;
    }

    .register-btn:hover{
        background:#5a67d8;
        transform:translateY(-2px);
    }

    .login-link{
        text-align:center;
        margin-top:20px;
        color:#666;
    }

    .login-link a{
        text-decoration:none;
        color:#667eea;
        font-weight:bold;
    }

    .login-link a:hover{
        text-decoration:underline;
    }
</style>

</head>

<body>

<div class="register-container">

    <h2>Create Account</h2>

    <form method="post" action="register">

        <div class="input-group">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter your name" required>
        </div>

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter password" required>
        </div>

        <button type="submit" class="register-btn">Register</button>

    </form>

    <div class="login-link">
        Already have an account?
        <a href="login">Sign In</a>
    </div>

</div>

</body>
</html>