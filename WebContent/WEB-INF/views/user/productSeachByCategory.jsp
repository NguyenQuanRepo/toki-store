<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/CODE/Resource" var="url"></c:url>
<meta charset="UTF-8">
<title>Sản phẩm</title>
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
	href="${url}/plugins/noUiSlider/jquery.nouislider.min.css">
<link rel="stylesheet"
	href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

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

		<div class="breadcrumbs-v4">
			<div class="container">
				<h1>
					Sản phẩm
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="user/index.htm">Trang chủ</a></li>
					<li class="active"><a href="user/product-list.htm">Sản phẩm</a></li>
				</ul>
			</div>
			<!--/end container-->
		</div>
		<!--=== End Breadcrumbs v4 ===-->

		<!--=== Content Part ===-->
		<div class="content container">
			<div class="row">
				<jsp:include page="seach.jsp"></jsp:include>

				<div class="col-md-9">
					<div class="row margin-bottom-5">
						<div class="col-sm-4 result-category">

						</div>
						<div class="col-sm-8">
							<ul class="list-inline clear-both">
								<li class="grid-list-icons"><a
									href="shop-ui-filter-list.html"><i class="fa fa-th-list"></i></a>
									<a href="shop-ui-filter-grid.html"><i class="fa fa-th"></i></a>
								</li>
							</ul>
						</div>
					</div>
					<!--/end result category-->
					<c:forEach items="${productSeachByCategory }" var="p" >

					<div class="filter-results">
					
						<div
							class="list-product-description product-description-brd margin-bottom-30">
							<div class="row">
							
								<div class="col-sm-4">
								<c:url value="/CODE/Resource/img/Products/${p.image }" var="imgUrl"></c:url>
									<a href="user/product-detail/${p.id}.htm"><img
										class="img-responsive sm-margin-bottom-20"
										src="${imgUrl}" alt=""></a>
								</div>
								<div class="col-sm-8 product-description">
									
									
									<div class="overflow-h margin-bottom-5">
										<ul class="list-inline overflow-h">
											<li><h4 class="title-price">
													<a href="user/product-detail/${p.id}.htm">${p.name }</a>
													
												</h4></li>
											<li><span class="gender text-uppercase">${p.category.name }</span></li>
										</ul>
										<div class="margin-bottom-10">
											<span class="title-price margin-right-10"><f:formatNumber value="${p.price }"/> đ</span>
											
										</div>
										<p class="margin-bottom-20">${p.des }</p>
										<a href="user/product-detail/${p.id}.htm" ><button type="button" class="btn-u btn-u-sea-shop">Mua ngay</button></a>
									</div>
									
									
									
								</div>								
							</div>
							
						</div>

					</div>
					</c:forEach>
					<!--/end filter resilts-->

					<div class="text-center">
						<ul class="pagination pagination-v2">
							<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
						</ul>
					</div>
					<!--/end pagination-->
				</div>
			</div>
			<!--/end row-->
		</div>
		<!--/end container-->
		<!--=== End Content Part ===-->

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
	<script src="${url}/plugins/noUiSlider/jquery.nouislider.all.min.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/mouse-wheel.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			MouseWheel.initMouseWheel();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->
	<!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>

</body>
</html>