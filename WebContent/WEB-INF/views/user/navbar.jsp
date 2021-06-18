<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <c:url value="/CODE/Resource" var="url"></c:url>
<base href="${pageContext.servletContext.contextPath}/">  
 <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath }/user/index.htm">
                        <img id="logo-header" src="${url}/img/TKLogo.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Shopping Cart -->
                   <jsp:include page="cart.jsp"></jsp:include>
                    <!-- End Shopping Cart -->

                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active"><a href="${pageContext.request.contextPath }/user/index.htm">Trang chủ</a></li>
                        <!-- End Pages -->

                        <!-- Books -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Sản phẩm
                            </a>
                            <ul class="dropdown-menu">
                            <li><a href="user/product-gird.htm" > TẤT CẢ SẢN PHẨM</a></li>
                                <li><a href="user/productSeachByCategory/1.htm" > BÁNH GẠO</a></li>
                                <li><a href="user/productSeachByCategory/2.htm" > CHẢ CÁ HÀN QUỐC</a></li>
								<li><a href="user/productSeachByCategory/3.htm" > MÌ HÀN QUỐC</a></li>
								<li><a href="user/productSeachByCategory/4.htm" > SỐT & GIA VỊ</a></li>
								<li><a href="user/productSeachByCategory/5.htm" > PHÔ MAI</a></li>
                            </ul>
                        </li>
                        <!-- End Books -->


                      	<!-- Contact -->
                        <li><a href="user/contact.htm">liên hệ</a></li>
                        <!-- Contact -->
                        
                   		<!-- About us -->
                        <li><a href="user/aboutUs.htm">về chúng tôi</a></li>
                        <!-- About us -->
                        <!-- Login -->
						
                         <li style="line-height: 5.6; left: 15%;">
                        	<c:choose>
							<c:when test="${sessionScope.account == null}">
								
									<ul class="list-inline right-topbar pull-right">
										<li><a href="user/login.htm">Đăng nhập</a>
											| <a href="user/register.htm">Đăng ký</a></li>
									</ul>
								
							</c:when>
							<c:otherwise>
							
									<ul class="list-inline right-topbar pull-right">
										<li><a href="user/account.htm">${sessionScope.account.username}</a> | <a
											href="user/logout.htm">Đăng xuất</a></li>
									</ul>
								
							</c:otherwise>
						</c:choose>
						</li>
                        <!-- Login -->
                    </ul>
                    <!-- End Nav Menu -->                    
                </div>
            </div>    
        </div>            