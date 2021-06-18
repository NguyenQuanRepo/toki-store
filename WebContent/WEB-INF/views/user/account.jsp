<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<c:url value="/CODE/Resource" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Tài khoản</title>
<base href="${pageContext.servletContext.contextPath}/">
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

		<!--=== Breadcrumbs v4 ===-->
		<!-- <div class="breadcrumbs-v4">
			<div class="container">
				<h1>
					Tài khoản của bạn
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="/MYPROJECT/welcome">Trang chủ</a></li>
					<li class="active">tài khoản</li>
				</ul>
			</div>
			/end container
		</div> -->
		<!--=== End Breadcrumbs v4 ===-->
	<div class="log-reg-v3 content-md">
		<div class="container bootstrap snippet">
			<div class="row">
				<div class="col-sm-10">
				<h1>Tài khoản</h1>
				</div>
		</div>
		<div class="row">
			<div class="col-sm-3">
				<!--left col-->

					<br>
					</div>
					<!--/col-3-->
					<div class="col-sm-9">
		
						<div class="tab-content">
							<div class="tab-pane active" id="home">
							<form:form action="user/account.htm" method="post" modelAttribute="acc">
								<form:hidden path="roleId" value="${acc.roleId }"  />
								<form:hidden path="id" value="${acc.id }" />
							<div class="form-group">
								<div class="col-xs-6">
									<label for="first_name"><h4>Tên đăng nhập:</h4></label> <form:input
										type="text" class="form-control" path="username"
										id="first_name" value="${acc.username }"
										title="enter your first name if any."/>
								</div>
							</div>
	
							<div class="form-group">
	
								<div class="col-xs-6">
									<label for="first_name"><h4>Email:</h4></label> <form:input
										type="text" class="form-control" path="email" id="first_name"
										value="${acc.email }"
										title="enter your first name if any."/>
								</div>
							</div>
							<div class="form-group">
	
								<div class="col-xs-6">
									<label for="phone"><h4>Mật khẩu:</h4></label> <form:input
										type="password" class="form-control" path="password" id="phone"
										value="${acc.password }"
										title="enter your phone number if any."/>
								</div>
							</div>
	
	
							<div class="form-group">
								<div class="col-xs-12">
									<br>
									<button class="btn btn-lg btn-success" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Lưu
									</button>
									<button class="btn btn-lg" type="reset">
										<i class="glyphicon glyphicon-repeat"></i> Hủy
									</button>
								</div>
							</div>
						</form:form>
					</div>		
			</div>
			</div>

			<!--/tab-content-->

		</div>
		<!--/col-9-->
	</div>
		</div>
	<!--/row-->

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