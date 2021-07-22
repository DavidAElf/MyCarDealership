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
<title>Welcome to Car D's Place</title>

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

		<h1 class="cover-heading">Sign Up</h1>
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

		<form:form action="user-sell" modelAttribute="car" method="post">

			<center>
				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="inputVehicleYear">Vehicle Year</label>
						<form:input path="carYear" type="text" class="form-control"
							id="inputVehicleYear" />
					</div>
					<div class="form-group col-md-2">
						<label for="inputVehicleMake">Vehicle Make</label>
						<form:input path="carMake" type="text" class="form-control"
							id="inputVehicleMake" placeholder="Ex - Ford" />
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="inputVehicleModel">Vehicle Model</label>
						<form:input path="carModel" class="form-control"
							id="inputVehicleModel" placeholder="Ex - Fusion" />
					</div>
					<div class="form-group col-md-2">
						<label for="inputVehicleVin">VIN Number</label>
						<form:input path="carVin" type="text" class="form-control"
							id="inputVehicleVin" placeholder="Ex - 69843EJ08943T" />
					</div>
				</div>

				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="inputVehicleTrim">Vehicle Trim</label>
						<form:input path="carTrim" type="text" class="form-control"
							id="inputVehicleTrim" placeholder="Ex - SE/LE/Sport" />
					</div>
				</div>
				<div class="form-group col-md-2">
					<label for="inputVehicleMileage">Vehicle Mileage</label>
					<form:input path="carMileage" type="text" class="form-control"
						id="inputVehicleMileage" />
				</div>
				<div class="form-row">
					<div class="form-group col-md-2">
						<label for="inputVehicleDescription">Vehicle Description</label>
						<form:input path="carDescription" type="text" class="form-control"
							id="inputVehicleDescription" placeholder="Talk about me here." />
					</div>
				</div>
				<hr>
				<div>
					<button type="submit" class="btn btn-primary">Sell</button>
				</div>
			</center>
		</form:form>


	</main>

	<footer class="mastfoot mt-auto">
		<div class="inner">
			<p>
				Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>,
				by <a href="https://twitter.com/mdo">@mdo</a>.
			</p>
		</div>
	</footer>


</body>

</html>