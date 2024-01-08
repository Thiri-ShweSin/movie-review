<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@include file="common/link.jsp"%>
<%@include file="common/admin_header.jsp"%>

<main class="page-content">
	<h3>Admin Dashboard</h3>
	<div class="details text-light my-3">
		<div class="row justify-content-center">
			<div class="info col border rounded m-2 py-3">
				<i class="fa-solid fa-clapperboard fa-2x"></i>
				<p>Movies</p>
				<p>Total ${fn:length(movies)} Movies</p>
			</div>
			<div class="info col border rounded m-2 py-3">
				<i class="fa-solid fa-user-group fa-2x"></i>
				<p>Users</p>
				<p>Total ${fn:length(users)} Users</p>
			</div>
		</div>
	</div>

	<div class="ourServices">
		<div class="row my-3">
			<div class="col mb-3">
				<i class="fa-solid fa-shield-heart"></i>
				<h5>Safe to Use</h5>
				<p>Pretium sed praesent non bibendum pellentesque placerat ac
					tortor, etiam dui commodo enim nisi, massa</p>
			</div>
			<div class="col mb-3">
				<i class="fa-solid fa-user-group"></i>
				<h5>User Friendly</h5>
				<p>Pretium sed praesent non bibendum pellentesque placerat ac
					tortor, etiam dui commodo enim nisi, massa</p>
			</div>
			<div class="col mb-3">
				<i class="fa-solid fa-magnifying-glass"></i>
				<h5>SEO Optimized</h5>
				<p>Pretium sed praesent non bibendum pellentesque placerat ac
					tortor, etiam dui commodo enim nisi, massa</p>
			</div>
		</div>
		<div class="row my-3">
			<div class="col mb-3">
				<i class="fa-solid fa-chart-line"></i>
				<h5>Built for Growth</h5>
				<p>Pretium sed praesent non bibendum pellentesque placerat ac
					tortor, etiam dui commodo enim nisi, massa</p>
			</div>
			<div class="col mb-3">
				<i class="fa-solid fa-mobile-screen"></i>
				<h5>Ready for Mobile</h5>
				<p>Pretium sed praesent non bibendum pellentesque placerat ac
					tortor, etiam dui commodo enim nisi, massa</p>
			</div>
			<div class="col mb-3">
				<i class="fa-solid fa-house-chimney"></i>
				<h5>Feels like you</h5>
				<p>Pretium sed praesent non bibendum pellentesque placerat ac
					tortor, etiam dui commodo enim nisi, massa</p>
			</div>
		</div>
	</div> -->
</main>

<%@include file="common/admin_footer.jsp"%>
