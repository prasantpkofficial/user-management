<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
html, body {
    height: 100%;
    margin: 0;
    overflow: hidden;
}

#fullscreen-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

</style>
</head>
<body>
<%@ include file="component/navbar.jsp" %>
<div id="carouselExampleInterval" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="5000">
				<img src="https://img.freepik.com/free-photo/human-resources-concept-with-hand_23-2150389113.jpg?w=1060&t=st=1698915856~exp=1698916456~hmac=d01488f93e798aff416703d255048e8f402983391649e4ccaa9ba8fe4165c1b4" id="fullscreen-image" class="d-block w-100" alt="..." height="600px">
			</div>
			<div class="carousel-item" data-bs-interval="2000">
				<img src="https://images.unsplash.com/photo-1504384308090-c894fdcc538d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" id="fullscreen-image" class="d-block w-100" alt="..." height="600px">
			</div>
			<div class="carousel-item">
				<img src="https://www.shutterstock.com/shutterstock/photos/2257440327/display_1500/stock-photo-employees-must-complete-the-online-survey-form-answer-the-test-questions-marked-checklist-on-a-2257440327.jpg" id="fullscreen-image" class="d-block w-100" alt="..." height="600px">
			</div>
		</div>
		
	</div>

</body>
</html>