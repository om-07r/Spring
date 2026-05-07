<%@ page language="java"  isELIgnored="false"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Failed</title>

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
        background: linear-gradient(135deg, #ff6a88, #ff99ac);
    }

    .error-container{
        width:400px;
        background:white;
        padding:40px;
        border-radius:18px;
        text-align:center;
        box-shadow:0 12px 35px rgba(0,0,0,0.25);
    }

    .error-icon{
        font-size:70px;
        margin-bottom:20px;
    }

    .error-container h2{
        color:#e63946;
        margin-bottom:15px;
        font-size:30px;
    }

    .error-message{
        background:#ffe5e5;
        color:#c1121f;
        padding:12px;
        border-radius:8px;
        margin-bottom:25px;
        font-size:15px;
    }

    .retry-btn{
        display:inline-block;
        text-decoration:none;
        padding:12px 25px;
        background:#e63946;
        color:white;
        border-radius:8px;
        font-weight:bold;
        transition:0.3s;
    }

    .retry-btn:hover{
        background:#c1121f;
        transform:translateY(-2px);
    }

    @media(max-width:500px){
        .error-container{
            width:90%;
            padding:30px 20px;
        }
    }
</style>

</head>

<body>

<div class="error-container">

    <div class="error-icon">
        ❌
    </div>

    <h2>Login Failed</h2>

    <div class="error-message">
        ${msg}
    </div>

    <a href="login" class="retry-btn">
        Try Again
    </a>

</div>

</body>
</html>