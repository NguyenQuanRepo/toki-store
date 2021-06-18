<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/CODE/ResourceAD" var="url"></c:url>
<!DOCTYPE html>
<html>
<head>
<script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Sửa SP</title>
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
						<h2>Chỉnh sửa sản phẩm</h2>
						<h5>Bạn có thể chỉnh sửa thông tin sản phẩm tại đây</h5>
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />
				<div class="row">
					<div class="col-md-12">
						<!-- Form Elements -->
						<div class="panel panel-default">
							<div class="panel-heading">Sản phẩm</div>
							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										
										<form:form action="admin/edit-product.htm" modelAttribute="product" method="post">
											
											<form:hidden path="id" value="${product.id }" />
											<div class="form-group">
												<label>Tên SP:</label> <form:input class="form-control"
													value="${product.name }" path="name" />
											</div>
											<div class="form-group">
												<label>Giá:</label> <form:input class="form-control"
													value="${product.price }" type="number" path="price" />
											</div>
											<div class="form-group">
												<label>Mô tả: </label> <br>
												<form:textarea rows="4" cols="50" path="des" id="editer" value = "${product.des }" ></form:textarea>
											</div>

											<div class="form-group">
												<label>Loại:</label>
												<div class="checkbox">
													<form:select path="category.id"
															 items="${categories}" value = "${product.des }" itemValue="id" itemLabel="name"/>
												</div>

											</div>
											<div class="form-group">
												<label>Ảnh</label> <form:input type="file" path="image" />
											</div>
											<button type="submit" class="btn btn-default">Sửa</button>
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
<script type="text/javascript" language="javascript">
   CKEDITOR.replace('editer', {width: '700px',height: '300px'});
</script>
</body>
</html>