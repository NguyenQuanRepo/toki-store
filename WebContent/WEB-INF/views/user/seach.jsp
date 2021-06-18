<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="col-md-3 filter-by-block md-margin-bottom-60">
					<h1>Tìm kiếm</h1>
					<div class="panel-group" id="accordion">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne"> Tên <i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseOne" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
									
									
										<form action="user/product-seach-by-name.htm" >
											<input type="text" name="name" />
											<input type="submit" value="Tìm" >
										</form>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->

					<div class="panel-group" id="accordion-v2">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title">
									<a data-toggle="collapse" data-parent="#accordion-v2"
										href="#collapseTwo"> Loại <i
										class="fa fa-angle-down"></i>
									</a>
								</h2>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse in">
								<div class="panel-body">
									<ul class="list-unstyled checkbox-list">
										<a href="user/productSeachByCategory/1.htm" > BÁNH GẠO</a>
										<br>
										<a href="user/productSeachByCategory/2.htm" > CHẢ CÁ HÀN QUỐC</a>
										<br>
										<a href="user/productSeachByCategory/3.htm" > MÌ HÀN QUỐC</a>
										<br>
										<a href="user/productSeachByCategory/4.htm" > SỐT & GIA VỊ</a>
										<br>
										<a href="user/productSeachByCategory/5.htm" > PHÔ MAI</a>
										<br>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--/end panel group-->
				</div>