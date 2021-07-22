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

		<h1 class="cover-heading">About Us</h1>
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
						<li><a href="home" class="nav-link px-2 text-secondary">Home</a></li>
						<li><a href="sell" class="nav-link px-2 text-white">Sell</a></li>
						<li><a href="sell" class="nav-link px-2 text-white">Records</a></li>
						<li><a href="about-us" class="nav-link px-2 text-white">About</a></li>
					</ul>

					<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
						<input type="search" class="form-control form-control-dark"
							placeholder="Search..." aria-label="Search">
					</form>

					<div class="text-end">

						<a href="login" class="btn btn-outline-light me-2">Login</a> 
						<a	href="sign-up" class="btn btn-warning">Sign-up</a>
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

		<section class="py-5 text-center container">
			<div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light">Welcome to Car D's Place</h1>
					<p class="lead text-muted">We are home to the most beautiful,
						the most fabulous, the... least appealing cars you can find on
						market. We hope you love our selection of ugly cars.</p>
				</div>
			</div>
		</section>

	</main>


	<script src="/docs/5.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
</body>
</html>