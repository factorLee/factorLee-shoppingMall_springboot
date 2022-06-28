<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
	<script src = "/js/ckeditor/ckeditor.js"></script>

</head>
<body>
	<h1>Test</h1>
	<%=request.getRealPath("/") %>
<!-- 	<p>g2</p>
	<textarea id="editor4" name="editor4"></textarea>
	<script>	          					 
	   CKEDITOR.replace( 'editor4', { 
	        uploadUrl: "/image/drag",  // 이게 드래그 드롭을 위한 URL
	        filebrowserUploadMethod :'form',
	        filebrowserUploadUrl: "/admin/post/imageUpload"  // 파일업로드를 위한 URL
	    } ); 
	</script> -->
	
<!-- <textarea name="contents" class="form-control" id="contents">[[*{contents}]]</textarea>
	
<script>
	CKEDITOR.replace('contents',{
		filebrowserUploadUrl: '/common/mine/imageUpload.do',
		font_names : "맑은 고딕/Malgun Gothic;굴림/Gulim;돋움/Dotum;바탕/Batang;궁서/Gungsuh;Arial/Arial;Comic Sans MS/Comic Sans MS;Courier New/Courier New;Georgia/Georgia;Lucida Sans Unicode/Lucida Sans Unicode;Tahoma/Tahoma;Times New Roman/Times New Roman;MS Mincho/MS Mincho;Trebuchet MS/Trebuchet MS;Verdana/Verdana",
		font_defaultLabel : "맑은 고딕/Malgun Gothic",
		fontSize_defaultLabel : "12",
		language : "ko"
	});
</script> -->

<!-- <textarea id = "editor4" name = "editor4"></textarea>
<script>CKEDITOR.replace('editor4',{filebrowserUploadUrl:'/mine/imageUpload.do'});</script> -->


<!-- 사진 안보임 -->
<!-- <textarea class="form-control " name="freeboard_content" id="ckeditor"></textarea>
<script>
CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
    width:'100%',
    height:'400px',
    filebrowserUploadUrl:  "fileupload.do"
});
</script> -->

<textarea class="form-control " name="freeboard_content" id="ckeditor"></textarea>
<script>
CKEDITOR.replace( 'ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
	filebrowserUploadUrl: 'fileupload.do'
	/* filebrowserImageUploadUrl: '/upload.do', */

});

</script>
</body>
</html>