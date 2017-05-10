<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>吴暮霞我喜欢你</title>
    <meta name="keywords" content="concept, responsive bootstrap, green, white, free html5 template, templatemo" />
	<meta name="description" content="Concept is free responsive template using bootstrap framework. Gallery is integrated with responsive lightbox." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700,800' rel='stylesheet' type='text/css'>

	<!-- CSS Bootstrap & Custom -->
    <link rel="stylesheet" href="<%=basePath %>static/home/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=basePath %>static/home/css/animate.css">
    <link rel="stylesheet" href="<%=basePath %>static/home/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath %>static/home/css/templatemo_misc.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="<%=basePath %>static/home/css/templatemo_style.css">

	<!-- Favicons -->
    <link rel="shortcut icon" href="<%=basePath %>static/home/images/ico/favicon.ico">
</head>
<body>

	<div class="site-header">
	
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<a class="templatemo_logo" href="http://www.cssmoban.com/" >
						<h1>I LOVE YOU</h1>
					</a> <!-- /.logo -->
				</div> <!-- /.col-md-12 -->
			</div> <!-- /.row -->
		</div> <!-- /.container -->
	</div> <!-- /.site-header -->
	
	<div id="menu-container">

		<div class="content homepage" id="menu-1">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2 col-sm-6 col-md-offset-1">
						<div class="gallery-item">
								<img src="images/gallery/gallery-item1.jpg" alt="image 1">
								<div class="overlay">
									<a href="images/gallery/gallery-item1.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
							<div class="content-gallery">
								<h3>Etiam sed felis</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item2.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item2.jpg" alt="image 2">
							</div>
							<div class="content-gallery">
								<h3>Nulla sagittis</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item3.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item3.jpg" alt="image 3">
							</div>
							<div class="content-gallery">
								<h3>Quisque lacinia</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item4.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item4.jpg" alt="image 4">
							</div>
							<div class="content-gallery">
								<h3>Venenatis</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item5.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item5.jpg" alt="image 5">
							</div>
							<div class="content-gallery">
								<h3>Sed sed nisi</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6 col-md-offset-2">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item6.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item6.jpg" alt="image 6">
							</div>
							<div class="content-gallery">
								<h3>Modern</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item7.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item7.jpg" alt="image 7">
							</div>
							<div class="content-gallery">
								<h3>Elegant</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item8.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item8.jpg" alt="image 8">
							</div>
							<div class="content-gallery">
								<h3>HTML5 CSS3</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item9.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item9.jpg" alt="image 9">
							</div>
							<div class="content-gallery">
								<h3>New Design</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6 col-md-offset-3">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item10.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item10.jpg" alt="image 10">
							</div>
							<div class="content-gallery">
								<h3>Download</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item11.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item11.jpg" alt="image 11">
							</div>
							<div class="content-gallery">
								<h3>Responsive</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
					<div class="col-md-2 col-sm-6">
						<div class="gallery-item">
							<div class="image">
								<div class="overlay">
									<a href="images/gallery/gallery-item12.jpg" data-rel="lightbox" class="fa fa-expand"></a>
								</div>
								<img src="images/gallery/gallery-item12.jpg" alt="image 12">
							</div>
							<div class="content-gallery">
								<h3>Template</h3>
							</div>
						</div> <!-- /.gallery-item -->
					</div> <!-- /.col-md-2 -->
				</div> <!-- /.row -->
			</div> <!-- /.slide-item -->
		</div> <!-- /.homepage -->

		<div class="content products" id="menu-2">
			<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-6">
							<div class="product-item">
								<img src="images/products/product1.jpg" alt="product 1">
								<a href="#" class="product-title">Vestibulum ante ipsum primis</a>
								<p>Nam pharetra, est non convallis congue, sem sem elementum nisl, eget vulputate nisl erat.</p>
							</div> <!-- /.product-item -->
						</div> <!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-6">
							<div class="product-item">
								<img src="images/products/product2.jpg" alt="product 2">
								<a href="#" class="product-title">Nunc pulvinar leo nec</a>
								<p>Morbi nec mauris quis massa luctus consequat sit amet luctus metus. Etiam sollicitudin leo.</p>
							</div> <!-- /.product-item -->
						</div> <!-- /.col-md-4 -->
                        
						<div class="col-md-4 col-sm-6">
							<div class="product-item">
								<img src="images/products/product3.jpg" alt="product 3">
								<a href="#" class="product-title">Curabitur mollis dignissim</a>
								<p>Cras convallis erat vitae odio. Pellentesque rutrum nisl dui, dignissim accumsan nisl.</p>
							</div> <!-- /.product-item -->
						</div> <!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-6">
							<div class="product-item">
								<img src="images/products/product4.jpg" alt="product 4">
								<a href="http://www.cssmoban.com/" class="product-title" >Morbi venenatis nunc</a>
								<p>Nulla vel est in sapien dictum vestibulum eu ac enim. Proin pharetra mi eget sem bibendum.</p>
							</div> <!-- /.product-item -->
						</div> <!-- /.col-md-4 -->
                        
						<div class="col-md-4 col-sm-6">
							<div class="product-item">
								<img src="images/products/product5.jpg" alt="product 5">
								<a href="#" class="product-title">Phasellus id elementum</a>
								<p>Etiam sed felis id eros imperdiet tempus. Mauris sit amet metus risus. Vestibulum mi velit.</p>
							</div> <!-- /.product-item -->
						</div> <!-- /.col-md-4 -->
						<div class="col-md-4 col-sm-6">
							<div class="product-item">
								<img src="images/products/product6.jpg" alt="product 6">
								<a href="http://www.cssmoban.com/page/6" class="product-title" >Donec ullamcorper</a>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum, animi quia voluptatem.</p>
							</div> <!-- /.product-item -->
						</div> <!-- /.col-md-4 -->
					</div> <!-- /.row -->
			</div> <!-- /.slide-item -->
		</div> <!-- /.products -->

	</div> <!-- /#menu-container -->

	<!-- Scripts -->
	<script src="<%=basePath %>static/home/js/jquery-1.10.2.min.js"></script>
    <script src="<%=basePath %>static/home/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=basePath %>static/home/js/modernizr.js"></script>
	<script src="<%=basePath %>static/home/js/bootstrap.js"></script>
	<script src="<%=basePath %>static/home/js/tabs.js"></script>
	<script src="<%=basePath %>static/home/js/jquery.lightbox.js"></script>
	<script src="<%=basePath %>static/home/js/templatemo_custom.js"></script>
	<!-- 
    	Free Responsive Template by templatemo
    	http://www.cssmoban.com
	-->
	<script type='text/javascript' src='<%=basePath %>static/home/js/logging.js'></script>
	
</body>
</html>