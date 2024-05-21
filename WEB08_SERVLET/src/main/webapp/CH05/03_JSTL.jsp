<%@page import="com.himedia.servlet.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>03_JSTL.jsp</title>
</head>
<body>

<h2>
단순 출력 <br>

JSTL 출력 : <c:out value="Hello" /> <br>

EL 출력 : ${"Hello"}
</h2>
<br><br><br>

<h2>
변수생성 및 초기화1 <br>
<c:set var="msg" value="Hello"></c:set><br>
생성한 변수를 EL에 의해 출력 <br>
\${msg} = ${msg}
</h2> <br><br><br>

<h2>
변수생성 및 초기화2 <br>
<c:set var="age">30</c:set><br>
생성한 변수를 EL에 의해 출력 <br>
\${age} = ${age}
</h2> <br><br><br>

<%
	MemberDto mdto = new MemberDto(); 
	mdto.setUserid("hong");
	mdto.setName("홍길동");
	out.println(mdto.getUserid() + "<br>");
	out.println(mdto.getName() + "<br><hr>");
	
%>

<c:set var="member" value="<%= new MemberDto() %>"></c:set>
<!-- 멤버변수 값 변경 -->
<c:set target="${member }" property="name" value="홍길동"></c:set>
<c:set target="${member }" property="userid">Hong</c:set>

EL 에 의한 멤버변수 출력 - "객체.멤버변수이름" 만으로 getter 기능이 대체됩니다 <br>
\${member.name} = ${member.name } <br>
\${member.userid } = ${member.userid } <br>
클래스에 각 멤버변수에 대한 getter 와 setter 가 존재해야 위의 실행이 가능합니다 <hr> <br>
<br><br><br>
<hr>

<h2>
그외 변수와 출력 기능 - jstl 과 el 의 혼합 사용 <br>
<c:set var="add" value="${10 + 5 }"></c:set>
\${add } = ${add} <br>
<c:set var="flag" value="${10 > 5 }"></c:set>
\${flag} = ${flag} <br>
<br><br><br>

input 태그에 EL로 값 설정
<input type="text" value="<%= mdto.getUserid() %>">
<input type="text" value="${mdto.getUserid()}">
</h2>

</body>
</html>