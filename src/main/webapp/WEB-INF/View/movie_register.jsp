<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="common/link.jsp"%>
<%@include file="common/admin_header.jsp"%>

<main class="page-content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form:form class="form-input" action="/demo/admin/saveMovie" method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-12 ">
							<h3>Add New Movie</h3>
						</div>
						<div class="col-md-12 ">
							<c:if test="${msg!=null}"><span style="color: red;">${msg}</span></c:if>
						</div>
						<div class="col-md-12 ">
							<label for="name">Movie Name:</label>
							<input type="text" name="name" id="name" class="contactus"/>
						</div>
						<div class="col-md-12">
							<label>Age Limit:</label>
							<div class="contactus">
							<input type="radio" name="adult" id="18-" class="" value="18-"/>
							<label for="18-">Under 18</label>
							<input type="radio" name="adult" id="18+" class="" value="18+"/>
							<label for="18+">18+</label>
							</div>
						</div>
						<div class="col-md-12">
							<label for="poster_path">Poster:</label>
							<input type="file" name="poster_path" id="poster_path" class="contactus"/>
						</div>
						<div class="col-md-12 ">
							<label for="budget">Budget:</label>
							<input type="text" name="budget" id="budget" class="contactus"/>
						</div>
						<div class="col-md-12 ">
							<label for="homepage">Website:</label>
							<input type="text" name="homepage" id="homepage" class="contactus"/>
						</div>
						<div class="col-md-12">
							<label for="trailer">Trailer:</label>
							<input type="file" name="trailer" id="trailer" class="contactus"/>
						</div>
						<div class="col-md-12">
							<label for="overview">Overview:</label>
							<textarea name="overview" id="overview" class="contactus" rows="10" cols="50"></textarea>
						</div>
						<div class="col-md-12 ">
							<label for="type">Genre:</label>
							<input type="text" name="type" id="type" class="contactus"/>
						</div>
						<div class="col-md-12">
							<button class="send_btn">Add</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</main>

<%@include file="common/admin_footer.jsp"%>