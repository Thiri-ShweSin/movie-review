<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/link.jsp"%>
<%@include file="common/admin_header.jsp"%>

<main class="page-content">
	<div class="container">
		<div class="justify-content-center">
			<h3>All Users</h3>

			<div class="search my-3">
				<input type="text" id="myInput" onkeyup='tableSearch()'
					placeholder="User Name" />
				<label for="myInput"><i class="fa fa-search text-light" aria-hidden="true"></i></label>
			</div>

			<table id="myTable" class="table table-hover">
				<thead>
					<tr>
						<th scope="col">#</th>
						<th scope="col">Name</th>
						<th scope="col">Mail</th>
						<th scope="col">Edit</th>
						<th scope="col">Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					int num = 1;
					%>
					<c:forEach items="${users}" var="user">
						<tr>
							<td><%=num++%></td>
							<td>${user.name}</td>
							<td>${user.gmail}</td>
							<td><a href="/demo/admin/updateUser/${user.user_id}">Edit</a></td>
							<td><a href="/demo/admin/deleteUser/${user.user_id}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</main>

<%@include file="common/admin_footer.jsp"%>