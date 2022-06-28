function slideOpen(){
	$(".sidebar-r").addClass("side-On");
};

function closeSidebar(){
	$(".sidebar-r").removeClass("side-On");
};


function excelExDown(){
	location.href="/ins/excelExDown";
}

/*
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
	
};*/