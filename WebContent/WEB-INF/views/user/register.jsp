<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:url value="/CODE/Resource" var="url"></c:url>
<title>Đăng ký</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="${url}/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${url}/css/shop.style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="${url}/css/headers/header-v5.css">
<link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="${url}/plugins/animate.css">
<link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="${url}/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
<!-- <link rel="stylesheet" href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css"> -->
<!-- <link rel="stylesheet" href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css"> -->

<!-- CSS Page Styles -->
<link rel="stylesheet" href="${url}/css/pages/log-reg-v3.css">

<!-- Style Switcher -->
<link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

<!-- CSS Theme -->
<link rel="stylesheet" href="${url}/css/theme-colors/default.css"
	id="style_color">

<!-- CSS Customization -->
<link rel="stylesheet" href="${url}/css/custom.css">
</head>
<body>
<body class="header-fixed">
	<div class="wrapper">
		<!--=== Header v5 ===-->
		<div class="header-v5 header-static">

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<!-- <div class="breadcrumbs-v4">
			<div class="container">

				<h1>
					Đăng ký tài khoản
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="/MYPROJECT/welcome">Trang chủ</a></li>
					<li class="active">Đăng ký</li>
				</ul>
			</div>
			/end container
		</div> -->
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Registre ===-->
		<div class="log-reg-v3 content-md margin-bottom-30">
			<div class="container">
					<div class="col-md-5">
						<form:form id="sky-form4" class="log-reg-block sky-form"
							action="user/register.htm" method="post" modelAttribute="user">
							<h2>Tạo tài khoản mới</h2>
							<h3 style=" color: red; font-style: italic;">${alert}</h3>
							<h3 style=" color: red; font-style: italic;"><form:errors path = "*" element="ul" /></h3>
							<div class="login-input reg-input">
								<section>
									<label class="input"> <form:input type="text"
										path="username" placeholder="Tên đăng nhập" class="form-control"/>
									</label>
								</section>
								<section>
									<label class="input"> <form:input type="email" path="email"
										placeholder="Địa chỉ email" class="form-control"/>
									</label>
								</section>
								<section>
									<label class="input"> <form:input type="password"
										path="password" placeholder="Mật khẩu" id="password"
										class="form-control"/>
									</label>
								</section>
								<section>
									<label class="input"> <input type="password"
										name="passwordConfirm" placeholder="Xác nhận mật khẩu"
										class="form-control"/>
									</label>
								</section>
								<form:hidden path="roleId" value ="2" />
							</div>

							<button class="btn-u btn-u-sea-shop btn-block margin-bottom-20"
								type="submit">Tạo tài khoản</button>
						</form:form>

						<div class="margin-bottom-20"></div>
						<p class="text-center">
							Bạn đã có tài khoản? <a
								href="user/login.htm">Đăng nhập</a>
						</p>
					</div>
				</div>
				<!--/end row-->
			</div>
			<!--/end container-->
		</div>
		<!--=== End Registre ===-->


		<!--=== Footer v4 ===-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script src="${url}/plugins/jquery/jquery.min.js"></script>
	<script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
	<script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script src="${url}/plugins/back-to-top.js"></script>
	<script src="${url}/plugins/smoothScroll.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/forms/page_registration.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			Registration.initRegistration();
		});
	</script>

</body>

</body>
</html>