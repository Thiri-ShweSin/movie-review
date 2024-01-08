<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/link.jsp"%>
<%@include file="common/header2.jsp"%>

<div class="container-fluid user-login">
	<form class="form-input" action="/demo/checkLogin"
		method="get">
		<div class="row">
			<div class="col-md-12 ">
				<h3>Login</h3>
			</div>
			<div class="col-md-12 ">
				<c:if test="${notMatch!=null}">
					<h4 style="color: red;">${notMatch}</h4>
				</c:if>
			</div>
			<div class="col-md-12 ">
				<input class="contactus" placeholder="Email" type="email"
					name="gmail">
			</div>
			<div class="col-md-12">
				<input class="contactus" placeholder="Password" type="password"
					name="pwd">
			</div>
			<div class="col-md-12">
				<button class="send_btn">Login</button>
			</div>
		</div>
	</form>
</div>

<%@include file="common/footer.jsp"%>
