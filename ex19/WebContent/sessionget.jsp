<%@ page import="java.util.Enumeration" %>
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
          Object obj1 = session.getAttribute("mySessionName");   // getAttribute의 반환값은 무조건 Object 타입, Casting을 해야 사용가능
          String mySessionName = (String)obj1;
          out.println(mySessionName + "<br/>");
          
          Object obj2 = session.getAttribute("myNum");
          Integer myNum = (Integer)obj2;
          out.println(myNum + "<br/>");
          
          out.println("**************** <br />");
          
          String sName;
          String sValue;
          Enumeration enumeration = session.getAttributeNames();
          while(enumeration.hasMoreElements()) {
        	  sName = enumeration.nextElement().toString();
        	  sValue = session.getAttribute(sName).toString();
        	  out.println("sName :" + sName + "<br/>");
        	  out.println("sValue :" +sValue + "<br/>");
          }
          
          out.println("************** <br/>");
          
          String sessionID = session.getId();  // 한 브라우저당 고유한 ID (컨테니어가 알아서 생성)
          out.println("sessionID : " + sessionID + "<br/>");
          int sessionInter = session.getMaxInactiveInterval();
          out.println("sessionInter : " + sessionInter + "<br/>");
          
          out.println("************** <br/>");
          
          session.removeAttribute("mySessionName");         // 특정 Session의 Data값만 없애는 것
          Enumeration enumeration1 = session.getAttributeNames();
          while (enumeration1.hasMoreElements()) {
        	  sName = enumeration1.nextElement().toString();
        	  sValue = session.getAttribute(sName).toString();
        	  out.println("sName :" + sName + "<br/>");
        	  out.println("sValue :" +sValue + "<br/>"); 	  
          }
          
          out.println("*************** <br/>");
           
          session.invalidate();                            // 모든 Data값 삭제
          if(request.isRequestedSessionIdValid()) {
        	  out.println("session valid");
          } else {
        	  out.println("session invalid");
          }
       %>

</body>
</html>