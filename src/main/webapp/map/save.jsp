<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSP에서 java.sql 패키지의 하위 모든 클래스를 import
			java.util 패키지의 하위 모든 클래스를 import
-->
<%@ page import = "java.sql.* , java.util.*" %>

<!-- 클라이언트에서 넘어오는 한글이 깨지지 않게 처리 -->
<% request.setCharacterEncoding("UTF-8"); %>

<!-- 클라이언트에서 넘어오는 값을 받아서 출력 : request 객체 -->
<%
	// http://localhost:8181/JSP_PROJ02/guestboard/save.jsp?name=gildong&email=aaa%40aaa.com&subject=aa&contents=i+like+an+apple
	// 파라미터 : ?변수명=값&변수명=값&변수명=값
	// 파라미터로 넘어온 값은 모두 String
	
	String na = request.getParameter("name");
	String age = request.getParameter("age");
	String wei = request.getParameter("weight");
	String addr = request.getParameter("addr");
	String phone = request.getParameter("phone");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 변수에 담긴 값을 출력 -->
	<h2> 넘어오는 변수 값 출력 </h2>
	<%= na %><br>
	<%= age %><br>
	<%= wei %><br>
	<%= addr %><br>
	<%= phone %><br>
</body>
</html>