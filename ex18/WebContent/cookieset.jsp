<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
     <%
       Cookie cookie = new Cookie("cookieN", "cookieV"); // 앞에 것이 쿠키의 name, 뒤에 것이 쿠키의 value
       cookie.setMaxAge(60 * 60); // 쿠키 1시간 유지
       response.addCookie(cookie); 
     %>
     
     <a href="cookieget.jsp">cookie get</a>
</body>
</html>