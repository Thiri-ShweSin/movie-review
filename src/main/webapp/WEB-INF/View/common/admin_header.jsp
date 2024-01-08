<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<body class="main-layout admin-section">
	<div class="app">
		<div class="menu-toggle">
			<div class="hamburger">
				<span></span>
			</div>
		</div>

		<aside class="sidebar">
			<c:if test="${sessionScope.admin!=null}">
				<i class="fas fa-user-tie fa-3x text-light mb-3"></i>
				<h3 class="text-uppercase">${sessionScope.admin.name}</h3>
				<h3>${sessionScope.admin.gmail}</h3>
			</c:if>

			<nav class="menu">
				<a href="/demo/admin/registerMovie" class="menu-item">Add Movie</a> 
				<a href="/demo/admin/getMovies" class="menu-item">Movies</a>
				<a href="/demo/admin/getUsers" class="menu-item">Users</a>
				<a href="/demo/logout" class="menu-item">Logout</a>
			</nav>

		</aside>