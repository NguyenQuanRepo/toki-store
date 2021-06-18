<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<div class="header-v5 header-static">
			<!-- Navbar -->
			<jsp:include page="navbar.jsp"></jsp:include>
			<!-- End Navbar -->
		</div>
		<!--=== End Header v5 ===-->

		<!--=== Breadcrumbs v4 ===-->
		<div class="breadcrumbs-v4">
			<div class="container">
				<h1>
					Tất cả sản phẩm
				</h1>
				<ul class="breadcrumb-v4-in">
					<li><a href="user/index.htm">Trang chủ</a></li>
					<li class="active">Sản phẩm</li>
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
									href="user/product-list.htm"><i class="fa fa-th-list"></i></a>
									<a href="user/product-gird.htm"><i class="fa fa-th"></i></a>
								</li>
							</ul>
						</div>
					</div>
					<!--/end result category-->

					<div class="filter-results">
						<div class="row illustration-v2 margin-bottom-30">	
						<c:forEach items="${productList }" var="p" >						
							
							
							<div class="col-md-4">
								<c:url value="/CODE/Resource/img/Products/${p.image }" var="imgUrl"></c:url>
								<div class="product-img product-img-brd">
									<a href="user/product-detail/${p.id}.htm"><img class="full-width img-responsive"
										src="${imgUrl}" alt=""></a> 
										<a class="add-to-cart" href="user/product-detail/${p.id}.htm"><i
										class="fa fa-shopping-cart"></i>Mua ngay</a>
								</div>
								<div
									class="product-description product-description-brd margin-bottom-30">
									<div class="overflow-h margin-bottom-5">
										<div class="pull-left">
											<h4 class="title-price">
												<a href="user/product-detail/${p.id}.htm">${p.name }</a>
											</h4>
											<span class="gender text-uppercase">${p.category.name}</span>
										</div>
										<div class="product-price">
										<span class="title-price"> 
												<f:formatNumber value="${p.price }"/> đ</span>
									
										</div>
									</div>
								</div>
							</div>
							
							
							</c:forEach>
				</div>
				</div>			
					<!--/end filter resilts-->

					<div class="text-center">
						<ul class="pagination pagination-v2">
							<li class="active"><a href="#"><i class="fa fa-angle-left"></i></a></li>
							<li><a href="#">1</a></li>
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
	</div>

		<!--=== Footer v4 ===-->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--=== End Footer v4 ===-->
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