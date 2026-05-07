<%@ page language="java" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>

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
        background: linear-gradient(135deg, #4facfe, #00f2fe);
    }

    .container{
        background:white;
        padding:40px;
        width:350px;
        border-radius:15px;
        text-align:center;
        box-shadow:0 10px 25px rgba(0,0,0,0.2);
    }

    .container h1{
        margin-bottom:15px;
        color:#333;
    }

    .container p{
        color:#666;
        margin-bottom:30px;
    }

    .btn{
        display:block;
        text-decoration:none;
        padding:12px;
        margin:15px 0;
        border-radius:8px;
        font-size:16px;
        font-weight:bold;
        transition:0.3s;
    }

    .signup{
        background:#4facfe;
        color:white;
    }

    .signup:hover{
        background:#2196f3;
        transform:translateY(-2px);
    }

    .signin{
        background:#00c853;
        color:white;
    }

    .signin:hover{
        background:#00a844;
        transform:translateY(-2px);
    }
</style>

</head>

<body>

<div class="container">
    <h1>Welcome</h1>
    <p>Please choose an option</p>

    <a href="Register" class="btn signup">Sign Up</a>

    <a href="login" class="btn signin">Sign In</a>
</div>

</body>
</html>