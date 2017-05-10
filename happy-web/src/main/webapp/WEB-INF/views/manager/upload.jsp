<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<link href="<%=basePath%>/static/manager/upload/css/common.css" type="text/css" rel="stylesheet">
<link href="<%=basePath%>/static/manager/upload/css/index.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/webuploader-0.1.5/webuploader.css">
<script type="text/javascript" src="<%=basePath%>/static/webuploader-0.1.5/webuploader.js"></script>
</head>
<body>

<div class="img-box full">
	<section class=" img-section">
		<div class="z_photo upimg-div clear" >
			   <!--<section class="up-section fl">
					<span class="up-span"></span>
					<img src="img/buyerCenter/a7.png" class="close-upimg">
					<img src="img/buyerCenter/3c.png" class="type-upimg" alt="添加标签">
					<img src="img/test2.jpg" class="up-img">
					<p class="img-namep"></p>
					<input id="taglocation" name="taglocation" value="" type="hidden">
					<input id="tags" name="tags" value="" type="hidden">
				</section>-->
				 <section class="z_file fl">
					<img src="<%=basePath%>/static/manager/upload/img/a11.png" class="add-img">
					<input type="file" name="file" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/bmp" multiple />
				 </section>
		 </div>
	 </section>
</div>
<aside class="mask works-mask">
	<div class="mask-content">
		<p class="del-p ">您确定要删除作品图片吗？</p>
		<p class="check-p"><span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span></p>
	</div>
</aside>

<script src="<%=basePath%>/static/manager/upload/js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath%>/static/manager/upload/js/imgUp.js"></script>

<script type="text/javascript">

	var uploader = WebUploader.create({
	
		// 选完文件后，是否自动上传。
	    auto: true,

	    // swf文件路径
	    swf: '<%=basePath%>/static/webuploader-0.1.5/js/Uploader.swf',
	
	    // 文件接收服务端。
	    server: '<%=basePath%>file/upload',
	
	    // 选择文件的按钮。可选。
	    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
	    pick: '#picker',
	
	    // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
	    resize: false
	});
	
	var $list = $("#thelist");
	// 当有文件被添加进队列的时候
	uploader.on( 'fileQueued', function( file ) {
	    $list.append( '<div id="' + file.id + '" class="item">' +
	        '<h4 class="info">' + file.name + '</h4>' +
	        '<p class="state">等待上传...</p>' +
	    '</div>' );
	});
	
	// 文件上传过程中创建进度条实时显示。
	uploader.on( 'uploadProgress', function( file, percentage ) {
	    var $li = $( '#'+file.id ),
	        $percent = $li.find('.progress .progress-bar');

	    // 避免重复创建
	    if ( !$percent.length ) {
	        $percent = $('<div class="progress progress-striped active">' +
	          '<div class="progress-bar" role="progressbar" style="width: 0%">' +
	          '</div>' +
	        '</div>').appendTo( $li ).find('.progress-bar');
	    }

	    $li.find('p.state').text('上传中');

	    $percent.css( 'width', percentage * 100 + '%' );
	});

	uploader.on( 'uploadSuccess', function( file, response ) {
		var message = '已上传';
		if(response.error) {
			message = response.error;
		}
	    $( '#'+file.id ).find('p.state').text(message);
	});

	uploader.on( 'uploadError', function( file ) {
	    $( '#'+file.id ).find('p.state').text('上传出错');
	});

	uploader.on( 'uploadComplete', function( file ) {
	    $( '#'+file.id ).find('.progress').fadeOut();
	});


	
</script>

</body>
</html>