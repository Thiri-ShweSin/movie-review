<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="common/link.jsp"%>
<%@include file="common/admin_header.jsp"%>

<main class="page-content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form:form class="form-input" action="/demo/admin/updateMovie"
					method="post" enctype="multipart/form-data" modelAttribute="newInfo">
					<div class="row">
						<div class="col-md-12 ">
							<h3>Update Movie</h3>
						</div>
						<div class="col-md-12 ">
							<label for="id">Movie ID:</label>
							<form:input path="id" type="text" name="id" id="id"
								class="contactus" value="${movieInfo.id}" readonly="true"/>
						</div>
						<div class="col-md-12 ">
							<label for="name">Movie Name:</label>
							<form:input path="name" type="text" name="name"
								id="name" class="contactus" value="${movieInfo.name}" />
						</div>
						<div class="col-md-12 ">
							<label for="adult">Age Limit:</label>
							<div class="contactus">
								<input type="radio" name="adult" id="18-" class="" value="18-" <c:if test="${movieInfo.adult=='18-'}">checked</c:if>/>
								<label for="18-">Under 18</label>
								<input type="radio" name="adult" id="18+" class="" value="18+" <c:if test="${movieInfo.adult=='18+'}">checked</c:if>/>
								<label for="18+">18+</label>
							</div>
						</div>
						<div class="col-md-12 ">
							<label for="poster_path">Poster Path:</label><br/>
							<span>Chosen File:${movieInfo.poster_path}</span><br/>
							<form:input path="poster_path" type="file" name="poster_path"
								id="poster_path" class="contactus" />
						</div>
						<div class="col-md-12 ">
							<label for="budget">Budget:</label>
							<form:input path="budget" type="text" name="budget"
								id="budget" class="contactus" value="${movieInfo.budget}" />
						</div>
						<div class="col-md-12 ">
							<label for="homepage">Homepage:</label>
							<form:input path="homepage" type="text" name="homepage"
								id="homepage" class="contactus"
								value="${movieInfo.homepage}" />
						</div>
						<div class="col-md-12 ">
							<label for="trailer">Trailer:</label><br/>
							<span>Chosen File:${movieInfo.trailer}</span><br/>
							<form:input path="trailer" type="file" name="trailer"
								id="trailer" class="contactus" />
						</div>
						<div class="col-md-12 ">
							<label for="overview">Overview:</label>
							<textarea name="overview" id="overview" class="contactus" rows="10" cols="50">${movieInfo.overview}</textarea>
						</div>
						<div class="col-md-12 ">
							<label for="type">Genre:</label>
							<form:input path="type" type="text" name="type"
								id="type" class="contactus" value="${movieInfo.type}" />
						</div>
						<div class="col-md-12">
							<button class="send_btn">Update</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</main>

<%@include file="common/admin_footer.jsp"%>
