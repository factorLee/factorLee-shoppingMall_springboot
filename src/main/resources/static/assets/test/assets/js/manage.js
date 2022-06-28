function slideOpen(){
	$(".sidebar-r").addClass("side-On");
};

function closeSidebar(){
	$(".sidebar-r").removeClass("side-On");
};


function checkExcel(){
	var form = document.sideForm;
	form.method="post";
	form.action="/webapi/checkExcel.do";
	
	//form.submit();
	form = $('#sideForm')[0];
    var formData = new FormData(form);

	$.ajax({
        url : '/webapi/checkExcel.do',
        type : 'POST',
        data : formData,
        contentType : false,
        processData : false,
		success: function(glist){			
			
		}
	});
	
}


function cateAddOpen(){
	$('#rc_stock').val("0");
	
	slideOpen();
	
};

function cateAdd(){

	var form = document.sideForm;
	form.method="post";
	form.action="/webapi/addCate.do";
	
	form = $('#sideForm')[0];
    var formData = new FormData(form);

	$.ajax({
        url : '/webapi/addCate.do',
        type : 'POST',
        data : formData,
        contentType : false,
        processData : false,
		success: function(glist){			
			location.reload();
			
		}
	});
	
};