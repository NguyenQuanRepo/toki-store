<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <base href="${pageContext.servletContext.contextPath}/">
		<nav class="navbar-default navbar-side " role="navigation">
			<div class="sidebar-collapse">
				<ul class="nav" id="main-menu">
					<li><a class="active-menu" href= "admin/index.htm"><i
							class="fa fa-home fa-2x"></i> Trang chủ</a></li>
					<li><a href="admin/list-product.htm"><i class="fa fa-list fa-2x"></i>
							Sản phẩm</a></li>
					<li><a 	href="admin/list-user.htm"><i class="fa fa-users fa-2x"></i>
							Người dùng</a></li>
					<li><a href="admin/list-order.htm"><i
							class="fa fa-shopping-cart fa-2x"></i> Quản lý đặt hàng</a></li>

				</ul>
			</div>
		</nav>