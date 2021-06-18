<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f" %>
<base href="${pageContext.servletContext.contextPath}/">
<ul class="list-inline shop-badge badge-lists badge-icons pull-right">
	<li><a href="user/list-cart.htm"><i class="fa fa-shopping-cart"></i></a> <c:set
			var="count" value="${0}" /> <c:forEach items="${sessionScope.cart}"
			var="map">
			<c:set var="count" value="${count + map.value.quantity}" />
		</c:forEach> <span class="badge badge-sea rounded-x">${count }</span>

		<ul class="list-unstyled badge-open mCustomScrollbar"
			data-mcs-theme="minimal-dark">
			<c:forEach items="${sessionScope.cart}" var="map">
				<li><c:url value="/CODE/Resource/img/Products/${map.value.product.image }"
						var="imgUrl"></c:url> <img src="${imgUrl}" alt="" width="10"
					height="20"> <a
					href="user/cartItem/delete/${map.value.product.id}.htm "><button
							type="button" class="close">×</button></a>
					<div class="overflow-h">
						<span>${map.value.product.name }</span> <small>${map.value.quantity }
							* <f:formatNumber value="${map.value.product.price }"/> đ </small>
					</div></li>
			</c:forEach>

			<li class="subtotal">
				<div class="overflow-h margin-bottom-10">
					<span>Tổng</span>
					<c:set var="total" value="${0}" />
					<c:forEach items="${sessionScope.cart}" var="map">
						<c:set var="total" value="${total + map.value.quantity * map.value.product.price}" />
					</c:forEach>
					<span class="pull-right subtotal-cost"><f:formatNumber value="${total }"/> đ</span>
					
				</div>
				<div class="row">
					<div class="col-xs-6">
						
					</div>
					<div class="col-xs-6">
						<a href="user/list-cart.htm"
							class="btn-u btn-brd btn-brd-hover btn-u-sea-shop btn-block">Xem giỏ hàng</a>
					</div>
				</div>
			</li>
		</ul></li>
</ul>