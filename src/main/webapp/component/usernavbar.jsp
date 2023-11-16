<%@page import="com.org.dto.User"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="userhome.jsp"><i
			class="fa-solid fa-gift"></i>Qsp&Jsp</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="userhome.jsp"><i class="fa-solid fa-house"></i>Home</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="adduser.jsp">Add</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="fetchallusers.jsp">Fetch</a></li>
			</ul>
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false"><%=((User) session.getAttribute("userObj")).getName()%></button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="user-logout">Logout</a></li>
				</ul>
			</div>

		</div>
	</div>
</nav>