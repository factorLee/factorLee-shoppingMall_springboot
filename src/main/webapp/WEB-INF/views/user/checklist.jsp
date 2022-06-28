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
<script src="/js/popper.min.js"></script>
<script src="/js/tippy-bundle.umd.js"></script>
<script src="/js/slick.min.js"></script>
<script src="/assets/js/report.js"></script>

<style>
  .checkbox.checbox-switch {
    padding-left: 0;
  }

  .checkbox.checbox-switch label,
  .checkbox-inline.checbox-switch {
    display: inline-block;
    position: relative;
    padding-left: 0;
  }
  .checkbox.checbox-switch label input,
  .checkbox-inline.checbox-switch input {
    display: none;
  }
  .checkbox.checbox-switch label span,
  .checkbox-inline.checbox-switch span {
    width: 42px;
    border-radius: 20px;
    height: 25px;
    border: 1px solid #dbdbdb;
    background-color: rgb(255, 255, 255);
    border-color: rgb(223, 223, 223);
    box-shadow: rgb(223, 223, 223) 0px 0px 0px 0px inset;
    transition: border 0.4s ease 0s, box-shadow 0.4s ease 0s;
    display: inline-block;
    vertical-align: middle;
    margin-right: 15px;
  }
  .checkbox.checbox-switch label span:before,
  .checkbox-inline.checbox-switch span:before {
    display: inline-block;
    width: 23px;
    height: 23px;
    border-radius: 50%;
    background: rgb(255, 255, 255);
    content: ' ';
    top: 0;
    position: relative;
    left: 0;
    transition: all 0.3s ease;
    box-shadow: 0 1px 4px rgba(0, 0, 0, 0.4);
  }
  .checkbox.checbox-switch label > input:checked + span:before,
  .checkbox-inline.checbox-switch > input:checked + span:before {
    left: 17px;
  }

  /* Switch Primary */
  .checkbox.checbox-switch.switch-primary label > input:checked + span,
  .checkbox-inline.checbox-switch.switch-primary > input:checked + span {
    background-color: rgb(0, 105, 217);
    border-color: rgb(0, 105, 217);
    box-shadow: rgb(0, 105, 217) 0px 0px 0px 8px inset;
    transition: border 0.4s ease 0s, box-shadow 0.4s ease 0s,
      background-color 1.2s ease 0s;
  }
  .checkbox.checbox-switch.switch-primary label > input:checked:disabled + span,
  .checkbox-inline.checbox-switch.switch-primary
    > input:checked:disabled
    + span {
    background-color: rgb(109, 163, 221);
    border-color: rgb(109, 163, 221);
    box-shadow: rgb(109, 163, 221) 0px 0px 0px 8px inset;
    transition: border 0.4s ease 0s, box-shadow 0.4s ease 0s,
      background-color 1.2s ease 0s;
  }

	.noborder td, .noborder th {
    border: none !important;
	}
</style>


</head>
<body><!-- 
	<div class="container container-table"> -->
		<!-- 테이블 영역 시작 -->
		<nav class="navbar justify-content-center navbar-dark bg-primary active sticky-top">
			<h3 class="navbar-text" style="text-align:center;">수배전반 현장 점검</h3>
		</nav>
		
		<table class="table noborder">
		 <tbody>
		    <tr>
		      <th scope="row">QR_ID</th>
		      <td colspan="3">HS000111</td>
		    </tr>
		    <tr>
		      <th scope="row">설명</th>
		      <td colspan="3">대연 수배전반 001</td>
		    </tr>
		    <tr>
		      <th scope="row">설치</th>
		      <td colspan="3">대연 공장</td>
		    </tr>
		    <tr>
		      <th scope="row">종류</th>
		      <td colspan="3">특고(고압)배전반</td>
		    </tr>
		  </tbody>
		</table>
		<!-- 테이블 영역 끝 -->
		<!-- 스위치 -->
		<nav class="navbar justify-content-center navbar-dark bg-primary active sticky-top">
			<h3 class="navbar-text" style="text-align:center">점검 항목</h3>
		</nav>
		
		<div class="container">
			<div class="row">
			
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 외함 상태
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
		        
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 인입/인출
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
		        
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 수배전용개폐기
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
		        
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 배선(모선)
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
		         
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 전력 퓨즈
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
		         
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 계전기류
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
		         
		        <div class="col-xs-10">
		        	<div class="form-group">
						<div class="checkbox checbox-switch switch-primary">
							<label> <input type="checkbox" name="tmpChkbox[]"
								class="form-check-input" role="switch" id="checkList" value='1'
								onclick="clkBtn()" /> <span></span> 차단기류
							</label>
						</div>
					</div>
		        </div>
		        <div class="col-xs-2">
		        	<a class="glyphicon glyphicon-chevron-right btn" href="/manager/report" style="font-size: 15px; color:black; margin: 2px"></a>
		        </div>
	    	</div>
		</div>
</body>
</html>