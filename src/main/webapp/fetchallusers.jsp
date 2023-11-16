<%@page import="java.util.List"%>
<%@page import="com.org.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allcss.jsp" %>	
</head>
<body>
<%@ include file="component/usernavbar.jsp" %>	

  <div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">User List</p>
						<table class="table">
							<thead>
								<tr>
									<th>Name</th>
									<th>Age</th>
									<th>Mobile</th>
									<th>Email</th>
									<th>Password</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
							
							<%
							   UserDao dao=new UserDao();
							List <User> list=dao.fetchAllUsers();
							
							for(User users:list){
							
							
							%>
							<tr> 
							     <td><%=users.getName() %> </td>
							      <td><%=users.getAge() %> </td>
							       <td><%=users.getMobile() %> </td>
							        <td><%=users.getEmail() %> </td>
							         <td><%=users.getPassword() %> </td>
							          <td>
							          <a href="update_user.jsp?id=<%=users.getId()%>" class="btn  btn-sm btn-primary">Update</a>
							              <a href="delete_user?id=<%=users.getId()%>" class="btn  btn-sm btn-danger">Delete</a>
							         
							          </td>
							
							
							</tr>
							
							
							
							<%
							}
							
							%>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
  
</body>
</html>