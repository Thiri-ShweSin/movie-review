<!-- body -->
<body class="main-layout user-section">
	<header>
		<!-- header inner -->
		<div class="header">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
						<div class="full">
							<div class="center-desk">
								<div class="logo">
									<a href="/demo/"><img
										src="${pageContext.request.contextPath}/resources/images/logo.png"
										alt="Logo" /></a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
						<nav class="navigation navbar navbar-expand-md navbar-dark ">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarsExample04"
								aria-controls="navbarsExample04" aria-expanded="false"
								aria-label="Toggle navigation">
								<i class="fa-solid fa-bars"></i>
							</button>
							<div class="collapse navbar-collapse" id="navbarsExample04">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item login_btn"><a class="nav-link"
										href="/demo/logout">Logout</a></li>
									<li class="nav-item d_none"><a class="nav-link user-btn" href="#"><i class="fa-solid fa-user"></i></a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
				<div class="profile-card">
					<h3>Profile</h3>
					<ul>
						<li><i class="fa-regular fa-user"></i>${sessionScope.user.name}</li>
						<li><i class="fa-regular fa-envelope"></i>${sessionScope.user.gmail}</li>
						<li><i class="fa-regular fa-calendar"></i>${sessionScope.user.start_join_date}</li>
						<li><i class="fa-regular fa-calendar-check"></i>${sessionScope.user.last_join_date}</li>
						<li><i class="fa-solid fa-arrow-up-wide-short"></i>${sessionScope.user.access_count}</li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!-- end header inner -->
	<!-- end header -->
	
	<script>
		var btn = document.querySelector('.user-btn');
		var toggleMenu = document.querySelector('.profile-card');
		
		btn.addEventListener('click',function(){
			toggleMenu.classList.toggle('active');
		});
		
	</script>