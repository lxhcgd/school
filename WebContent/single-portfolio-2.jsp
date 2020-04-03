<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

  <script type="text/javascript" src="pdfjs/build/pdf.js"></script>	
	
  <meta charset="utf-8">
  <title>题库详细产品信息页</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Ruda:400,900,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/prettyphoto/css/prettyphoto.css" rel="stylesheet">
  <link href="lib/hover/hoverex-all.css" rel="stylesheet">
  <link href="lib/jetmenu/jetmenu.css" rel="stylesheet">
  <link href="lib/owl-carousel/owl-carousel.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/colors/blue.css">
</head>

<body>
  <div class="topbar clearfix">
    <div class="container">
      <div class="col-lg-12 text-right">
        <div class="social_buttons">
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+"><i class="fa fa-google-plus"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS"><i class="fa fa-rss"></i></a>
          <!-- 显示用户名 -->
          	<%String username = (String)session.getAttribute("username");	
			if(username==null){%>
					 <!-- request.setAttribute("msg", "请登录"); -->
					<a href="login.jsp" ><span style="white-space:nowrap;">请登录</span></a>
					<!-- request.getRequestDispatcher("index.jsp").forward(request, response); -->
			<%}else{%>
					<a href="#"><span style="white-space:nowrap;">用户:</span>${username }</a>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					/<a href="LoginOffServlet"><span style="white-space:nowrap;">退出</span></a>
			<% }%>
        </div>
      </div>
    </div>
    <!-- end container -->
  </div>
  <!-- end topbar -->
  
<c:forEach var="xyz" items="${requestScope.list }">

  <header class="header">
    <div class="container">
      <div class="site-header clearfix">
        <div class="col-lg-3 col-md-3 col-sm-12 title-area">
          <div class="site-title" id="title">
            <a href="index.html" title="">
              <img  src="image/logo1.png" />
            </a>
          </div>
        </div>
        <!-- title area -->
        <div class="col-lg-9 col-md-12 col-sm-12">
          <div id="nav" class="right">
            <div class="container clearfix">
              <ul id="jetmenu" class="jetmenu blue">
                <li><a href="index.jsp">首页</a></li>
                <li><a href="#">免费课程</a></li>
              	<li><a href="#">直播课</a></li>
              	<li><a href="services.jsp">专栏</a></li>
              	<li><a href="SelectAllBankServlet">题库</a></li>
                <!-- <li><a href="#">Pages</a>
                <ul class="dropdown">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="team-members.html">Team Members</a></li>
                    <li><a href="testimonials.html">Testimonials</a></li>
                    <li><a href="404.html">404 Error</a></li>
                    <li><a href="faq.html">FAQ Page</a></li>
                    <li><a href="left-sidebar.html">Left Sidebar</a></li>
                    <li><a href="right-sidebar.html">Right Sidebar</a></li>
                    <li><a href="fullwidth.html">Full Width</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="register.html">Register</a></li>
                    <li><a href="contact.html">Contact</a></li>
                  </ul>
                </li>
                <li><a href="#">Shop</a>
                  <ul class="dropdown">
                    <li><a href="digital-download.html">Products Page</a></li>
                    <li><a href="single-product.html">Single Product</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                    <li><a href="account.html">Account Page</a></li>
                    <li><a href="support.html">Support Center</a></li>
                  </ul>
                </li>
                <li class="active"><a href="#">Portfolio</a>
                  <ul class="dropdown">
                    <li><a href="single-portfolio-1.html">Single Portfolio 1</a></li>
                    <li><a href="single-portfolio-2.html">Single Portfolio 2</a></li>
                    <li><a href="portfolio-2.html">Portfolio (2 Columns)</a></li>
                    <li><a href="portfolio-3.html">Portfolio (3 Columns)</a></li>
                    <li><a href="gallery-portfolio.html">Gallery</a></li>
                    <li><a href="masonry-grid-portfolio.html">Masonry Grid Style</a></li>
                  </ul>
                </li>
                <li><a href="#">Blog</a>
                  <ul class="dropdown">
                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                    <li><a href="single-with-sidebar.html">Single with Sidebar</a></li>
                  </ul>
                </li> -->
              </ul>
            </div>
          </div>
          <!-- nav -->
        </div>
        <!-- title area -->
      </div>
      <!-- site header -->
    </div>
    <!-- end container -->
  </header>
  <!-- end header -->

  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="index.html">首页</a></li>
          <li>${xyz.name }</li>
        </ul>
        <h2>${xyz.name }</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search..." />
            </fieldset>
          </form>
        </div>
        <!-- / end div .search-bar -->
      </div>
    </div>
  </section>
  <!-- end post-wrapper-top -->

  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="col-lg-4 col-md-4 col-sm-4">
        
         
         	 <div class="portfolio_details">
            <div class="details_section">
              <h3>关于${xyz.name }</h3>
              <p>${xyz.info }</p>
              <hr>
              <ul>
                <li class="version">题库名称 <span><a href="#">关于${xyz.name }</a></span></li>
                <li class="update">题库类型： <span><a href="#">关于${xyz.type }</a></span></li>
                <li class="release"><%-- 在线预览 <span><a href="file/javaEE.docx">${xyz.path}</a></span> --%></li>
                <%-- <li class="release"><a href="${xyz.path}" download="javaEE.docx"><font size=10>点击下载</font></a></li> --%>
                <li class="release"><a href="${xyz.path}" download="${xyz.path}".substring(file.lastIndexOf('/')+1)><font size=10>点击下载</font></a></li>
                
                
                
               <%--  <%
               		 String file = request.getParameter("path");
               		 String newfile = file.substring(file.lastIndexOf('/')+1);
                
                %> --%>
                <%-- <li class="release"><a href="${xyz.path}" download=newfile><font size=10>点击下载</font></a></li> --%>
              </ul>
            </div>
            <!-- details section -->
          </div>
          <!-- theme details -->
         
          
        </div>
        <!-- end col-lg 8 -->

        <div class="col-lg-8 col-md-8 col-sm-12">
          <div class="item_image">
            <div id="myCarousel" class="carousel slide">
              <div class="carousel-inner">
                <div class="item active">
                  <img src="${xyz.img }" alt="" width="710px" height="544px">
                </div>
                <!-- end item -->
                <!-- <div class="item">
                  <img src="img/slides_02.jpg" alt="">
                </div>
                end item
                <div class="item">
                  <img src="img/slides_03.jpg" alt="">
                </div>
                <! -- end item -- -->>
              </div>
              
              <!-- carousel inner -->
              <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								<span class="icon-prev"></span>
							</a>
              <a class="right carousel-control" href="#myCarousel" data-slide="next">
								<span class="icon-next"></span>
							</a>
            </div>
            <!-- end carousel -->
          </div>
          <!-- end item_image -->
        </div>
        <!-- end col-lg 8 -->

        <div class="clearfix"></div>

        <ul class="pager">
          <li class="previous">
            <a href="#">← Older</a>
          </li>
          <li class="next">
            <a href="#">Newer →</a>
          </li>
        </ul>

        <div class="clearfix"></div>
        <hr>

        <div class="portfolio-wrapper related_items">
          <h4 class="title">相关课程</h4>

					<div id="owl-related" class="owl-carousel">

						<div class="item">
							<a href="#"> <img class="lazyOwl" src="img/portfolio_02.jpg"
								data-src="img/portfolio_02.jpg" alt="">
								<div>
									<small>Item Category</small> <span>Project Name</span> <i
										class="fa fa-link"></i>
								</div>
							</a>
						</div>

						<div class="item">
							<a href="#"> <img class="lazyOwl" src="img/portfolio_05.jpg"
								data-src="img/portfolio_05.jpg" alt="">
								<div>
									<small>Item Category</small> <span>Project Name</span> <i
										class="fa fa-link"></i>
								</div>
							</a>
						</div>

						<div class="item">
							<a href="#"> <img class="lazyOwl" src="img/portfolio_08.jpg"
								data-src="img/portfolio_08.jpg" alt="">
								<div>
									<small>Item Category</small> <span>Project Name</span> <i
										class="fa fa-link"></i>
								</div>
							</a>
						</div>

					</div>
					<!-- end related_items -->
        </div>
        <!-- owl-related -->
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->
</c:forEach>
  <footer class="footer">
    <div class="container">
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">About us</h4>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s..</p>
        <a class="button small" href="#">read more</a>
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Recent Posts</h4>
        <ul class="recent_posts">
          <li>
            <a href="首页1.html#">
						<img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here</a>
            <a class="readmore" href="#">read more</a>
          </li>
          <li>
            <a href="首页1.html#">
						<img src="img/recent_post_02.png" alt="" />Design Is In The Air</a>
            <a class="readmore" href="#">read more</a>
          </li>
        </ul>
        <!-- recent posts -->
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Get In Touch</h4>
        <ul class="contact_details">
          <li><i class="fa fa-envelope-o"></i> info@yoursite.com</li>
          <li><i class="fa fa-phone-square"></i> +34 5565 6555</li>
          <li><i class="fa fa-首页"></i> Some Fine Address, 887, Madrid, Spain.</li>
          <li><a href="#"><i class="fa fa-map-marker"></i> View large map</a></li>
        </ul>
        <!-- contact_details -->
      </div>
      <!-- end widget -->
      <div class="widget col-lg-3 col-md-3 col-sm-12">
        <h4 class="title">Flickr Stream</h4>
        <ul class="flickr">
          <li><a href="#"><img alt="" src="img/flickr_01.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_02.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_03.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_04.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_05.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_06.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_07.jpg"></a></li>
          <li><a href="#"><img alt="" src="img/flickr_08.jpg"></a></li>
        </ul>
      </div>
      <!-- end widget -->
    </div>
    <!-- end container -->

    <div class="copyrights">
      <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-12 columns footer-left">
          <p>Copyright © 2014 - All rights reserved.</p>
          <div class="credits">
            More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
          </div>
        </div>
        <!-- end widget -->
        <div class="col-lg-6 col-md-6 col-sm-12 columns text-right">
          <div class="footer-menu right">
            <ul class="menu">
              <li><a href="index.html">首页</a></li>
              <li><a href="about.html">About</a></li>
              <li><a href="#">Sitemap</a></li>
              <li><a href="#">Site Terms</a></li>
              <li><a href="contact">Contact</a></li>
            </ul>
          </div>
        </div>
        <!-- end large-6 -->
      </div>
      <!-- end container -->
    </div>
    <!-- end copyrights -->
  </footer>
  <!-- end footer -->
  <div class="dmtop">Scroll to Top</div>

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/php-mail-form/validate.js"></script>
  <script src="lib/prettyphoto/js/prettyphoto.js"></script>
  <script src="lib/isotope/isotope.min.js"></script>
  <script src="lib/hover/hoverdir.js"></script>
  <script src="lib/hover/hoverex.min.js"></script>
  <script src="lib/unveil-effects/unveil-effects.js"></script>
  <script src="lib/owl-carousel/owl-carousel.js"></script>
  <script src="lib/jetmenu/jetmenu.js"></script>
  <script src="lib/animate-enhanced/animate-enhanced.min.js"></script>
  <script src="lib/jigowatt/jigowatt.js"></script>
  <script src="lib/easypiechart/easypiechart.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
pt>
  <script src="lib/animate-enhanced/animate-enhanced.min.js"></script>
  <script src="lib/jigowatt/jigowatt.js"></script>
  <script src="lib/easypiechart/easypiechart.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>
