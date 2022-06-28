let focusId;


//사진 나타내기
$(document).ready(function() {
	$('.picDiv').hide();
	$('#pic').hide();
	$('#vid').hide();
	$('#btncam2').hide();
	$('#btncam').show();
	if (!('url' in window) && ('webkitURL' in window)) {
		window.URL = window.webkitURL;
	}
	$('#picture').change(function(e) {

		var fileName = $("#picture").val();
		let ctx = $("#picture").val().split(".").pop().toLowerCase();
		if(fileName != ""){
			if($.inArray(ctx, ['png','jpg','jpeg','dng','bmp', 'gif', 'webp', 'heic', 'heif', 'mp4', 'mov', 'm4v', 'avi', 'wmv', 'mwa', 'asf', 'ts','mpg', 'mpeg', 'mkv', 'webm', '3gp', '3g2']) == -1){
				openPi_PopUp_Error("사진 또는 동영상을 촬영해 주세요.");
				$(this).val('');
				return false;
			}
			if($.inArray(ctx, ['png','jpg','jpeg','dng','bmp', 'gif', 'webp', 'heic', 'heif']) == -1){
				var maxSize = 50 * 1024 * 1024;
				var fileSize = this.files[0].size;
				if(fileSize > maxSize){
					openPi_PopUp_Error("첨부파일 사이즈는 50MB 이내로 등록 가능합니다.");
					$(this).val('');
					return false;
				}
				// 동영상 업로드시
				$('.picDiv').show();
				$('#vid').attr('src', URL.createObjectURL(e.target.files[0]));
				$('#pic').hide();
				$('#vid').show();
				$('#btncam').hide();
				$('#btncam2').show();
			}else{
				var maxSize = 50 * 1024 * 1024;
				var fileSize = this.files[0].size;
				if(fileSize > maxSize){
					openPi_PopUp_Error("첨부파일 사이즈는 50MB 이내로 등록 가능합니다.");
					$(this).val('');
					return false;
				}
				// 사진 올렸을때
				$('.picDiv').show();
				$('#pic').attr('src', URL.createObjectURL(e.target.files[0]));
				$('#vid').hide();
				$('#pic').show();
				$('#btncam').hide();
				$('#btncam2').show();
			}
		}
	});

	// tippy 설정
	tippy('#infoB', { 
		content: '<strong>스마트 신고 순서 설명</strong><br><br>1.위치 정보 동의 <br> 2.파손 사진 촬영 <br> 3.전화번호 & 신고내용 기입(선택사항)<br>4.신고하기 버튼 클릭<br>', // tooltip
		allowHTML: true,
		placement: 'top', // 상단 위치
		hideOnClick : true, // 
		trigger: "click",
		animation: 'shift-away', //
	 });
});

function iosClose() {
	$('#iosModal').modal('hide');
	$('.slideModal1').slick("unslick");
}
// IOS 모달
function openIos_PopUp() {
	$('#iosModal').modal({
		backdrop : 'static',
		keyboard : false
	});
	$('.slideModal1').slick({
		infinite: false,
		prevArrow: $('#prev1'), 
		nextArrow: $('#next1')
	});
	$('.slideModal1').resize()
	$('.slideModal1').slick('refresh'); 
}

function androidClose() {
	$('#androidModal').modal('hide');
	$('.slideModal2').slick("unslick");
}
// IOS 모달
function openAndroid_PopUp() {
	$('#androidModal').modal({
		backdrop : 'static',
		keyboard : false
	});
	$('.slideModal2').slick({
		infinite: false,
		prevArrow: $('#prev2'), 
		nextArrow: $('#next2')
	});
	$('.slideModal2').resize()
	$('.slideModal2').slick('refresh'); // 팝업 열때 슬라이드 깨짐 방지 }
}



// 신고 등록(submit)
function reportReg() {
	$("#progress").modal('show');
	var form = $('#form')[0];
	var formData = new FormData(form);
	
	$.ajax({
		url : '/api/reportReg',
		type : 'POST',
		enctype : 'multipart/form-data',
		data : formData,
		datatype : 'text',
		processData : false,
		contentType : false,
		success : function(data) {
			$("#progress").modal('hide');
			if (data == "등록 완료") {
				openPi_PopUp_Submit();
			} else {
				openPi_PopUp_Error(data);
			}
		},
		error : function(data) {
			console.log("reportReg 오류");
			console.log(data);
			openPi_PopUp_Error("오류발생 : 관리자 문의 필요");
		}
	});

}

// 사진&업로드 클릭
function addFile() {
	$('#picture').click();
}


// 유효성 에러 팝업
function openPi_PopUp_Error(content) {

	$('#errorContent').text(content);
	$('#errorModal').modal('show');

}

// 유효성 에러 팝업 닫기
function errorClose() {
	$('#errorModal').modal('hide');
	if(focusId == "btncam"){
		$('html, body').animate({
			scrollTop : 0
		}, 400);
	}else{
		$('html, body').animate({
			scrollTop : $("#"+focusId).offset().top - ($( window ).height()/2)
		}, 400);
	}
}


  // 동의하기 팝업 열기
function openPi_PopUp_Agree(){
  $.ajax({ 
	  url : '/api/openPi_PopUp_Agree', // 요청 URL 
	  type : 'GET', // 매핑방식
	  dataType : 'text', // 받을 데이터 타입 
	  success : function(data) {
		  $('#agreeContent').text(data);
		  $('#agreeModal').modal('show'); 
	  }, error : function(data) { 
		  	console.log("agreeContent 오류"); 
		  	console.log(data);
		  	openPi_PopUp_Error("오류발생 : 관리자 문의 필요"); 
	  } 
  }); 
}


  // 동의 모달 닫기
function no(){ 
  $('#agreeModal').modal('hide') 
}


// 신고완료 팝업
function openPi_PopUp_Submit() {

	$('#submitModal').modal({
		backdrop : 'static',
		keyboard : false
	});

}

// 신고완료 팝업 닫기
function submitClose() {
	window.location.reload();
}

// 최상단 가기
function goTop() {
	$('html, body').animate({
		scrollTop : 0
	}, 400);
	return false;
}

// 디바이스 정보 가져오기
function checkMobile(){
 
    var varUA = navigator.userAgent.toLowerCase(); //userAgent 값 얻기
 
    if ( varUA.indexOf('android') > -1) {
        //안드로이드
        return "android";
    } else if ( varUA.indexOf("iphone") > -1||varUA.indexOf("ipad") > -1||varUA.indexOf("ipod") > -1 ) {
        //IOS
        return "ios";
    } else {
        //아이폰, 안드로이드 외
        return "other";
    }
    
}


$(document).on("keyup","#ri_content",function(){
	var rows = $('#ri_content').val().split('\n').length;
	var maxRows = 10;
	if( rows > maxRows){
		focusId = "ri_content";
		openPi_PopUp_Error('상세 내용 입력은 10줄 까지만 가능합니다');
		modifiedText = $('#ri_content').val().split("\n").slice(0, maxRows);
		$('#ri_content').val(modifiedText.join("\n"));
	}
});