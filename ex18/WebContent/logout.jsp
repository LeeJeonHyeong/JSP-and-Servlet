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
        			 cookies[i].setMaxAge(0); // abcde인 쿠키 삭제
        			 response.addCookie(cookies[i]); // 삭제한 쿠키 탑재
        		 }
        	 }
         }
         
         // response.sendRedirect("login.html");
         response.sendRedirect("cookietest.jsp"); // 제대로 삭제됐는지 확인
      
      %>

</body>
</html>