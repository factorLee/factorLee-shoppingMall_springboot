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
      <%@ include file="../common/sidebar.jsp" %>
      
      <div class="container-fluid page-body-wrapper">

        <nav class="navbar col-lg-12 col-12 p-lg-0 fixed-top d-flex flex-row">
          <div class="navbar-menu-wrapper d-flex align-items-stretch justify-content-between">
            <a class="navbar-brand brand-logo-mini align-self-center d-lg-none" href="#"><img src="/assets/images/logo-mini.svg" alt="logo" /></a>
            <button class="navbar-toggler navbar-toggler align-self-center mr-2" type="button" data-toggle="minimize">
              <i class="mdi mdi-menu"></i>
            </button>

            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
              <span class="mdi mdi-menu"></span>
            </button>
          </div>
        </nav>
        <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header">
              <h1 class="page-title"><b>상품 등록</b></h3>
            </div>
            
            <!-- 상품등록 form -->
			<div class="col-md-12">
				<div class="contact-form form-center">
					<form id="form" name="form" method="post" enctype="multipart/form-data"> <!--  action="/web/register.do" method="post"> -->
						<div class="col-md-12">
							<div class="form-group">
			            		<label class="label-control">대표 이미지</label>
				            	<div id="image_preview">
									<img src="/image/150150.png" alt="사진영역"  style="width:150px; height:150px;">
								</div>
								<div class="f_box">
									<label for="img">사진첨부</label>
									<input type="file" id="img" name="file1">
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
	                                
	                        /*         //파일 업로드
	                                $(document).ready(function(){
	                                	var form = new FormData();
		                                form.append( "file1", $("#img")[0].files[0] );
		                                
		                                 jQuery.ajax({
		                                     url : "/web/thumbnailUpload.do"
		                                   , type : "POST"
		                                   , processData : false
		                                   , contentType : false
		                                   , data : form
		                                   , success:function(form) {
		                                	   console.log("form 값:",form);
		                                   }
		                                   ,error: function (jqXHR) 
		                                   { 
		                                       alert("실패"); 
		                                   }
		                               });
	                               		
	                                }); */
	                            }
	                            
	                         
	                            
	                            });
	 							</script>
							</div>
						</div>
						<hr style="margin: 20px; height: 0;">
						<div class="col-md-12">
						  <div class="form-row align-items-center">
								<div class="col-auto my-1">
								  <label class="label-control">상품 분류</label>
								  <select class="custom-select mr-sm-2" id="inlineFormCustomSelect" name="pr_category">
								    <option selected>-선택-</option>
								    <option value="1">가전</option>
								    <option value="2">주방</option>
								    <option value="3">캠핑</option>
								    <option value="4">기타</option>
								  </select>
								</div>
							</div>
						</div>
						<hr style="margin: 20px; height: 0;">
						<div class="col-md-12">
							<div class="form-group">
								<label class="mr-sm-2" for="inlineFormCustomSelect">상품명</label>
								<input type="text" class="form-control" id="inputEmail" required placeholder="" name="pr_title">
							</div>
						</div>
						<hr style="margin: 20px; height: 0;">
						
						<div class="col-md-12">
							<textarea class="form-control " name="pr_contents" id="ckeditor"></textarea>
							 <script>
								CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
									filebrowserUploadUrl: 'fileupload.do'
									/* filebrowserImageUploadUrl: '/upload.do', */
								
								});
							 </script>
						</div>
						<hr style="margin: 20px; height: 0;">
						<div class="col-md-12">
							<h1>FAQ</h1>
							<div class="col-md-12">
								<div class="form-group">
									<label class="mr-sm-2" for="inlineFormCustomSelect">당일 배송 가능한가요?</label>
									<input type="text" class="form-control" id="inputEmail" required placeholder="" name="pr_faq01">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="mr-sm-2" for="inlineFormCustomSelect">교환 및 환불 가능한가요?</label>
									<input type="text" class="form-control" id="inputEmail" required placeholder="" name="pr_faq02">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="mr-sm-2" for="inlineFormCustomSelect">환불은 언제 되나요?</label>
									<input type="text" class="form-control" id="inputEmail" required placeholder="" name="pr_faq03">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="mr-sm-2" for="inlineFormCustomSelect">현금영수증 발급은 어떻게 하나요?</label>
									<input type="text" class="form-control" id="inputEmail" required placeholder="" name="pr_faq04">
								</div>
							</div>
						</div>
						<hr style="margin: 20px; height: 0;">
						<div class="col-md-12">
							<!-- <input type="submit" class="btn btn-dark btn-lg btnBlock" value="문의하기"> -->
							<button type="submit" class="btn btn-primary" onclick="test2()">등록하기</button>
							<button type="submit" class="btn btn-dark">이전</button>
						</div>
					</form>
				</div>
			</div>
			
			
          </div>
          <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
              <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 이상주 Co., Ltd. 2022</span>
            </div>
          </footer>
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
   
<!--    <script>
   function clkBtn(){

	   var form = $('#form')[0];
	   var formData = new FormData(form);
	   $.ajax({
	   	   type:"post",
	   	   enctype:'multipart/form-data',
	       url:'/web/register.do',
	       data:formData,
	       dataType:'json',
	       processData:false,
	       contentType:false,
	       cache:false,
	       success:function(data){
	       	console.log("success : ", data);
	       },
	       error:function(e){
	           console.log("error : ", e);
	       }
	   });
   }
   </script> -->
   
   
   
<!-- 	<script type="text/javascript">
	// 버튼 클릭 시 실행
	function clkBtn(){
		// Get form
		var form = $('#form')[0];

		// Create an FormData object 
		var data = new FormData(form);

		$.ajax({
			type: "POST",
			enctype: 'multipart/form-data',
			url: '/web/register.do',	// form을 전송할 실제 파일경로
			data: data,
			processData: false,
			contentType: false,
			cache: false,
			timeout: 600000,
			beforeSend : function() {
				// 전송 전 실행 코드
			},
			success: function (data) {
				// 전송 후 성공 시 실행 코드
				console.log(data);
			},
			error: function (e) {
				// 전송 후 에러 발생 시 실행 코드
				console.log("ERROR : ", e);
			}
		});
	}
    </script> -->
<!-- 	<script>
    $(function(){
        $('#clkBtn').on("click",function () {

            var form1 = $("#form").serialize();

            console.log($("#form"));
            $.ajax({
                type: "POST",
                url: "/web/register.do",
                data: $("#form"),
                dataType: 'text',
                async: true, 
                cache: false,
                contentType: false,
                processData: false,
                success: function (data, status, xhr) {
                    console.log(data);
                    alert("success");
                },
                error: function (request, status, error) {
                    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

                }
            });
        });
    });
    	
	</script> -->
<!-- 	
	<script>
	$(function(){
	     $("#uploadbutton").click(function(){
	         var form = $('#form')[0];
	         console.log(form);
	         var formData = new FormData(form);
	             $.ajax({
	                url: '/web/register.do',
	                processData: false,
	                    contentType: false,
	                data: formData,
	                type: 'POST',
	                success: function(result){
	                	console.log(result);
	                    alert("업로드 성공!!");
	                }
	            });
	         });
	})
	</script> -->
	
	<!-- 되는거 -->
	
	<script>
	function test2(){
		/* var formData = $('#form').serialize();
		 */
 		var form = new FormData();
		
		console.log(CKEDITOR.instances.ckeditor.getData());
		
 		form.append( "file1", $("#img")[0].files[0] );
        console.log($("select[name=pr_category]").val());
        console.log($("textarea[name=pr_contents]").val());
        form.append("pr_category", $("select[name=pr_category]").val());
        form.append("pr_title", $("input[name=pr_title]").val());
        /* form.append("pr_contents", $("textarea[name=pr_contents]").value()); */
        form.append("pr_contents", CKEDITOR.instances.ckeditor.getData());
        form.append("pr_faq01", $("input[name=pr_faq01]").val());
        form.append("pr_faq02", $("input[name=pr_faq02]").val());
        form.append("pr_faq03", $("input[name=pr_faq03]").val());
        form.append("pr_faq04", $("input[name=pr_faq04]").val()); 
        
        
        
        
    	console.log("form 값:",form);
         $.ajax({
             url : "/web/register.do"
           , type : "POST"
           , processData : false
           , contentType : false
           , data : form
           , success:function(form) {
           		
           }
           , error: function (jqXHR) 
           { 
               alert("실패"); 
           }
         
       });
	}
	
	</script>
	
	<!-- 
	<script>
    function test2(){
    	
        form = $("#form")[0];
        var formData = new FormData(form);
        console.log($("input[name=pr_contents]").val());

      /*    
        formData.append("pr_thumbnail", $("input[name=pr_thumbnail]").val());
		formData.append("pr_category", $("input[name=pr_category]").val());
        formData.append("pr_title", $("input[name=pr_title]").val());
        formData.append("pr_contents", $("input[name=pr_contents]").val());
        formData.append("pr_faq01", $("input[name=pr_faq01]").val());
        formData.append("pr_faq02", $("input[name=pr_faq02]").val());
        formData.append("pr_faq03", $("input[name=pr_faq03]").val());
        formData.append("pr_faq04", $("input[name=pr_faq04]").val()); */
        
        console.log(formData);
        
        $.ajax({
			type: 'POST',
			url: '/web/register.do',
			processData: false,
			contentType: "application/json; charset=utf-8",
			data: formData,
			/* data: formData, */
			dataType: "JSON",
			success: function(formData){
				console.log(formData);
			}, // success 
    
            error : function(xhr, status) {
                alert(xhr + " : " + status + "," + formData);
            }
        }); // $.ajax */    
      
    } 
    
	</script>
     -->
    
    
    
    <!-- container-scroller -->
    <script src="/assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="/assets/js/off-canvas.js"></script>
    <script src="/assets/js/hoverable-collapse.js"></script>
    <script src="/assets/js/misc.js"></script>
    <script src="/assets/js/manage.js"></script>
  </body>

</html>