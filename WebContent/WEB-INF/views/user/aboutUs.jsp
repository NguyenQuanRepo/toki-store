<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<c:url value="/CODE/Resource" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Về Chúng tôi</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

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

<!-- CSS Page Style -->
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
		<div class="header-v5 header-${url}">

			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->
	
		<div class="content-md margin-bottom-30">
			<div class="container">	
				<div class="w3ls_about_grids">
					<div class="col-md-6 w3ls_about_grid_left">
						<div class="col-xs-2 w3ls_about_grid_left1">
							<span class="glyphicon glyphicon-education" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 w3ls_about_grid_left2">
							<p style = " color: #1000ff">Sinh viên thực hiện: Nguyễn Hồng Quân</p>
						</div>
						<div class="col-xs-2 w3ls_about_grid_left1">
							<span class="glyphicon glyphicon-barcode" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 w3ls_about_grid_left2">
							<p style = " color: #1000ff">Mã SV: N17DCCN138</p>
						</div>
						<div class="col-xs-2 w3ls_about_grid_left1">
							<span class="glyphicon glyphicon-barcode" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 w3ls_about_grid_left2">
							<p style = " color: #1000ff">Lớp: D17CQCP-02</p>
						</div>
						<div class="clearfix"> </div>
						<div class="col-xs-2 w3ls_about_grid_left1">
							<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						</div>
						<div class="col-xs-10 w3ls_about_grid_left2">
							<p style = " color: #1000ff">Giảng viên hướng dẫn: ThS. Huỳnh Trung Trụ</p>
						</div>
						<div class="clearfix"> </div>
						</div>
					<div class="col-md-6 w3ls_about_grid_right">
					<img src="${url}/img/aboutPtit.png" alt=" " class="img-responsive">
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>


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
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
	<script
		src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/forms/page_login.js"></script>
	<script src="${url}/js/forms/page_contact_form.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			Login.initLogin();
			App.initScrollBar();
			PageContactForm.initPageContactForm();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>