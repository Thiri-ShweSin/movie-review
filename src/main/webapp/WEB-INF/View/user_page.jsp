<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/link.jsp"%>
<%@include file="common/userheader.jsp"%>

<div id="" class="movies">
	<div class="container">
		<div class="row">
			<div class="col-md-10 offset-md-1">
				<div class="titlepage">
					<h2>Our Movies</h2>
					<p>JustWatch is here to help you find all the movies and
						make your life easier</p>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<c:forEach items="${movies}" var="movie">
				<div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
					<div class="movies_box">
						<figure>
							<img
								src="${pageContext.request.contextPath}/resources/images/${movie.poster_path}"
								alt="#" />
						</figure>
						<h3>
							<span>${movie.name}</span>
						</h3>
						<a href="/demo/user/movieDetails/${movie.id}" class="btn">Details</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<%@include file="common/footer.jsp"%>
