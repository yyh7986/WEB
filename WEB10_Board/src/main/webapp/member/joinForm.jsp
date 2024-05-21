<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm.jsp</title>
<link rel="stylesheet" href="css/board.css">
<script src="script/board.js"></script>
</head>
<body>
	<form name="join" class="login-form" action="board.do" method="post">
		<input type="hidden" name="command" value="join">
        <h2>Join</h2>
        <div class="field">
            <label>User ID</label>
            <input style="flex:3" type="text" name="userid">
            <input style="flex:1" type="button" value="ID Check" onclick="idcheck()">
            <input type="hidden" name="reid">
        </div>
        <div class="field">
            <label>Password</label>
            <input type="password" name="pwd">
        </div>
        <div class="field">
            <label>Retype Pw</label>
            <input type="password" name="pwd_check">
        </div>
        <div class="field">
            <label>name</label>
            <input type="text" name="name">
        </div>
        <div class="field">
            <label>email</label>
            <input type="text" name="email">
        </div>
        <div class="field">
            <label>phone</label>
            <input type="text" name="phone">
        </div>
        
        <div class="login-button">
            <input type="submit" class="btn-login" value="Join" onclick="return joinCheck()">
            <input type="button" class="btn-login" value="Back" onclick="location.href='board.do?command=loginForm'">            
        </div>
      </div>
    </form>

</body>
</html>