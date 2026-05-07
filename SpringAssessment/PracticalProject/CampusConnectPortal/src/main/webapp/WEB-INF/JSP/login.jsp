<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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

</body>
</html>