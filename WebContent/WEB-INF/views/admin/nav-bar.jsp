<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <base href="${pageContext.servletContext.contextPath}/">
    <li class="text-center"><img src="${url}/TokiStore/CODE/ResourceAD/img/logo1.png"
						class="user-image img-responsive" /></li>
		<nav class="navbar navbar-light" style="background-color: #576882;" role="navigation"
			style="margin-bottom: 0">
			<a class="navbar-brand" href="admin/index.htm">TOKI STORE</a>
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".sidebar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				
			</div>
			<div
				style="color: white; padding: 10px 40px 8px 50px; float: right; font-size: 16px;">
				${username } &nbsp; <a href="user/logout.htm"
					class="btn btn-danger square-btn-adjust">Đăng xuất</a>
			</div>
		</nav>
		
		