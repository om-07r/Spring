<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

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
        background: linear-gradient(135deg, #43cea2, #185a9d);
    }

    .login-container{
        width:380px;
        background:white;
        padding:40px;
        border-radius:16px;
        box-shadow:0 10px 30px rgba(0,0,0,0.2);
    }

    .login-container h2{
        text-align:center;
        margin-bottom:25px;
        color:#333;
    }

    .message{
        background:#ffe0e0;
        color:#d8000c;
        padding:10px;
        border-radius:8px;
        margin-bottom:20px;
        text-align:center;
        font-size:14px;
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
        border-color:#43cea2;
        outline:none;
        box-shadow:0 0 8px rgba(67,206,162,0.4);
    }

    .login-btn{
        width:100%;
        padding:12px;
        background:#43cea2;
        color:white;
        border:none;
        border-radius:8px;
        font-size:16px;
        font-weight:bold;
        cursor:pointer;
        transition:0.3s;
    }

    .login-btn:hover{
        background:#2bbd90;
        transform:translateY(-2px);
    }

    .register-link{
        text-align:center;
        margin-top:20px;
        color:#666;
    }

    .register-link a{
        text-decoration:none;
        color:#185a9d;
        font-weight:bold;
    }

    .register-link a:hover{
        text-decoration:underline;
    }
</style>

</head>

<body>

<div class="login-container">

    <h2>Welcome Back</h2>

    <!-- Error / Success Message -->
    <% if(request.getAttribute("msg") != null){ %>
        <div class="message">
            ${msg}
        </div>
    <% } %>

    <form method="post" action="login">

        <div class="input-group">
            <label>Email</label>
            <input type="email" name="email"
                   placeholder="Enter your email" required>
        </div>

        <div class="input-group">
            <label>Password</label>
            <input type="password" name="password"
                   placeholder="Enter your password" required>
        </div>

        <button type="submit" class="login-btn">
            Login
        </button>

    </form>

    <div class="register-link">
        Don't have an account?
        <a href="Register">Create Account</a>
    </div>

</div>

</body>
</html>