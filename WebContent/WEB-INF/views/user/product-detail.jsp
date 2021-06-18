<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<c:url value="/CODE/Resource" var="url"></c:url>
<meta charset="UTF-8">
<title>Chi tiết SP</title>
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
<link rel="stylesheet"
	href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
<link rel="stylesheet"
	href="${url}/plugins/master-slider/quick-start/masterslider/style/masterslider.css">
<link rel='stylesheet'
	href="${url}/plugins/master-slider/quick-start/masterslider/skins/default/style.css">

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

		<!--=== Shop Product ===-->
		<div class="shop-product">
			<!-- Breadcrumbs v5 -->
			<div class="container">
				<ul class="breadcrumb-v5">
					<li><a href="user/index.htm"><i class="fa fa-home"></i></a></li>
					<li><a href="user/product-gird.htm">Sản phẩm</a></li>
					<li class="active">Chi tiết</li>
				</ul>
			</div>
			<!-- End Breadcrumbs v5 -->

			<div class="container">
				<div class="row">
					<div class="col-md-6 md-margin-bottom-50">
						<div class="ms-showcase2-template">
							<!-- Master Slider -->
							<div class="master-slider ms-skin-default" id="masterslider">
								<div class="ms-slide">
									<c:url value="/CODE/Resource/img/Products/${product.image }" var="imgUrl"></c:url>
									<img class="ms-brd" src="${url}/img/blank.gif"
										data-src="${imgUrl}" alt="${product.name }">

								</div>


							</div>
							<!-- End Master Slider -->
						</div>
					</div>

					<div class="col-md-6">
						<div class="shop-product-heading">
							<h2>${product.name }</h2>
						</div>
						<!--/end shop product social-->

						
						${product.des } <br>
						<ul class="list-inline shop-product-prices margin-bottom-30">
							<li class="shop-red"><f:formatNumber value="${product.price }"/> đ</li>
						</ul>
						<p class="wishlist-category">
							<strong>Loại:</strong> <a href="#">${product.category.name }</a>
						</p>

						<h3 class="shop-product-title">Số lượng</h3>
						<div class="margin-bottom-40">

							<form name="f1" class="product-quantity sm-margin-bottom-20"
								method="get" action="user/cart/add.htm">
								<input type="text" value="${product.id }" name="pId" hidden="">
								<button type='button' class="quantity-button" name='subtract'
									onclick='javascript: subtractQty();' value='-'>-</button>
								<input type='text' class="quantity-field" name='quantity'
									value="1" id='qty' />
								<button type='button' class="quantity-button" name='add'
									onclick='javascript: document.getElementById("qty").value++;'
									value='+'>+</button>
								<button type="submit" class="btn-u btn-u-sea-shop btn-u-lg">Thêm vào giỏ</button>
							</form>


						</div>
						<!--/end product quantity-->

						
					</div>
				</div>
				<!--/end row-->
			</div>
		</div>
		<!--=== End Shop Product ===-->

		<!--=== Content Medium ===-->
		<div class="content-md container">
			<!--=== Product Service ===-->
			<div class="row margin-bottom-60">
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="fa fa-truck"></i>
					</div>
					<div class="product-service-in">
						<h3>Free Delivery</h3>
						<p>Integer mattis lacinia felis vel molestie. Ut eu euismod
							erat, tincidunt pulvinar semper veliUt porta, leo...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-4 product-service md-margin-bottom-30">
					<div class="product-service-heading">
						<i class="icon-earphones-alt"></i>
					</div>
					<div class="product-service-in">
						<h3>Customer Service</h3>
						<p>Integer mattis lacinia felis vel molestie. Ut eu euismod
							erat, tincidunt pulvinar semper veliUt porta, leo...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
				<div class="col-md-4 product-service">
					<div class="product-service-heading">
						<i class="icon-refresh"></i>
					</div>
					<div class="product-service-in">
						<h3>Free Returns</h3>
						<p>Integer mattis lacinia felis vel molestie. Ut eu euismod
							erat, tincidunt pulvinar semper veliUt porta, leo...</p>
						<a href="#">+Read More</a>
					</div>
				</div>
			</div>
			<!--/end row-->
			<!--=== End Product Service ===-->

			
				</div>
			</div>
		</div>
		<!--/end container-->
		<!--=== End Content Medium ===-->

		

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
	<script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	<script
		src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<!-- Master Slider -->
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/masterslider.min.js"></script>
	<script
		src="${url}/plugins/master-slider/quick-start/masterslider/jquery.easing.min.js"></script>
	<!-- JS Customization -->
	<script src="${url}/js/custom.js"></script>
	<!-- JS Page Level -->
	<script src="${url}/js/shop.app.js"></script>
	<script src="${url}/js/plugins/owl-carousel.js"></script>
	<script src="${url}/js/plugins/master-slider.js"></script>
	<script src="${url}/js/forms/product-quantity.js"></script>
	<script>
		jQuery(document).ready(function() {
			App.init();
			App.initScrollBar();
			OwlCarousel.initOwlCarousel();
			MasterSliderShowcase2.initMasterSliderShowcase2();
		});
	</script>

	<!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->

</body>
</body>
</html>