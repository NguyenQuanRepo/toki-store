<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/CODE/ResourceAD" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Thêm ND</title>
<base href="${pageContext.servletContext.contextPath}/">
<!-- BOOTSTRAP STYLES-->
<link href="${url}/css/bootstrap.css" rel="stylesheet" />
<!-- FONTAWESOME STYLES-->
<link href="${url}/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLES-->
<link href="${url}/css/custom.css" rel="stylesheet" />
<!-- GOOGLE FONTS-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
</head>
<body>
	<div id="wrapper">
		<jsp:include page="nav-bar.jsp"></jsp:include>
		<!-- /. NAV TOP  -->
		<jsp:include page="slide-bar.jsp"></jsp:include>
		<!-- /. NAV SIDE  -->
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Thêm người dùng</h2>
						<h5>Bạn có thể thêm người dùng mới tại đây</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Thêm người dùng</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<h3>Thông tin người dùng:</h3>
										<h4 style = "color: red">${mess }</h4>
									<form:form  action="admin/add-user.htm" modelAttribute="user" >
											<div class="form-group">
												<label>Tên người dùng:</label> <form:input class="form-control"
													placeholder="Hãy nhập tên người dùng" path="username"  />
											</div>
											<div class="form-group">
												<label>Mật khẩu:</label> <form:input class="form-control"
													placeholder="Hãy nhập mật khẩu"  path="password" type="password" />
											</div>
											<div class="form-group">
												<label>Email:</label> <form:input class="form-control"
													placeholder="Hãy nhập email" path="email" />
											</div>
											<div class="form-group">
												<label>Quyền</label>
												<div class="checkbox">
													<label> <form:radiobutton value="1" path="roleId"/>Admin
													</label>
													<br>
													<label> <form:radiobutton value="2" path="roleId" />Client
													</label>	
												</div>
											</div>
											<button type="submit" class="btn btn-default">Thêm</a></button>
											<button type="reset" class="btn btn-primary">Hủy</button>
										</form:form>
									</div>
								</div>
							</div>
						</div>
						<!-- End Form Elements -->
					</div>
				</div>
				<!-- /. ROW  -->
				<div class="row">
					<div class="col-md-12"></div>
				</div>
				<!-- /. ROW  -->
			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
	<!-- /. WRAPPER  -->
	<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
	<!-- JQUERY SCRIPTS -->
	<script src="${url}/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS -->
	<script src="${url}/js/bootstrap.min.js"></script>
	<!-- METISMENU SCRIPTS -->
	<script src="${url}/js/jquery.metisMenu.js"></script>
	<!-- CUSTOM SCRIPTS -->
	<script src="${url}/js/custom.js"></script>

</body>
</html>