<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/link.jsp"%>
<%@include file="common/header2.jsp"%>

<div class="container-fluid user-register">
	<form:form class="form-input" action="/demo/registerUser"
		method="post" modelAttribute="user">
		<div class="row">
			<div class="col-md-12 ">
				<h3>Register Now !</h3>
			</div>
			<div class="col-md-12 ">
				<c:if test="${enterInfo!=null}">
					<h4 style="color: red;">${enterInfo}</h4>
				</c:if>
			</div>
			<div class="col-md-12 ">
				<form:input type="text" path="name" id="userName" name="userName"
					class="contactus" placeholder="User Name" />
			</div>
			<div class="col-md-12 ">
				<form:input path="gmail" type="email" name="userMail" id="userMail"
					class="contactus" placeholder="E-mail" />
			</div>
			<div class="col-md-12 ">
				<form:input path="password" type="password" name="userPassword"
					id="userPassword" class="contactus" placeholder="Password" />
			</div>
			<div class="col-md-12">
				<button class="send_btn">Sign Up</button>
			</div>
		</div>
	</form:form>
</div>

<%@include file="common/footer.jsp"%>