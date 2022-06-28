<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop main</title>
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
	            	<!-- <div class="text-center title-text">
			         	<h1>BEST PRODUCT</h1>
	            	</div> -->
	            		<div class="col-md-12 text-center title-text">
							<h1>BEST PRODUCT</h1>
	            		</div>
	                	<div class="col-md-4">
	                        <a href="#">
		                        <div class="bestProduct h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="/image/giftitem02/image05.png" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-4">
	                        <a href="#">
		                        <div class="bestProduct h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="/image/giftitem02/image06.png" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-4">
	                        <a href="#">
		                        <div class="bestProduct h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="/image/giftitem02/image08.png" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-12 text-center title-text">
							<h1>판매 상품</h1>
	            		</div>
						<div class="col-md-12">
							<a href="#" class="btn btn-info cg-btn-info">추천 상품</a>
							<a href="#" class="btn btn-info cg-btn-info">가전</a>
							<a href="#" class="btn btn-info cg-btn-info">주방</a>
							<a href="#" class="btn btn-info cg-btn-info">캠핑</a>
							<a href="#" class="btn btn-info cg-btn-info">기타</a>
							
						<!-- 
							<ul class="nav nav-tabs nav-justified">
								<li class="active nav-item">
				        	      	<a class="nav-link" href="#itemInfo" data-toggle="tab">추천 상품</a>
								</li>        
				            	<li class="nav-item">            
					               	<a class="nav-link" href="#sellerInfo" data-toggle="tab">가전</a>        
				            	</li>    
								<li class="nav-item">            
					               	<a class="nav-link" href="#FAQ" data-toggle="tab">주방</a>        
				            	</li>  
				            	<li class="nav-item">            
					               	<a class="nav-link" href="#FAQ" data-toggle="tab">캠핑</a>        
				            	</li>
				            	<li class="nav-item">            
					               	<a class="nav-link" href="#FAQ" data-toggle="tab">기타</a>        
				            	</li>  
							</ul> -->
						</div>
						<!-- 판매상품 -->
						<div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA2MDdfMjg2/MDAxNjU0NTY1MjU4MDg2.yyqinRpBGnHgtBf6a0-loBOS3MhBFUloiSkv-fEy6Yog.Aaf6-v2hoZgIjdu4xKqIT3bSp9yCwJMuhchmO3tIe1kg.PNG/a_07f6509679ec499ea4ac2df77b99a0ec.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjYw/MDAxNjU1MjgzNjk2Mzk3.gh8n5rs7p-pWVqzIhNh7yj_KdyjLFBeJr9QbsDumoFEg.KdvPfvgBYmjm7MKKhcbIEQIP6FGeuof_GnmcDUgrvyAg.PNG/a_baa1ccea3726495badba419dfede63f9.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjcz/MDAxNjI3NDQxMDI4OTQz.FUajQFp09YVc_uLkwLnhQslwbgiRxTm-LTxQgi5IJNcg.erY1xk-3dvoOCW8r65BCusQYco2d6ln7BSBpD2Yld9Ug.PNG/p_0ec4e132925345f48fa832f2283cf454.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA1MDNfMTUy/MDAxNjUxNTY4MDUxNzY1.w1KCMofig1opHcNEDvTeZtnbtWjDrN70lLjt2ln2VSkg.7OD_dk8FjazEsdgoHfc3PvBiHkKns3KScRRN4l-I6Q0g.PNG/a_53f2e4b2b988457c9badf087e0e8838c.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA2MTdfMTU3/MDAxNjU1NDMwNDQ3OTg3.FeGbA0OkZRREDXYT9IgO_92d4LuHTaqLC9BnC2jL1-sg.vsAZ7jB2GMKTnR0YHiuNAY5Rxfv0-qvMWmsttC-uJ2Yg.PNG/a_7849e07e041242f89f2a05510966dc11.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMDEwMjJfOCAg/MDAxNjAzMzQwOTUzNzMx.nCU7Bumo43r7JZcTRjq4blFOcj33dPIxNYW-_94RtWgg.rJwsoEL3W-f7pgpwfYISb-0HBItIWL04h7p8Ixyp8CUg.PNG/p_4cedd884b4a3427ca616bc31b3bf2867.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTEwMTRfNTIg/MDAxNjM0MjA1NzQ2NTYw.1QdEB-0rYUmxNkt8JD4XsIVknAaHUhQfM2nkMfPRw6Ig.1SUHYGfZc0S-K7_ls_OYEiWVKfeZVe6qgsuugyI2Clcg.PNG/a_39b383a25b8a4ab1aef1b18d3326f6e7.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA1MTZfMTUz/MDAxNjUyNjY4MzQ5NzQ0.KrS4BvMwL5A5VQWRpzwJQXS-6WbR7bDMHV5BcZFgkYAg.ttStdioabFKDADPv7UnFYSHKPfmC8GQkpgwQY2A0_7Ug.PNG/a_82c516ec1891448aae220b4f9eec71b1.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjAxMDZfMTE4/MDAxNjQxNDUwMTUzNDIy.N1nSV-2PiS4npiAFQParxaaA-DITGy1vPPGJshd7Rrkg.sZTvwDUSDVpn0uUeI992DwZ9FgbJzAPiglO9a8KYdGgg.PNG/a_4a82955d66cd43d4b518b614d41118b9.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA2MTdfMTEg/MDAxNjU1NDMwNDMyOTY2.UaKauqgot9I55EElvxEHCjEtFf7N8ih97P7py24vlBsg.uo_SgLdRZfzqrQaN6_n6QqEqOvgNv_6XXl5VyIJL4A8g.PNG/a_e3f187cdef894394bc2c1462c8e8c247.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTEyMjBfMTA4/MDAxNjM5OTg0MjQxMTYy.F0BGHeY9Lo5okE_K4MrvzWTvO5XQ72TPW7BDhqWZUHUg.0lz1wS4mL94VUWaFzY9RIoiHuARng_qo5Ss7Eir-xk0g.PNG/a_1fef41f2dc8a4c5f9ce69aff036113e3.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjAyMDRfMjE1/MDAxNjQzOTQ3OTcwNDU3.Z5q_SKgBRvCWF17yUn2wOFraMrUnYUos8_DDv0J-U_gg.dDzwVnbHdYR5wdMRbyFgTfbeD_2gcFscXDoAsB4feBgg.PNG/a_4c45b1d00d3c4f97a28c40ecb106e566.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTExMTdfMjM4/MDAxNjM3MTExODQ2MTIx.26E4JsH9inqyf9zPfh3Sk_v2f5mkVTKbKPGpKOCBqasg.G5_uG4xKw2Pcrx4L-zMO4-YDHPnrtM_MGlZKVIWAfmAg.PNG/a_dde33c8e110e4f1a9bc396a47570b251.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjAzMjhfMjYx/MDAxNjQ4NDU1OTg1ODY5.ytPoYhDkyhh0ls8hhkoWjAM87wqnLSpXtiTwprom-UUg.ouSoT7rAgamXKOBm78ml2iP9tNrdpk2p3bUVI4uzqXMg.PNG/a_732acfe3e16941c79b7186a895791d30.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjAzMTdfMjg5/MDAxNjQ3NTA5ODY3Mjg2.tBV0GOP7iDkVZuvfxisOm0Q5R77panDaLmHiABFapqAg.1B3Oj6WuIRb7Tw-9Sr2p5QM1E61SZAyFGLjn035O0cUg.PNG/a_95059a8cc86f4e83b69724704b1d201f.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTA3MzBfNTYg/MDAxNjI3NjI3OTg5ODM5.p-9pRcc3cQ_eaTl7UZdCmPJz8Astbjg2N6_HkEhLrHsg.ekjxXxJ-kcnoaZC6gCQH_-KBCUJORPTRC791UZ_C3ukg.PNG/p_e1ef5e002eda49adb7f5d0c8a41f798d.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMjAy/MDAxNjU1Mjc4NjU5NTg1.mj42Z02R_jNNuzJvWgpU_MpcdER4YfMrEPL14S9DGWgg.vdRPCabwakAzjcAjO7vmzzyHt4yrNax0NKq3sQXVTygg.PNG/a_a6a54fc381244080b970406881c11145.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA2MTVfMTE2/MDAxNjU1MjYwOTQ4Nzg1.sWvm8Z5cdmVfWDNKlWn7ctvu80PaqvAaRxpK_MnVyHkg.QI3EHarZ3GyN1o1owXjQJ5kLYcNwRcV4YON25IEJgMEg.PNG/a_cbfa5b86e8dd4af580427dd65706af59.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTExMDNfMTc1/MDAxNjM1OTE2NjgwNzg2.8dFHlfL9rdg9eD3Y30FMe5ufyxftbHFoZP5--W6VM0Yg.-4fLaDSTBFw-ZSBbQrYv1g98RZQmgDlQq-I2rOGWHMAg.PNG/a_1c6e37b668c640b8b1294ee459182b9e.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjAyMThfMTky/MDAxNjQ1MTc5Njg3NTY4.xSj3PMStirXDeh2pLcEwmGfQDuOwl4iaNyTeydjjLY0g.SLlhZ0dFytiDDIBb7Ic0YAje5WVAUdyEnq_6glhjjBgg.PNG/a_c58524c536274739bbd7c7f78f729d82.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTA4MzBfNjAg/MDAxNjMwMjg5NDUwNTA5.X7SnPN6FG_lknViWHtGgchgVmqunSFYjM2L0UExqmcEg.TIJrISDnp_v7s3xAzqcL4Ustg1wjv5x56uIfUQIBUuUg.PNG/a_4d1dac08ba194ac8a3c3c916e4bcd3e9.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA1MDlfMTUw/MDAxNjUyMDYxODg1OTU5.axVkyuhM6gR_qleO1vKeF2fIdrldd6Eg7vpw6QQkCMYg.uAbpzXx1-MkpG0Qk3JGXpYand2AIYwPDovMvkpr2WAsg.PNG/a_754a51235fea475e991c7adf2558a623.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    <div class="col-md-3">
	                        <a href="#">
		                        <div class="product h-100">
		                            <!-- Product image-->
		                            <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA1MjNfMjQz/MDAxNjUzMjY5Njk1MzM5.zUu3YGORkzYnLYWUgT22Veyu7-No-8UqzzB0FVW9aDQg.gPNypsbXuY4VRE79VvEU3c-JhxnSyDs99wC8r7CsWK4g.PNG/a_6b45dc7b4f754409bb1bc3b9caa569dd.png?type=m_webp" alt="..." />
		                            <!-- Product details-->
		                            <div class="card-body p-4">
		                                <div class="text-center">
		                                    <!-- Product name-->
		                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
		                                    <!-- Product price-->
		                                    49,000원
		                                </div>
		                            </div>
		                        </div>
		                    </a>
	                    </div>
	                    
	                    <div class="col-md-12">
			       			<hr width = "100%">
		       			</div>
				        <!-- Footer-->
				        <jsp:include page="../common/footer.jsp"/>
					</div>
				</div>
			</section>
			
			
			
   <!--              
        
        Section
        <section class="py-5">
        	<div class="container px-4 px-lg-5 mt-5">
        		<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center align-items-center">
여기									
                    
                    
                    <div class="col-mb-5">
	                    <a href="#">
	                        <div class="card h-100">
	                            Product image
	                            <img class="card-img-top" src="/image/giftitem02/image04.png" alt="..." />
	                            Product details
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    Product name
	                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
	                                    Product price
	                                    49,000원
	                                </div>
	                            </div>
	                            Product actions
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
	                            </div>
	                        </div>
	                    </a>
                    </div>
                    
                    <div class="col-mb-5">
	                    <a href="#">
	                        <div class="card h-100">
	                            Product image
	                            <img class="card-img-top" src="/image/giftitem02/image05.png" alt="..." />
	                            Product details
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    Product name
	                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
	                                    Product price
	                                    49,000원
	                                </div>
	                            </div>
	                            Product actions
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
	                            </div>
	                        </div>
	                    </a>
                    </div>
                    
                    <div class="col-mb-5">
	                    <a href="#">
	                        <div class="card h-100">
	                            Product image
	                            <img class="card-img-top" src="/image/giftitem02/image06.png" alt="..." />
	                            Product details
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    Product name
	                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
	                                    Product price
	                                    49,000원
	                                </div>
	                            </div>
	                            Product actions
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
	                            </div>
	                        </div>
	                    </a>
                    </div>
                    
                    <div class="col-mb-5">
	                    <a href="#">
	                        <div class="card h-100">
	                            Product image
	                            <img class="card-img-top" src="/image/giftitem02/image08.png" alt="..." />
	                            Product details
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    Product name
	                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
	                                    Product price
	                                    49,000원
	                                </div>
	                            </div>
	                            Product actions
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
	                            </div>
	                        </div>
	                    </a>
                    </div>
                    
                    <div class="col-mb-5">
	                    <a href="#">
	                        <div class="card h-100">
	                            Product image
	                            <img class="card-img-top" src="/image/giftitem02/image09.png" alt="..." />
	                            Product details
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    Product name
	                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
	                                    Product price
	                                    49,000원
	                                </div>
	                            </div>
	                            Product actions
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
	                            </div>
	                        </div>
	                    </a>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Sale badge
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image02.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
                                    Product reviews
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    Product price
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Sale badge
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image03.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    Product price
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image04.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
                                    Product reviews
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    Product price
                                    $40.00
                                </div>
                            </div>
                            Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Sale badge
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image05.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">Sale Item</h5>
                                    Product price
                                    <span class="text-muted text-decoration-line-through">$50.00</span>
                                    $25.00
                                </div>
                            </div>
                            Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image06.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">Fancy Product</h5>
                                    Product price
                                    $120.00 - $280.00
                                </div>
                            </div>
                            Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Sale badge
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image08.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
                                    Product reviews
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    Product price
                                    <span class="text-muted text-decoration-line-through">$20.00</span>
                                    $18.00
                                </div>
                            </div>
                            Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            Product image
                            <img class="card-img-top" src="/image/giftitem02/image09.png" alt="..." />
                            Product details
                            <div class="card-body p-4">
                                <div class="text-center">
                                    Product name
                                    <h5 class="fw-bolder">까사맘 멀티 다지기 2.5L</h5>
                                    $40.00
                                </div>
                            </div>
                        </div>
                    </div>
                     -->

    </body>
</html>
