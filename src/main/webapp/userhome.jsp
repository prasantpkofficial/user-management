<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">//
<title>Insert title here</title>
<%@ include file="component/allcss.jsp" %>	

</head>

<body>
<%
   User user2=(User)session.getAttribute("userObj");
if(user2==null)
{
	response.sendRedirect("userlogin.jsp");
}else {

%>


<%@ include file="component/usernavbar.jsp" %>	
	<h1 class="text-center text-primary" >Welcome to home page</h1>
	<img alt="" src="https://img.freepik.com/free-vector/happy-tiny-people-near-huge-welcome-word-flat-illustration_74855-10808.jpg?w=1060&t=st=1699634932~exp=1699635532~hmac=dd1ce322a583529d485538bfecef455e2813fa62d70728fff9ad5a0be507553d" align="right">
    
   <%
   }
   %> 
																									
</body>
</html>