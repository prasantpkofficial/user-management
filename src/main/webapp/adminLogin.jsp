<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<%@ include file ="component/allcss.jsp" %>
<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card" >
					<div class="card-body">
					<p class="fs-4 text-center">Admin Login</p>
						<form action="#">
							<div class="mb-3">
								<label class="form-label">Email Address</label>
								<input name="email" type="email" class="form-control" required>					
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label>
								<input name="password" type="password" class="form-control" required>					
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>
						<h3>New Admin ? <a href="userRegistration.jsp" class="text-success fs-3 text-decoration-none">Register</a></h3>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>