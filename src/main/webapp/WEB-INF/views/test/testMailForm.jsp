<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>inquiry</title>
        <script src="https://code.jquery.com/jquery-latest.min.js"></script>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/shopTemplate.css" rel="stylesheet" />
        
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

    </head>
    <body>
		<!-- Navigation-->
		<jsp:include page="../common/menu.jsp"/>
		                  
		<section class="py-5">
	         <div class="container px-4 px-lg-5 mt-5">
	       		<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 justify-content-center align-items-center">
					
					<div class="col-md-12">
						<h1 class="tTitle">상품 문의</h1>
					</div>
					<div class="col-md-12">
						<div class="contact-form form-center">
							<form method="post">
								<div class="col-md-12">
									<div class="form-group">
										<label class="label-control">상품명</label>
										<input type="text" class="form-control" id="inputEmail" name="itemName" required placeholder="까사맘 멀티 다지기 2L">
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<label class="label-control" for="inputFirstName">성함</label>
										<input type="text" class="form-control" id="inputFirstName" name="userName" required placeholder="성함">
									</div>
								</div>
								
								<div class="col-md-12">
									<div class="form-group">
										<label class="label-control" for="inputFirstName">전화번호</label>
										<input type="text" class="form-control" id="inputFirstName" name="phoneNum" required placeholder="전화번호">
									</div>
								</div>
						  
								<div class="col-md-12">
									<div class="form-group">
										<label class="label-control for="inputEmail">이메일/Email</label>
										<input type="email" class="form-control" id="inputEmail" name="email" required placeholder="이메일">
									</div>
								</div>  
								<div class="col-md-12">
									<div class="form-group">
										<label class="label-control for="inputMessage">문의 사항</label>
										<textarea class="form-control" id="inputMessage" rows="5" name="content" required placeholder="예상 주문 수량, 기업명, 기타 문의사항 등을 입력해 주세요."></textarea>
									</div>
								</div>
								<div class="col-md-12">
									<!-- <input type="submit" class="btn btn-dark btn-lg btnBlock" value="문의하기"> -->
									<button type="submit" class="btn btn-dark">문의하기</button>
								</div>
							</form>
						</div>
					</div>
				 
					<div class="col-md-12">
			       		<hr width = "100%">
		       		</div>
			        <!-- Footer-->
			        <jsp:include page="../common/footer.jsp"/>
				</div>
			</div>
		</section>

    </body>
</html>
