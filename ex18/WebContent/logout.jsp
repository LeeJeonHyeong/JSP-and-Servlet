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
         Cookie[] cookies = request.getCookies();
     
         if(cookies != null) {
        	 for (int i = 0; i<cookies.length; i++) {
        		 if(cookies[i].getValue().equals("abcde")) {
        			 cookies[i].setMaxAge(0); // abcde�� ��Ű ����
        			 response.addCookie(cookies[i]); // ������ ��Ű ž��
        		 }
        	 }
         }
         
         // response.sendRedirect("login.html");
         response.sendRedirect("cookietest.jsp"); // ����� �����ƴ��� Ȯ��
      
      %>

</body>
</html>