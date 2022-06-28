<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="initial-scale=1.0,user-scalable=no,maximum-scale=1,width=device-width">
		<title>HA SUNG</title>
	<link rel="shortcut icon" href="/assets/images/favicon.png">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/slick.css">
<link rel="stylesheet" href="/css/slick-theme.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=fi2x3qqea9"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpclientId=fi2x3qqea9&submodules=geocoder"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/report.css" />
<script src="/assets/js/popper.min.js"></script>
<script src="/assets/js/tippy-bundle.umd.js"></script>
<script src="/assets/js/slick.min.js"></script>
<script src="/assets/js/report.js"></script>
</head>

<body>
	<%--네비게이션 상단바 --%>
	<nav class="navbar justify-content-center navbar-dark bg-primary active sticky-top">
		<h3 class="navbar-text" style="text-align:center">부품 내역 기록</h3>
	</nav>
	
	<div class="container">
		<%-- 전체 데이터 폼 --%>
		<form id="form" name="form" novalidate="novalidate">
			<div class="row">
				<div class="col-xs-12">

					<%-- 부품사진 & 부품 선택 버튼 --%>
					<div class="form-group">
						<label>부품 사진</label>
						<input class="hidden" type="file" id="picture" name="picture" accept="image/*;" onchange="imgCheck()"/>
							
						<div class="picDiv" style="position: relative; ">
							<div class="imggg">
								<img class="img-responsive" id="pic">
							</div>
								<video id="vid" controls muted autoplay loop playsinline style="width:100%; height: auto;"></video>
							
							<div class="btn-re" style="position: absolute; top: 90%; left: 80%">
								<button class="btn obj-hide re-icon" id="btncam2" type="button"
									onclick="addFile()" style="opacity: 0.5;">
									<span class="glyphicon glyphicon-refresh refresh"
										aria-hidden="true"></span>
								</button>
							</div>
						</div>
						
						<button class="btn btn-primary btn-lg btn-block active btnNoLine"
							id="btncam" type="button" onclick="addFile()">사진 촬영</button>
					</div>
					
					<%-- 설치시기 & 교체시기 & 비고 --%>
					<div class="form-group">
						<label for="ri_phone">설치시기</label> <label
							class="glyphicon margin-n text-info text-s"
							aria-hidden="true"></label><input type="date" pattern="\d*"
							class="form-control check cursor-p numeric-only" id="ri_phone"
							name="ri_phone" placeholder="연-월-일"
							onkeyup="this.value = this.value.replace(/[^0-9]/g,'');"
							style="margin-bottom: 5px" maxlength="11"> <span id="inputChek"
							aria-hidden="true"></span>
						
					</div>
					<div class="form-group">
						<label for="ri_phone">교체시기</label> <label
							class="glyphicon margin-n text-info text-s"
							aria-hidden="true"></label><input type="date" pattern="\d*"
							class="form-control check cursor-p numeric-only" id="ri_phone"
							name="ri_phone" placeholder="연-월-일"
							onkeyup="this.value = this.value.replace(/[^0-9]/g,'');"
							style="margin-bottom: 5px" maxlength="11"> <span id="inputChek"
							aria-hidden="true"></span>
					</div>
					<div class="form-group">
						<label for="ri_content">비	고</label> <label
							class="glyphicon margin-n text-info text-s"
							aria-hidden="true"></label>
						<textarea class="form-control check cursor-p" id="ri_content" name="ri_content" rows="3"></textarea>
					</div>
					
				</div>
			</div>
		</form>
	</div>
	<nav class="navbar">
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<button class="btn  btn-primary btn-lg btn-block active btnNoLine"
						type="button" style="margin-bottom: 15px" onclick="javascript:history.back();">취소</button>
				</div>
				<div class="col-xs-6">
					<button class="btn  btn-primary btn-lg btn-block active btnNoLine"
						type="button" style="margin-bottom: 15px" onclick="report();">저장</button>
				</div>
			</div>
		</div>
	</nav>

<!-- 	<script>
		document.cookie = "safeCookie1=foo; SameSite=Lax";
		document.cookie = "safeCookie2=foo";
		document.cookie = "crossCookie=bar; SameSite=None; Secure";
	</script> -->
	<script src="https://webrtc.github.io/adapter/adapter-latest.js"></script>
</body>

</html>
