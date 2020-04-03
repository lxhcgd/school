<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>MaxiBiz Bootstrap Business Template</title>
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

  <header class="header">
    <div class="container">
      <div class="site-header clearfix">
        <div class="col-lg-3 col-md-3 col-sm-12 title-area">
          <div class="site-title" id="title">
            <a href="load.jsp" title="首页">
              <img  src="image/logo1.png" />
            </a>
          </div>
        </div>
        <!-- title area -->
        <div class="col-lg-9 col-md-12 col-sm-12">
          <div id="nav" class="right">
            <div class="container clearfix">
              <ul id="jetmenu" class="jetmenu blue">
               <li class="active"><a href="load.jsp">首页</a></li>
                
              	<li><a href="selectAllGoodsServlet?current=1">实战课程</a></li>
              	<!-- <li><a href="404.html">直播课</a></li> -->
              	<li><a href="services.jsp">专栏</a></li>
              	<!-- <li><a href="blog-right-sidebar.html">博客</a></li> -->
              	<li><a href="SelectAllBankServlet?current=1">题库</a></li>
              	<li><a href="about.jsp">关于我们</a>
                
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
          <li><a href="load.jsp">首页</a></li>
          <li>关于我们</li>
        </ul>
        <h2>关于我们</h2>
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
        <div class="general-title text-center">
          <h3>关于我们</h3>
          <p>什么是上课网？</p>
          <hr>
        </div>
        <div class="divider"></div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <div class="he-wrap tpl2">
            <img src="img/office.png" alt="" class="img-responsive">
            <div class="he-view">
              <div class="bg a0" data-animate="fadeIn">
                <div class="center-bar">
                  <a href="#" class="twitter a0" data-animate="elasticInDown"></a>
                  <a href="#" class="facebook a1" data-animate="elasticInDown"></a>
                  <a href="#" class="google a2" data-animate="elasticInDown"></a>
                </div>
              </div>
            </div>
          </div>
          <!-- he wrap -->
        </div>
        <!-- end col-6 -->

        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
          <p>源于国外，Massive（大规模）Open（开放）Online（在线）Course（课程）。</p>

          <p>专注做好IT技能教育的MOOC，符合互联网发展潮流接地气儿的MOOC。我们免费，我们只教有用的，我们专心做教育。</p>

          <p>慕课网的小伙伴希望所有热爱互联网的同学能更加便捷的获取学习资源，用互联网思维改变我们的学习。<br>我们提供最新的知识，帮你应对变化的世界！</p>

          <p>做更多实用的课程，做更好体验的产品，研究更牛的技术！</p>
          <p>让更多热爱互联网的同学来慕课网学习，多年以后，圈子里一批技术牛说：我在慕课网学习过，这就够了。</p>
        </div>
        <!-- end col-6 -->
      </div>
    </div>
    <!-- end container -->
  </section>
  <!-- end section 1 -->

  <div class="clearfix"></div>
  <div class="divider"></div>

  <div class="container">
    <div class="general-title text-center">
      <h3>我们能做什么？</h3>
      <p>Our skills information</p>
      <hr>
    </div>

    <div class="skills text-center">
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <span class="chart" data-percent="90">
                        <span class="percent"></span>
        </span>
        <h4 class="title">HTML5 & CSS3</h4>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <span class="chart" data-percent="75">
                        <span class="percent"></span>
        </span>
        <h4 class="title">WordPress</h4>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <span class="chart" data-percent="65">
                        <span class="percent"></span>
        </span>
        <h4 class="title">Graphic Design</h4>
      </div>

      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
        <span class="chart" data-percent="80">
                        <span class="percent"></span>
        </span>
        <h4 class="title">Mobile Applications</h4>
      </div>
    </div>
    <!-- end skills -->
  </div>
  <!-- end container -->

  <div class="clearfix"></div>
  <div class="divider"></div>

  <section class="section1">
    <div class="container">
      <div class="general-title text-center">
        <h3>一些统计</h3>
        <p>Important information about us</p>
        <hr>
      </div>

      <div class="stat f-container">
        <div class="f-element col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <i class="fa fa-film fa-4x"></i>
          <div class="milestone-counter">
            <span class="stat-count highlight">42</span>
            <div class="milestone-details">Films Produced</div>
          </div>
        </div>
        <div class="f-element col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <i class="fa fa-laptop fa-4x"></i>
          <div class="milestone-counter">
            <span class="stat-count highlight">105</span>
            <div class="milestone-details">Completed Projects</div>
          </div>
        </div>
        <div class="f-element col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <i class="fa fa-comments-o fa-4x"></i>
          <div class="milestone-counter">
            <span class="stat-count highlight">492</span>
            <div class="milestone-details">Questions Answered</div>
          </div>
        </div>
        <div class="f-element col-lg-3 col-md-3 col-sm-6 col-xs-12">
          <i class="fa fa-smile-o fa-4x"></i>
          <div class="milestone-counter">
            <span class="stat-count highlight">790</span>
            <div class="milestone-details">Happy Clients</div>
          </div>
        </div>
      </div>
      <!-- end stat -->

    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

  <section class="section3">
    <div class="container withpadding">
      <div class="message">
        <div class="col-lg-9 col-md-9 col-sm-9">
          <h3>上课网是学习编程最简单的免费平台。!</h3>
          <p>上课网提供系统化学习路线,精心的教学服务,结合真实开发案例,打造html精品课程,让你快速入门,晋级前端工程师!</p>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12">
          <a class="dmbutton button large pull-right" href="selectAllGoodsServlet?current=1"><i class="fa fa-download"></i> 立刻学习</a>
        </div>
      </div>
      <!-- end message -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section3 -->






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
            <a href="home1.html#">
						<img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here</a>
            <a class="readmore" href="#">read more</a>
          </li>
          <li>
            <a href="home1.html#">
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
          <li><i class="fa fa-home"></i> Some Fine Address, 887, Madrid, Spain.</li>
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
              <li><a href="index.html">Home</a></li>
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
