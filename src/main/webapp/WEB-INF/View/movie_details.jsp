<%@include file="common/link.jsp"%>
<%@include file="common/userheader.jsp"%>

<div class="container movie-info">
	<div class="row">
		<div class="movie_poster mb-3">
			<img
				src="${pageContext.request.contextPath}/resources/images/${movieInfo.poster_path}"
				alt="${movieInfo.poster_path}" />
		</div>
		<div class="movie_details">
			<h3>${movieInfo.name}</h3>
			<br/>
			<span class="fa fa-2x fa-star checked"></span> 
			<span class="fa fa-2x fa-star checked"></span>
			<span class="fa fa-2x fa-star checked"></span>
			<span class="fa fa-2x fa-star"></span> 
			<span class="fa fa-2x fa-star"></span>

			<p>Age Limit: ${movieInfo.adult}</p>
			<p>Genre: ${movieInfo.type}</p>
			<p>Budget: ${movieInfo.budget}</p>
			<p>
				Website: <a href="${movieInfo.homepage}" target="_blank">${movieInfo.homepage}</a>
			</p>
		</div>
	</div>

	<div class="row my-3">
		<div class="col-12">
			<h3>Plot Summary</h3>
			<p>${movieInfo.overview}</p>
		</div>

	</div>

	<div class="row my-5">
		<div class="col-12">
			<video
				src="${pageContext.request.contextPath}/resources/videos/${movieInfo.trailer}"
				width="100%" controls></video>
		</div>
	</div>
</div>

<%@include file="common/footer.jsp"%>