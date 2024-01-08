<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="common/link.jsp"%>
<%@include file="common/admin_header.jsp"%>

<main class="page-content">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form:form class="form-input" action="/demo/admin/updateUser"
					method="post" modelAttribute="newData">
					<div class="row">
						<div class="col-md-12 ">
							<h3>Update User</h3>
						</div>
						<div class="col-md-12 ">
							<label for="userID">User ID:</label>
							<form:input path="user_id" type="text" name="userID" id="userID"
								class="contactus" value="${userdata.user_id}" readonly="true" />
						</div>
						<div class="col-md-12 ">
							<label for="userName">User Name:</label>
							<form:input path="name" type="text" name="userName" id="userName"
								class="contactus" value="${userdata.name}" readonly="true" />
						</div>
						<div class="col-md-12 ">
							<label for="userMail">User E-mail:</label>
							<form:input path="gmail" type="text" name="userMail"
								id="userMail" class="contactus" value="${userdata.gmail}"
								readonly="true" />
						</div>
						<div class="col-md-12 ">
							<label for="userStartJoinDate">User Start Join Date:</label>
							<form:input path="start_join_date" type="text"
								name="userStartJoinDate" id="userStartJoinDate"
								class="contactus" value="${userdata.start_join_date}"
								readonly="true" />
						</div>
						<div class="col-md-12 ">
							<label for="userLastJoinDate">User End Join Date:</label>
							<form:input path="last_join_date" type="text"
								name="userLastJoinDate" id="userLastJoinDate" class="contactus"
								value="${userdata.last_join_date}" readonly="true" />
						</div>
						<div class="col-md-12 ">
							<label for="userAccessCount">User Access Count:</label>
							<form:input path="access_count" type="text"
								name="userAccessCount" id="userAccessCount" class="contactus"
								value="${userdata.access_count}" readonly="true" />
						</div>
						<div class="col-md-12 ">
							<label for="userRole">User Role:</label>
							<form:select path="role" name="userRole" id="userRole"
								class="contactus">
								<c:if test="${userdata.role=='admin'}">
									<form:option value="admin">Administrator</form:option>
									<form:option value="user">User</form:option>
								</c:if>
								<c:if test="${userdata.role=='user'}">
									<form:option value="user">User</form:option>
									<form:option value="admin">Administrator</form:option>
								</c:if>
							</form:select>
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