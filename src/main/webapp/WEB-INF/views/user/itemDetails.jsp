<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>item</title>
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
	     			<!-- item -->
	     			<!-- <div class="col-md-12 item align-items-center justify-content-center"> -->
	     			
	       			<div class="col-md-3 img-item">
						<img class="thumbnail-img" src="/image/giftitem02/image09.png">
					</div>
					
					<div class="col-md-3 content">
						<h1><b>까사맘 멀티 다지기 2.5L</b></h1>
						<h1><b>39,000원</b></h1>
						<h4>재고 수 : 3,000 개</h4>
						
						<p class="cartStock">
						 <span>구입 수량</span>
						 <button type="button" class="plus">+</button>
						 <input type="number" class="numBox" min="1" max="100" value="1" readonly="readonly"/>
						 <button type="button" class="minus">-</button>
						</p>
						
						<a href="#" class="btn btn-info"> 상품 문의 &raquo;</a>
						<!-- <a href="./cart" class="btn btn-secondary">장바구니 &raquo;</a> -->
					</div>
	       			<!-- detail info -->
					<div class="col-md-12">	
						<ul class="nav nav-tabs nav-justified">
							<li class="active nav-item">
			                	<a class="nav-link" href="#itemInfo" data-toggle="tab">상세보기</a>
			                </li>        
			              	<li class="nav-item">            
			                 	<a class="nav-link" href="#sellerInfo" data-toggle="tab">업체정보</a>        
			              	</li>    
			                <li class="nav-item">            
			                 	<a class="nav-link" href="#FAQ" data-toggle="tab">FAQ</a>        
			              	</li>    
						</ul>
					</div>
		           	
		           	<div class="tab-content">
			           	<div class="tab-pane in active" id="itemInfo">
			       			<!-- video  & contents-->
							<div class="col-md-12 video-item">
								<!-- 16:9 aspect ratio -->
								<div class="embed-responsive embed-responsive-16by9 thumbnail-video">
								  <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/9Sg91SXUaMs"></iframe>
								</div>
							</div>
			       		
			        		<div class="col-md-12">
			   	    			<img class="img-fluid" src="https://www.secretsale.co.kr/upfiles/product/468855583.jpg">
			        			<h1>까사맘 멀티 다지기 CM-MCP337</h1>
			        		</div>
			        		<div class="col-md-12">
			   	    			<img class="img-fluid" src="http://img.danawa.com/prod_img/500000/846/461/img/15461846_1.jpg?shrink=500:500&_v=20211019100938">
			        			<h1>2.5L 대용량 용기</h1>
			        			<h3>많은 양을 한번에 다질 수 있는 2.5L  대용량 용기로 번거롭게 여러번 작동할 필요없이 많은 양도 빠르고 간편하게 한번에 다지세요.</h3>
			        		</div>
			        		<div class="col-md-12">
			   	    			<img class="img-fluid" src="http://thumbnail.10x10.co.kr/webimage/image/add1/415/A004151761_01.jpg?cmd=thumb&w=400&h=400&fit=true&ws=false">
								<h3>쉽고 간편한 사용</h3>
								<h1>원터치 순간 작동</h1>
								<h3>복잡한 작동방식이 아닌 원터치로 순간 작동하는 방식으로 쉽고 간편하게 식재료를 다질 수 있습니다.</h3>
			        		</div>
			        	</div>
			        	
				       	<!-- <div class="col-md-12">
					    	<hr width = "90%">
				       	</div> -->
				       		
				       	<div class="tab-pane" id="sellerInfo">
				       		<!-- seller info -->
				       		<div class="col-md-12">
					       		<div class="sellerInfo">
							        <table class="table">
							       		<h1 class="tTitle">판매 업체 정보</h1>
										<tbody>
											<tr>
												<td class="col-md-2 tHeder">업체명</td>
												<td class="col-md-10 tBody">주식회사 사은품업체01</td>
											</tr>
											<tr>
												<td class="col-md-2 tHeder">대표자</td>
												<td class="col-md-10 tBody">김이박</td>
												
											</tr>
											<tr>
												<td class="col-md-2 tHeder">사업자등록번호</td>
												<td class="col-md-10 tBody">210-17-1234</td>
											</tr>
											<tr>
												<td class="col-md-2 tHeder">통신판매업신고</td>
												<td class="col-md-10 tBody">2022-성남분당-0032</td>
											</tr>
											<tr>
												<td class="col-md-2 tHeder">연락처</td>
												<td class="col-md-10 tBody">031-123-4567</td>
											</tr>
											<tr>
												<td class="col-md-2 tHeder">E-mail</td>
												<td class="col-md-10 tBody">이상주1234@gmail.com</td>
											</tr>
											<tr>
												<td class="col-md-2 tHeder">사업장소재지</td>
												<td class="col-md-10 tBody">경기도 성남시 창업로 42 판교제2테크노밸리 경기기업성장센터 316호</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- 
				        <div class="col-md-12">
					        <hr width = "90%">
				        </div> -->
				        <div class="tab-pane" id="FAQ">
					        
					        <!-- FAQ -->
					        <div class="col-md-12">
						        
								<div id="FAQ" class="accordion">
									<h1 class="aTitle">FAQ</h1>
									<h3 class="accordion-toggle">당일 배송 가능한가요?</h3>
									<div class="accordion-content">
										<h5>
											오후 2시 30분 입금완료건까지 당일 발송 처리됩니다.
											일부 입고지연의 상품의 경우 배송이 지연될 수 있는 점 양해부탁드립니다.
										</h5>
									</div>
									
									<h3 class="accordion-toggle">교환 및 환불 가능한가요?</h3>
									<div class="accordion-content">
											<h5>반품 및 교환은 상품 수령 후 7일 이내에 신청하실 수 있습니다.</h5>
											<h5>재화 등의 내용이 표시, 광고의 내용과 다르거나 계약내용과 다르게 이행된 경우에는 전자상거래법 제17조3항에 따라 청약철회를 할 수 있습니다.</h5>
											<h5>교환/환불이 발생하는 경우 그 원인을 제공한 자가 배송비를 부담합니다.</h5>
											<h5>- 고객변심 : 최초 배송비 + 반품 배송비 + (교환의 경우) 교환 배송비는 고객이 부담</h5>
											<h5>- 판매자귀책 : 최초 배송비 + 반품 배송비 + (교환의 경우) 교환 배송비는 판매자가 부담</h5>
											<h5>다음의 경우는 교환 및 환불이 불가능합니다.</h5>
											<h5>- 반품/교환 가능 기간을 초과한 경우</h5>
											<h5>- 상품 및 구성품을 분실하였거나 취급부주의로 인한 오염/파손/고장된 경우</h5>
											<h5>- 상품을 착용하였거나 세탁, 수선한 경우</h5>
											<h5>- 소비자 과실로 인한 옷의 변색(예 : 착생, 화장품 오염 등)</h5>
											<h5>- 착용으로 인한 니트류 상품의 늘어남 발생 및 가죽 제품의 주름 발생</h5>
											<h5>- 명품은 택 제거 후 반품 불가</h5>
											<h5>- 상품의 가치가 현저히 감소하여 재판매가 불가할 경우</h5>
											<h5>- 구매확정된 주문의 경우</h5>
											<h5>- 귀금속류의 경우는 소비자분쟁해결 기준에 의거 교환만 가능합니다.</h5>
											<h5>(단, 함량미달의 경우에는 환불이 가능함)</h5>
											<h5>사이즈 교환이나 모델교환의 경우 왕복배송비 5,000원이 부과됩니다</h5>
											<h5>불량이나 오배송의 경우 무료 교환 및 반품이 가능합니다</h5>
											<h5>착용시 교환 및 반품이 불가하오니 착용 전이나 세탁전에 확인 바랍니다</h5>
									</div>
									
									<h3 class="accordion-toggle">환불은 언제 되나요?</h3>
									<div class="accordion-content">
										<div>
											<h5>[주문취소]</h5>
											<h5>주문 취소 완료일로부터 아래와 같이 소요됩니다.</h5>
											
											
											
											<h5>[환불완료]</h5>
											
											<h5>스토어측에서 반품 상품 입고/검수 후 업체 측으로 [환불승인]이 접수되는 날로부터 아래와 같이 소요됩니다.</h5>
											
											
											
											<h5>※결제수단 별 환불 소요기간 </h5>
											
											<h5>- 계좌를 통한 환급 : 환불 승인 또는 주문 취소 처리 완료일로부터 영업일 기준 1~2일</h5>
											
											<h5>- 카드 취소를 통한 환급 : 환불 승인 또는 주문 취소 처리 완료일로부터 영업일 기준 1~4일 (카드사별 상이)</h5>
											
											<h5>- 핸드폰 결제 취소를 통한 환급 : 핸드폰 결제 즉시 취소(전월 결제 시 계좌 환급 진행되며 환급 기간은 계좌를 통한 환급과 동일)</h5>
											
											<h5>- 카카오페이/네이버페이/토스 : 환불승인 또는 주문취소 처리 완료일로부터 영업일 기준 1~3일 소요</h5>
										</div>
									</div>
									<h3 class="accordion-toggle">현금영수증 발급은 어떻게 하나요?</h3>
									<div class="accordion-content">
										<div>
											<h5>현금 영수증은 결제하기 단계에서 신청 가능합니다.</h5>
					
											<h5>[현금 영수증 신청 방법]</h5>
											
											<h5>1) 결제하기 단계에서 현금 영수증 발행 가능한 결제수단 선택 ( 무통장입금 )</h5>
											
											<h5>2) [현금 영수증 발행 여부]에서 소득공제용, 지출증빙용 선택</h5>
											
											<h5>3) 번호 입력 후 주문</h5>
											
											
											
											<p>※ 주문 후 신청을 원할 경우 [구매자 성함/연락처/상품명/상품 금액/이메일]과 함께 고객센터 또는 카카오채널로 문의 바랍니다.</p>
										</div>
									</div>
								</div>
							</div>
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
		
	        
	<script>
		$(document).ready(function() {
			$('.accordion').find('.accordion-toggle').click(function() {
				$(this).next().slideToggle('600');
				$(".accordion-content").not($(this).next()).slideUp('600');
			});
			$('.accordion-toggle').on('click', function() {
				$(this).toggleClass('active').siblings().removeClass('active');
			});
		});
	</script>
	<script>
		$(".plus").click(function(){
		 var num = $(".numBox").val();
		 var plusNum = Number(num) + 1;
		 
		 // 재고수 제한
		 if(plusNum >= 100) {
		  $(".numBox").val(num);
		 } else {
		  $(".numBox").val(plusNum);          
		 }
		});
		
		$(".minus").click(function(){
		 var num = $(".numBox").val();
		 var minusNum = Number(num) - 1;
		 
		 if(minusNum <= 0) {
		  $(".numBox").val(num);
		 } else {
		  $(".numBox").val(minusNum);          
		 }
		});
	</script>
    </body>
</html>
