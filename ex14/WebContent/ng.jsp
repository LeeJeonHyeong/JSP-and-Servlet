<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%!
  int age;
%>

<%
  String str = request.getParameter("age");
  age = Integer.parseInt(str);
%>

미성년자 입니다. 주류구매가 불가능 합니다.

<a href="request.html">처음으로 이동</a>
</body>
</html>