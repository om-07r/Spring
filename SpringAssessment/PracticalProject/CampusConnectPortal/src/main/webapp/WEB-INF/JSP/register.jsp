<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Student Registration</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            background: #fff;
            padding: 30px;
            width: 350px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        label {
            font-size: 14px;
            color: #555;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
            transition: 0.2s;
        }

        .input-field:focus {
            border-color: #6c63ff;
            box-shadow: 0 0 5px rgba(108,99,255,0.4);
        }

        .btn {
            width: 100%;
            padding: 10px;
            background: #6c63ff;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn:hover {
            background: #5848e5;
        }
    </style>
</head>

<body>

<div class="card">

    <h2>Student Registration</h2>

    <form:form method="post" action="register" modelAttribute="student">

        <label>Name</label>
        <form:input path="name" cssClass="input-field"/>

        <label>Email</label>
        <form:input path="email" cssClass="input-field"/>

        <label>Password</label>
        <form:password path="password" cssClass="input-field"/>

        <button type="submit" class="btn">Register</button>

    </form:form>

</div>

</body>
</html>