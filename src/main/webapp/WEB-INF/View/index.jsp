<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/link.jsp"%>
<%@include file="common/header.jsp"%>

<!-- banner -->
<section class="banner_main">
	<div id="banner1" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#banner1" data-slide-to="0" class="active"></li>
			<li data-target="#banner1" data-slide-to="1"></li>
			<li data-target="#banner1" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container-fluid">
					<div class="carousel-caption">
						<div class="text-bg">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/images/encanto_banner.jpg"
									alt="Encanto Poster" />
							</figure>
							<a class="read_more" href="/demo/login">Watch Now</a>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container-fluid">
					<div class="carousel-caption">
						<div class="text-bg">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/images/fantastic beasts_banner.jpg"
									alt="Fantastic Beasts Poster" />
							</figure>
							<a class="read_more" href="/demo/login">Watch Now</a>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container-fluid">
					<div class="carousel-caption">
						<div class="text-bg">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/images/theory of everything_banner.jpg"
									alt="Enola Holmes Poster" />
							</figure>
							<a class="read_more" href="/demo/login">Watch Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#banner1" role="button"
			data-slide="prev"> <i class="fa fa-arrow-left" aria-hidden="true"></i>
		</a> <a class="carousel-control-next" href="#banner1" role="button"
			data-slide="next"> <i class="fa fa-arrow-right"
			aria-hidden="true"></i>
		</a>
	</div>
</section>
<!-- end banner -->
<!-- about section -->
<div id="about" class="about">
	<div class="container">
		<div class="row d_flex">
			<div class="col-md-5">
				<div class="about_img">
					<figure>
						<img
							src="${pageContext.request.contextPath}/resources/images/movie_site.png"
							alt="website" />
					</figure>
				</div>
			</div>
			<div class="col-md-7">
				<div class="titlepage">
					<h2>All About Just Watch</h2>
					<p>Where to watch movies online? A movie evening always starts
						with a very time-consuming and frustrating search for where to
						watch movies online. JustWatch is there to help you find all the
						movies and make your life easier. Find below the list of online
						movies available on Netflix, and 10 other streaming providers,
						organized by popularity.</p>
				</div>
				<a class="read_more" href="#">Read More</a>
			</div>
		</div>
	</div>
</div>
<!-- about section -->
<!-- Our  Movies section -->

<div id="movies" class="movies">
	<div class="container">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="titlepage">
					<h2>Latest Movies</h2>
					<p>A movie evening always starts with a very time-consuming and
						frustrating. JustWatch is here to help you find all the movies and
						make your life easier.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<c:set var="totalMovies" value="${fn:length(movies)}" />
			<c:forEach items="${movies}" var="movie" varStatus="movieCounter">
				<c:if test="${movieCounter.count >= (totalMovies - 3)}">
					<div class="col-xl-3 col-lg-3 col-md-6 col-sm-8 mx-auto">
						<div class="movies_box">
							<figure>
								<img
									src="${pageContext.request.contextPath}/resources/images/${movie.poster_path}"
									alt="#" />
							</figure>
							<h3>
								<span>${movie.name}</span>
							</h3>
							<a href="/demo/movieDetails/${movie.id}" class="btn">Details</a>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
		<a class="read_more" href="/demo/login">Read More</a>
	</div>
</div>

<!-- end Our  Movies section -->

<!-- my section -->
<div class="aboutme">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="titlepage">
					<h2>How I build this Project</h2>
					<p>I want to share my experience with All !!</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="my_box">
					<figure>
						<img
							src="${pageContext.request.contextPath}/resources/images/me.jpg"
							alt="#"/>
					</figure>
					<h3>Thiri Shwe Sin</h3>
					<p>This is my first spring boot project. I used HTML, CSS,
						Bootstrap, JavaScript and JSP for Front-End. For the Back-End, I
						used Java and Spring Framework. The project is simple and easy to
						use. It is about a movie review website. Users can create account
						and use our service. User who doesn't have an account should
						create one to use our service as the normal users can only watch
						the latest four movies reviews. On the other hand, admins have
						access to create, update and delete the movie reviews.</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- end my section -->

<!--  footer -->
<footer>
	<div class="footer">
		<div class="container-fluid">
			<div class="col-12 text-center">
				<h3 class="text-uppercase">The Best Movie Review Site</h3>
				<h5 class="fst-italic">Believe in Just Watch, You won't be
					regret.</h5>

				<div class="py-3">
					<a href="#" target="_blank"><i
						class="fab fa-facebook fa-2x text-primary mx-3"></i></a> <a href="#"
						target="_blank"><i
						class="fab fa-youtube fa-2x text-danger mx-3"></i></a> <a href="#"
						target="_blank"><i class="fab fa-twitter fa-2x text-info mx-3"></i></a>
					<a href="#" target="_blank"><i
						class="fab fa-google-plus fa-2x text-danger mx-3"></i></a>
				</div>

				<p>
					&copy;Copyright <span id="autoyear"></span> - Made by Thiri Shwe
					Sin
				</p>
			</div>
		</div>
	</div>
</footer>
<!-- end footer -->
<%@include file="common/footer.jsp"%>



