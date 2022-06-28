<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1,width=device-width">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<script	src="/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="/assets/vendors/mdi/css/materialdesignicons.min.css" />
    <link rel="stylesheet" href="/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
    <link rel="stylesheet" href="/assets/vendors/css/vendor.bundle.base.css" />
    <link rel="stylesheet" href="/css/adminStyle.css" />
    <link rel="stylesheet" href="/assets/css/custom.css" />
    <link rel="shortcut icon" href="/assets/images/favicon.png" />
    
<!-- ckeditor -->
<script src="/js/ckeditor/ckeditor.js"></script>
</head>
<body>
	<div class="container-scroller">
		<%@ include file="../common/sidebar.jsp"%>

		<div class="container-fluid page-body-wrapper">

			<nav class="navbar col-lg-12 col-12 p-lg-0 fixed-top d-flex flex-row">
				<div
					class="navbar-menu-wrapper d-flex align-items-stretch justify-content-between">
					<a class="navbar-brand brand-logo-mini align-self-center d-lg-none"
						href="#"><img src="/assets/images/logo-mini.svg" alt="logo" /></a>
					<button
						class="navbar-toggler navbar-toggler align-self-center mr-2"
						type="button" data-toggle="minimize">
						<i class="mdi mdi-menu"></i>
					</button>

					<button
						class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
						type="button" data-toggle="offcanvas">
						<span class="mdi mdi-menu"></span>
					</button>
				</div>
			</nav>
			
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="page-header">
						<h3 class="page-title"><b>상품 등록</b></h3>
					</div>
					<hr>
					<!-- 상품등록 form -->
					<form action="" method="post" enctype="multipart/form-data" name="form1">
						<div class="table-responsive">
							<table class="table">
								<tr>
									<th width="15%">상품 분류</th>
									<td width="85%" >
										<select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="pr_category">
									    	<option selected>-선택-</option>
									    	<option value="1">가전</option>
									    	<option value="2">주방</option>
									    	<option value="3">캠핑</option>
									    	<option value="4">기타</option>
								    	</select>
									</td>
								</tr>

								<tr>
									<th class="success">상품명</th>
									<td colspan="5"><input type="text" class="form-control product_title" id="inputEmail" required placeholder="" name="pr_title"></td>
								</tr>
								
								<tr>
									<th>상품 이미지</th>
									<td colspan="5">
										<div id="image_preview">
											<img src="/image/150150.png" alt="사진영역"  style="width:150px; height:150px;">
										</div>
										<div class="f_box">
											<label class="file-label" for="img">이미지 등록</label>
											<input type="file" id="img" name="pr_thumbnail" class="file">
										</div>	
									    <script>
				                            // 이미지 업로드
				                            $('#img').on('change', function() {
				                            ext = $(this).val().split('.').pop().toLowerCase(); //확장자
				                            //배열에 추출한 확장자가 존재하는지 체크
				                            if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
				                                resetFormElement($(this)); //폼 초기화
				                                window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
				                            } else {
				                                file = $('#img').prop("files")[0];
				                                blobURL = window.URL.createObjectURL(file);
				                                $('#image_preview img').attr('src', blobURL);
				                                $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
				                                /* $(this).hide(); //파일 양식 감춤 */
				                            	}
				                            
				                            });
			 							</script>
									</td>
								</tr>
								<!-- 업체정보 -->
								<tr>
									<th>업체정보</th>
									<td>
										<table class="secTable">
											<tr style="border: none;">
												<th width="10%">업체명</th>
												<td width="90%"><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
											<tr style="border: none;">
												<th>대표자</th>
												<td><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
											<tr style="border: none;">
												<th>사업자등록번호</th>
												<td><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
											<tr style="border: none;">
												<th>통신판매업신고</th>
												<td><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
											<tr style="border: none;">
												<th>연락처</th>
												<td><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
											<tr style="border: none;">
												<th>E-mail</th>
												<td><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
											<tr style="border: none;">
												<th>사업장소재지</th>
												<td><input type="text" class="coInfo form-control" id="inputEmail" required placeholder="" name="pr_title"></td>
											</tr>
										</table>
									</td>
								</tr>
								<!-- 상세설명 -->
								<tr>
									<th>상세설명</th>
									<td colspan="5">
										<textarea class="form-control " name="pr_contents" id="ckeditor"></textarea>
									</td>
								</tr>
								<script>
									CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
										filebrowserUploadUrl: 'fileupload.do',
										width: '80%',
										height: '300px'
										/* filebrowserImageUploadUrl: '/upload.do', */
									
									});
								 </script>
								<!-- FAQ -->
								<tr>
									<th>FAQ</th>
									
									<div class="buttons">            
							        	<td><input type="text" name="txt"> <input type="button" class="btnAdd" value="Add"><br><td>       
							        </div>    
									
									<script>
									 $(document).ready (function () {                
								            $('.btnAdd').click (function () {                                        
								                $('.buttons').append (                        
								                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="Remove"><br>'                    
								                ); // end append                            
								                $('.btnRemove').on('click', function () { 
								                    $(this).prev().remove (); // remove the textbox
								                    $(this).next ().remove (); // remove the <br>
								                    $(this).remove (); // remove the button
								                });
								            }); // end click                                            
								        }); // end ready 
									</script>
								</tr>
								

							</table>

						</div>
						<div class="submitBtn text-center">
							<input type="button" value="등록" class="btn btn-success"
								onclick="productSubmit()"> <input type="reset"
								value="취소" class="btn btn-warning">
						</div>
					</form>
					<!-- 상품등록 form end -->
				</div>
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright
							© 이상주 Co., Ltd. 2022</span>
					</div>
				</footer>
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>



	<script>
		function test2() {

			var formData = $('#form').serialize();

			/* 		var form = new FormData();
			 var textarea = document.getElementById("#pr_contents");
			 console.log(textarea.value); */
			/* 		formData.append( "file1", $("#img")[0].files[0] ); */
			/*         console.log($("select[name=pr_category]").val());
			 console.log($("textarea[name=pr_contents]").val());
			 form.append("pr_category", $("select[name=pr_category]").val()); */
			/*         form.append("pr_title", $("input[name=pr_title]").val()); */
			/*         form.append("pr_contents", $("textarea[name=pr_contents]").value()); */
			/*         form.append("pr_faq01", $("input[name=pr_faq01]").val());
			 form.append("pr_faq02", $("input[name=pr_faq02]").val());
			 form.append("pr_faq03", $("input[name=pr_faq03]").val());
			 form.append("pr_faq04", $("input[name=pr_faq04]").val()); */

			console.log("form 값:", formData);
			jQuery.ajax({
				url : "/web/register.do",
				type : "POST",
				processData : false,
				contentType : false,
				data : formData,
				success : function(formData) {
					alert("form 값:", formData);
					console.log("form 값:", formData);
				},
				error : function(jqXHR) {
					alert("실패");
				}
			});

		}
	</script>
    
    
    <!-- container-scroller -->
    <script src="/assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="/assets/js/off-canvas.js"></script>
    <script src="/assets/js/hoverable-collapse.js"></script>
    <script src="/assets/js/misc.js"></script>
    <script src="/assets/js/manage.js"></script>
  </body>

</html>