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
						<li><a href="home" class="nav-link px-2 text-secondary">Home</a></li>
						<li><a href="sell" class="nav-link px-2 text-white">Sell</a></li>
						<li><a href="records" class="nav-link px-2 text-white">Records</a></li>
						<li><a href="about-us" class="nav-link px-2 text-white">About</a></li>
					</ul>

					<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
						<input type="search" class="form-control form-control-dark"
							placeholder="Search..." aria-label="Search">
					</form>

					<div class="text-end">

						<a href="login" class="btn btn-outline-light me-2">Login</a>
						<a href="sign-up" class="btn btn-warning">Sign-up</a>
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

		<form:form action="/sign-up" modelAttribute="customer" method="post">

			<center>
			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="inputFirstName">First Name</label>
					<form:input path="firstName" type="text" class="form-control"
						id="inputFirstName" placeholder="Ex - John"/>
				</div>
				<div class="form-group col-md-2">
					<label for="inputLastName">Last Name</label>
					<form:input path="lastName" type="text" class="form-control"
						id="inputLastName" placeholder="Ex - Doe"/>
				</div>
			</div>


			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="age">Age</label>
					<form:input path="age" class="form-control" id="age" placeholder="21"/>
				</div>
				<div class="form-group col-md-2">
					<label for="inputEmail4">Email</label>
					<form:input path="email" type="email" class="form-control"
						id="inputEmail4" placeholder="Ex - jdoe@email.com"/>
				</div>
			</div>

			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="inputPassword4">Password</label>
					<form:input path="password" type="password" class="form-control"
						id="inputPassword4" placeholder="Ex - Password#1234" />
				</div>
			</div>
			<div class="form-group col-md-2">
				<label for="inputAddress">Street</label>
				<form:input path="address.street" type="text" class="form-control"
					id="inputAddress" placeholder="Ex - 1234 Main St" />
			</div>
			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="inputCity">City</label>
					<form:input path="address.city" type="text" class="form-control"
						id="inputCity" placeholder="Ex - St. Louis"/>
				</div>
				<div class="form-group col-md-2">
					<label for="inputState">State</label>
					<form:select type="text" id="inputState" path="address.state" class="form-control">
						<option value="">Select From List:</option>		
						<option value=""></option>
						<option value="AL">Alabama</option>
						<option value="AK">Alaska</option>
						<option value="AZ">Arizona</option>
						<option value="AR">Arkansas</option>
						<option value="CA">California</option>
						<option value="CO">Colorado</option>
						<option value="CT">Connecticut</option>
						<option value="DE">Delaware</option>
						<option value="DC">District Of Columbia</option>
						<option value="FL">Florida</option>
						<option value="GA">Georgia</option>
						<option value="HI">Hawaii</option>
						<option value="ID">Idaho</option>
						<option value="IL">Illinois</option>
						<option value="IN">Indiana</option>
						<option value="IA">Iowa</option>
						<option value="KS">Kansas</option>
						<option value="KY">Kentucky</option>
						<option value="LA">Louisiana</option>
						<option value="ME">Maine</option>
						<option value="MD">Maryland</option>
						<option value="MA">Massachusetts</option>
						<option value="MI">Michigan</option>
						<option value="MN">Minnesota</option>
						<option value="MS">Mississippi</option>
						<option value="MO">Missouri</option>
						<option value="MT">Montana</option>
						<option value="NE">Nebraska</option>
						<option value="NV">Nevada</option>
						<option value="NH">New Hampshire</option>
						<option value="NJ">New Jersey</option>
						<option value="NM">New Mexico</option>
						<option value="NY">New York</option>
						<option value="NC">North Carolina</option>
						<option value="ND">North Dakota</option>
						<option value="OH">Ohio</option>
						<option value="OK">Oklahoma</option>
						<option value="OR">Oregon</option>
						<option value="PA">Pennsylvania</option>
						<option value="RI">Rhode Island</option>
						<option value="SC">South Carolina</option>
						<option value="SD">South Dakota</option>
						<option value="TN">Tennessee</option>
						<option value="TX">Texas</option>
						<option value="UT">Utah</option>
						<option value="VT">Vermont</option>
						<option value="VA">Virginia</option>
						<option value="WA">Washington</option>
						<option value="WV">West Virginia</option>
						<option value="WI">Wisconsin</option>
						<option value="WY">Wyoming</option>
						<option value="AS">American Samoa</option>
						<option value="GU">Guam</option>
						<option value="MP">Northern Mariana Islands</option>
						<option value="PR">Puerto Rico</option>
						<option value="UM">United States Minor Outlying Islands</option>
						<option value="VI">Virgin Islands</option>
						<option value="AA">Armed Forces Americas</option>
						<option value="AP">Armed Forces Pacific</option>
						<option value="AE">Armed Forces Others</option>
					</form:select>
				</div>
				<div class="form-group col-md-2">
					<label for="inputZip">Zip</label>
					<form:input path="address.zip" type="text" class="form-control"
						id="inputZip" placeholder="Ex - 12345"/>
				</div>
			</div>
			<hr>
			<div>
				<button type="submit" class="btn btn-primary">Sign up</button>
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