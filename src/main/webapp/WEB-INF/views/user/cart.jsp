<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>cart</title>
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
		       		<!-- cart table -->
		       		<div class="col-md-12">
			       		<div style="overflow-x:auto;">
					        <table class="table cartTable">
					       		<h1 class="tTitle">장바구니</h1>
					       		<thead>
					       			<tr>
					       				<th class="col-md-1"><input type="checkbox" name="chk_info" value=""></th>
										<th class="col-md-3 textCenter">상품명</th>
										<th class="col-md-2 textCenter">판매가</th>
										<th class="col-md-2 textCenter">수량</th>
										<th class="col-md-2 textCenter">주문금액</th>
										<th class="col-md-2 textCenter">삭제</th>
									</tr>
					       		</thead>
					       		
								<tbody>
									<tr>
										<td><input type="checkbox" name="chk_info" value=""></td>
										<td>
											<div class="item-img">
												<img class="cart-img" src="/image/giftitem02/image09.png">
											</div>
											<div class="articleInfo connectInfo">
												<h4>까마맘 멀티 다지기 2L</h4>
												<h5>상품 코드: CM-MCP337</h5>
												<h5>수량: 300개</h5>
											</div>
										</td>
										<td class="textCenter">39,000원</td>
										<td class="textCenter">
										<p class="cartStock">
										 <button type="button" class="plus" id="plus01">+</button>
										 <input type="number" class="numBox01" min="1" max="100" value="1" readonly="readonly"/>
										 <button type="button" class="minus">-</button>
										</p>
										</td>
										<td class="textCenter">1,000,000,000원</td>
										<td class="textCenter"><button>삭제</button></td>
									</tr>
									
									
									<tr>
										<td><input type="checkbox" name="chk_info" value=""></td>
										<td>
											<div class="item-img">
												<img class="cart-img" src="/image/giftitem02/image08.png">
											</div>
											<div class="articleInfo connectInfo">
												<h4>까마맘 멀티 다지기 2L</h4>
												<h5>상품 코드: CM-MCP337</h5>
												<h5>수량: 300개</h5>
											</div>
										</td>
										<td class="textCenter">39,000원</td>
										<td class="textCenter">
										<p class="cartStock">
										 <button type="button" class="plus" id="plus02">+</button>
										 <input type="number" class="numBox02" min="1" max="100" value="1" readonly="readonly"/>
										 <button type="button" class="minus">-</button>
										</p>
										</td>
										<td class="textCenter">1,000,000,000원</td>
										<td class="textCenter"><button>삭제</button></td>
									</tr>
									
									<tr>
										<td><input type="checkbox" name="chk_info" value=""></td>
										<td>
											<div class="item-img">
												<img class="cart-img" src="/image/giftitem02/image06.png">
											</div>
											<div class="articleInfo connectInfo">
												<h4>까마맘 멀티 다지기 2L</h4>
												<h5>상품 코드: CM-MCP337</h5>
												<h5>수량: 300개</h5>
											</div>
										</td>
										<td class="textCenter">39,000원</td>
										<td class="textCenter">
										<p class="cartStock">
										 <button type="button" class="plus" id="plus03">+</button>
										 <input type="number" class="numBox03" min="1" max="100" value="1" readonly="readonly"/>
										 <button type="button" class="minus">-</button>
										</p>
										</td>
										<td class="textCenter">1,000,000,000원</td>
										<td class="textCenter"><button>삭제</button></td>
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>
					
					<div class="col-md-12 totalPrice">
						<h1>총 결제금액: <b>3,000,000,000원</b></h1>
					</div>
					
					<div class="col-md-12">
						<button type="button" class="btn btn-dark btn-lg btnBlock">문의하기</button>
					</div>

				<div class="col-md-12">
			        <hr>
				</div>
				<!-- Footer-->
				<div class="col-md-12">
			        <jsp:include page="../common/footer.jsp"/>
				</div>
			</div>
		</div>
	</section>
		
	 <script>
		$("#plus01").click(function(){
		 var num = $(".numBox01").val();
		 var plusNum = Number(num) + 1;
		 
		 // 재고수 제한
		 if(plusNum >= 100) {
		  $(".numBox01").val(num);
		 } else {
		  $(".numBox01").val(plusNum);          
		 }
		});
		
		$(".minus").click(function(){
		 var num = $(".numBox01").val();
		 var minusNum = Number(num) - 1;
		 
		 if(minusNum <= 0) {
		  $(".numBox01").val(num);
		 } else {
		  $(".numBox01").val(minusNum);          
		 }
		});
	</script>
	<script>
		$("#plus02").click(function(){
		 var num = $(".numBox02").val();
		 var plusNum = Number(num) + 1;
		 
		 // 재고수 제한
		 if(plusNum >= 100) {
		  $(".numBox02").val(num);
		 } else {
		  $(".numBox02").val(plusNum);          
		 }
		});
		
		$(".minus").click(function(){
		 var num = $(".numBox02").val();
		 var minusNum = Number(num) - 1;
		 
		 if(minusNum <= 0) {
		  $(".numBox02").val(num);
		 } else {
		  $(".numBox02").val(minusNum);          
		 }
		});
	</script>  
	<script>
		$("#plus03").click(function(){
		 var num = $(".numBox03").val();
		 var plusNum = Number(num) + 1;
		 
		 // 재고수 제한
		 if(plusNum >= 100) {
		  $(".numBox03").val(num);
		 } else {
		  $(".numBox03").val(plusNum);          
		 }
		});
		
		$(".minus").click(function(){
		 var num = $(".numBox03").val();
		 var minusNum = Number(num) - 1;
		 
		 if(minusNum <= 0) {
		  $(".numBox03").val(num);
		 } else {
		  $(".numBox03").val(minusNum);          
		 }
		});
	</script>    
    </body>
</html>
