<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.84.0">
<title>Records</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/headers/">



<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/5.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.0/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.0/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.0/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.0/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>


<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
</head>
<body>

	<main>

		<h1 class="cover-heading">User List</h1>
		<header class="p-3 bg-dark text-white">
			<div class="container">
				<div
					class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
					<a href="/"
						class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
						<svg class="bi me-2" width="40" height="32" role="img"
							aria-label="Bootstrap">
							<use xlink:href="#bootstrap" /></svg>
					</a>

					<ul
						class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
						<li><a href="user-home" class="nav-link px-2 text-secondary">Home</a></li>
						<li><a href="user-sell" class="nav-link px-2 text-white">Sell</a></li>
						<li><a href="user-records" class="nav-link px-2 text-white">Records</a></li>
					</ul>

					<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
						<input type="search" class="form-control form-control-dark"
							placeholder="Search..." aria-label="Search">
					</form>

					<div class="text-end">

						<a href="logout" class="btn btn-outline-light me-2">Logout</a>
					</div>
				</div>
			</div>
		</header>

		<!-- 	<div class="b-example-divider"></div> -->

		<header>
			<div class="navbar navbar-dark bg-dark shadow-sm">
				<div class="container">
					<a href="#" class="navbar-brand d-flex align-items-center"> <svg
							xmlns="http://www.w3.org/2000/svg" width="20" height="20"
							fill="none" stroke="currentColor" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2" aria-hidden="true"
							class="me-2" viewBox="0 0 24 24"></svg>
					</a>
				</div>
			</div>
		</header>
	</main>

	<!-- slider Area Start-->
	<div class="slider-area ">
		<!-- Mobile Menu -->
		<div class="single-slider slider-height2 d-flex align-items-center"
			data-background="assets/img/hero/category.jpg">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>
								Users <i class="fa fa-users" aria-hidden="true"></i>
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- slider Area End-->

	<!--================login_part Area =================-->
	<section class="login_part section_padding ">
		<div class="container">
			<div class="row align-items-center">
				<c:choose>
					<c:when test="${not empty account}">
						<table class="table table-striped table-hover">
							<thead>
								<tr class="text-info">
									<th>#</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>Age</th>
									<th>Email</th>
									<th>Phone</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="acc" items="${account}">
									<tr>
										<td>${account.indexOf(acc)+1}.</td>
										<td>${acc.firstName}</td>
										<td>${acc.lastName}</td>
										<td>${acc.age}</td>
										<td>${acc.email}</td>
										<td><a href="edituser?email=${item.email}"
											class="text-info"><i class="fa fa-edit"></i></a> <a
											href="delete-${item.email}" class="text-danger"><i
												class="fa fa-trash"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</c:when>
					<c:otherwise>
						<h3>No Users found</h3>
					</c:otherwise>
				</c:choose>

				<!-- slider Area Start-->
				<div class="slider-area ">
					<!-- Mobile Menu -->
					<div class="single-slider slider-height2 d-flex align-items-center"
						data-background="assets/img/hero/category.jpg">
						<div class="container">
							<div class="row">
								<div class="col-xl-12">
									<div class="hero-cap text-center">
										<h2>
											Cars On Market <i class="fa fa-users" aria-hidden="true"></i>
										</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- slider Area End-->

				<!--================login_part Area =================-->
				<section class="login_part section_padding ">
					<div class="container">
						<div class="row align-items-center">

							<c:choose>
								<c:when test="${not empty sell}">
									<table class="table table-striped table-hover">
										<thead>
											<tr class="text-info">
												<th>#</th>
												<th>Year</th>
												<th>Make</th>
												<th>Model</th>
												<th>Trim</th>
												<th>Date On Market</th>
												<th>Phone</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="notSold" items="${sell}">
												<tr>
													<td>${sell.indexOf(notSold)+1}.</td>
													<td>${notSold.carYear}</td>
													<td>${notSold.carMake}</td>
													<td>${notSold.carModel}</td>
													<td>${notSold.carTrim}</td>
													<td>${notSold.dateOnMarket}</td>
													<td></td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:when>
								<c:otherwise>
									<h3>No Cars Found On Market</h3>
								</c:otherwise>
							</c:choose>
							
											<!-- slider Area Start-->
				<div class="slider-area ">
					<!-- Mobile Menu -->
					<div class="single-slider slider-height2 d-flex align-items-center"
						data-background="assets/img/hero/category.jpg">
						<div class="container">
							<div class="row">
								<div class="col-xl-12">
									<div class="hero-cap text-center">
										<h2>
											Sold Cars <i class="fa fa-users" aria-hidden="true"></i>
										</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- slider Area End-->

				<!--================login_part Area =================-->
				<section class="login_part section_padding ">
					<div class="container">
						<div class="row align-items-center">

							<c:choose>
								<c:when test="${not empty sold}">
									<table class="table table-striped table-hover">
										<thead>
											<tr class="text-info">
												<th>#</th>
												<th>Year</th>
												<th>Make</th>
												<th>Model</th>
												<th>Trim</th>
												<th>Date On Market</th>
												<th>Phone</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="carSold" items="${sold}">
												<tr>
													<td>${sold.indexOf(carSold)+1}.</td>
													<td>${carSold.carYear}</td>
													<td>${carSold.carMake}</td>
													<td>${carSold.carModel}</td>
													<td>${carSold.carTrim}</td>
													<td>${carSold.dateOnMarket}</td>
													<td></td>

												</tr>
											</c:forEach>
										</tbody>
									</table>
								</c:when>
								<c:otherwise>
									<h3>No Cars Found On Market</h3>
								</c:otherwise>
							</c:choose>

						</div>
					</div>
				</section>

				<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js"
					integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
					crossorigin="anonymous"></script>
</body>
</html>