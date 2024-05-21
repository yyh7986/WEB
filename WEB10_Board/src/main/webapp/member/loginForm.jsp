<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginForm.jsp</title>
<link rel="stylesheet" href="css/board.css">
<script src="script/board.js"></script>
</head>
<body>
	<form class="login-form" action="board.do" method="post">
		<input type="hidden" name="command" value="login">
        <h2>Login</h2>
        <div class="field">
            <label>User ID</label>
            <input type="text" name="userid">
        </div>
        <div class="field">
            <label>Password</label>
            <input type="password" name="pwd">
        </div>
        <div class="field">${message}</div>
        <div class="login-button">
            <input type="submit" class="btn-login" value="log in" onclick="loginCheck()">
            <input type="button" class="btn-login" value="join" onclick="location.href='board.do?command=joinForm'">            
        </div>
        <div class="sns-login">
        	<input type="button" class="btn facebook" value="Facebook">
        	<input type="button" class="btn twitter" value="Twitter">
        	<input type="button" class="btn google" value="Google">
        	<input type="button" class="btn kakao" value="Kakao">
      </div>
    </form>
</body>
</html>