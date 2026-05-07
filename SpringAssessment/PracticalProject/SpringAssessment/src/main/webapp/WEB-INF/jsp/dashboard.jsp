<%@ page language="java"  isELIgnored="false"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>

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
        background: linear-gradient(135deg, #1e3c72, #2a5298);
    }

    .dashboard-container{
        width:450px;
        background:white;
        padding:40px;
        border-radius:18px;
        text-align:center;
        box-shadow:0 12px 35px rgba(0,0,0,0.25);
    }

    .dashboard-icon{
        font-size:70px;
        margin-bottom:20px;
    }

    .dashboard-container h2{
        color:#333;
        margin-bottom:15px;
        font-size:28px;
    }

    .dashboard-container h2 span{
        color:#2a5298;
    }

    .dashboard-container p{
        color:#666;
        font-size:16px;
        margin-bottom:30px;
        line-height:1.5;
    }

    .btn-group{
        display:flex;
        justify-content:center;
        gap:15px;
        flex-wrap:wrap;
    }

    .btn{
        text-decoration:none;
        padding:12px 24px;
        border-radius:8px;
        font-weight:bold;
        transition:0.3s;
        display:inline-block;
    }

    .home-btn{
        background:#2a5298;
        color:white;
    }

    .home-btn:hover{
        background:#1e3c72;
        transform:translateY(-2px);
    }

    .logout-btn{
        background:#ff4b5c;
        color:white;
    }

    .logout-btn:hover{
        background:#e63946;
        transform:translateY(-2px);
    }

    @media(max-width:500px){
        .dashboard-container{
            width:90%;
            padding:30px 20px;
        }

        .btn-group{
            flex-direction:column;
        }

        .btn{
            width:100%;
        }
    }
</style>

</head>

<body>

<div class="dashboard-container">

    <div class="dashboard-icon">
        🎓
    </div>

    <h2>
        Welcome, <span>${usermail}</span>!
    </h2>

    <p>
        You have successfully logged in to
        <strong>Campus Connect</strong>.
        Explore your dashboard and manage your activities easily.
    </p>

    <div class="btn-group">

        <a href="home" class="btn home-btn">
            Home
        </a>

        <a href="logout" class="btn logout-btn">
            Logout
        </a>

    </div>

</div>

</body>
</html>