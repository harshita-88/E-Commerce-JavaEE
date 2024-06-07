<%@page import="in.harshita.model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
User auth = (User) request.getSession().getAttribute("auth");
if (auth != null) {
	response.sendRedirect("index.jsp");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	request.setAttribute("cart_list", cart_list);
}
%>
<!DOCTYPE html>
<html>
<head>
<%@include file="/includes/head.jsp"%>
<title>E-Commerce Cart</title>
<style>
.h-custom {
    height: calc(100% - 73px);
}

.wrapper {
    display: flex;
    flex-direction: column;
    min-height: 100vh;
}

.content {
    flex: 1;
}

.row.d-flex {
    display: flex;
    flex-wrap: nowrap; /* Prevent wrapping */
    justify-content: center;
}

/* Image and card should not shrink below 400px */
.col-md-9, .col-md-8 {
    min-width: 400px;
}

/* Ensure the image and card take up equal space */
.col-md-9 {
    flex: 1;
}
.col-md-8 {
    flex: 1;
}

/* Custom card styling */
.custom-card {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border: 1px solid #e3e3e3;
    border-radius: 8px;
    background-color: #f8f9fa;
}

.footer {
    background-color: #007bff;
    color: white;
}

.margin-top-40 {
    margin-top: 40px;
}

@media (max-width: 400px) {
    .row.d-flex {
        flex-direction: column;
        align-items: center;
    }
}

@media (max-width: 200px) {
    .col-md-9, .col-md-8 {
        min-width: 100%; /* Ensure columns take full width */
    }
}

</style>
</head>
<body>


	<section class="vh-100">
		<div class="container-fluid h-custom ">
			<div
				class="row d-flex justify-content-center align-items-center h-100 margin-top-40">
				<div class="col-md-9 col-lg-6 col-xl-5">
					<img
						src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
						class="img-fluid" alt="Sample image">
				</div>
				<div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
					<div class="card custom-card">

						<div class="card-body">
							<form action="user-login" method="post">
								<div
									class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
									<p class="lead fw-normal mb-0 me-3">Sign in with</p>
									<button type="button" class="btn btn-primary btn-floating mx-1">
										<i class="fab fa-facebook-f"></i>
									</button>

									<button type="button" class="btn btn-primary btn-floating mx-1">
										<i class="fab fa-twitter"></i>
									</button>

									<button type="button" class="btn btn-primary btn-floating mx-1">
										<i class="fab fa-linkedin-in"></i>
									</button>
								</div>

								<div class="divider d-flex align-items-center my-4">
									<p class="text-center fw-bold mx-3 mb-0">Or</p>
								</div>

								<div class="form-outline mb-4">
									<input type="email" id="form3Example3"
										class="form-control form-control-lg"
										placeholder="Enter a valid email address" name="login-email" />
								</div>

								<!-- Password input -->
								<div class="form-outline mb-3">
									<input type="password" id="form3Example4"
										class="form-control form-control-lg"
										placeholder="Enter password" name="login-password" />
								</div>

								<div class="d-flex justify-content-between align-items-center">
									<!-- Checkbox -->
									<div class="form-check mb-0">
										<input class="form-check-input me-2" type="checkbox" value=""
											id="form2Example3" /> <label class="form-check-label"
											for="form2Example3"> Remember me </label>
									</div>
									<a href="#!" class="text-body">Forgot password?</a>
								</div>

								<div class="text-center text-lg-start mt-4 pt-2">
									<button type="submit" class="btn btn-primary btn-lg"
										style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
									<p class="small fw-bold mt-2 pt-1 mb-0">
										Don't have an account? <a href="register.jsp"
											class="link-danger">Register</a>
									</p>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Right -->
		<div
			class="footer fixed-bottom d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
			<!-- Copyright -->
			<div class="text-white mb-3 mb-md-0">Copyright © 2024. All
				rights reserved.</div>
			<!-- Copyright -->

			<!-- Right -->
			<div>
				<a href="#!" class="text-white me-4"> <i
					class="fab fa-facebook-f"></i>
				</a> <a href="#!" class="text-white me-4"> <i class="fab fa-twitter"></i>
				</a> <a href="#!" class="text-white me-4"> <i class="fab fa-google"></i>
				</a> <a href="#!" class="text-white"> <i class="fab fa-linkedin-in"></i>
				</a>
			</div>
		</div>
	</section>

	<%@include file="/includes/footer.jsp"%>


</body>
</html>