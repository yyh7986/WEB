<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>deleteOk.jsp</title>
</head>
<body>
<script type="text/javascript">
alert("게시물 삭제가 완료되었습니다.");
location.href="board.do?command=main";
</script>
</body>
</html>