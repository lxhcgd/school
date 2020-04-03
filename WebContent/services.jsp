<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                <li><a href="load.jsp">首页</a></li>
                <li><a href="selectAllGoodsServlet?current=1">实战课程</a></li>
              	<li><a href="#">直播课</a></li>
              	<li><a href="services.jsp">专栏</a></li>
              	<li><a href="SelectAllBankServlet">题库</a></li>
              	<li><a href="#">购物车</a></li>
              	<li><a href="#">个人中心</a></li>
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
          <li>专栏</li>
        </ul>
        <h2>专栏</h2>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <!-- search -->
        <div class="search-bar">
          <form action="" method="get">
            <fieldset>
              <input type="image" src="img/pixel.gif" class="searchsubmit" alt="" />
              <input type="text" class="search_text showtextback" name="s" id="s" value="Search on this site..." />
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

        <div class="clearfix"></div>

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="#" class=""> <i class="active dm-icon fa fa-eye fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>日语</h4>
                <hr>
              </div>
              <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="#" class=""> <i class="active dm-icon fa fa-cogs fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>礼仪</h4>
                <hr>
              </div>
              <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="#" class=""> <i class="active dm-icon fa fa-print fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>办公技能</h4>
                <hr>
              </div>
              <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->

        <div class="col-lg-3 col-md-3 col-sm-3">
          <div class="servicebox text-center">
            <div class="service-icon">
              <div class="dm-icon-effect-1" data-effect="slide-bottom">
                <a href="blog-right-sidebar.html" class=""> <i class="active dm-icon fa fa-desktop fa-3x"></i> </a>
              </div>
              <div class="servicetitle">
                <h4>热门博客</h4>
                <hr>
              </div>
              <p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
            <!-- service-icon -->
          </div>
          <!-- servicebox -->
        </div>
        <!-- large-3 -->


        <div class="clearfix"></div>
        <div class="divider"></div>

        <div class="tabbable servicetab tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="services.html#webdesign" data-toggle="tab"><i class="fa fa-laptop"></i> 语言学习</a></li>
            <li><a href="services.html#webdevelopment" data-toggle="tab"><i class="fa fa-cogs"></i> 实战课程学习</a></li>
            <li><a href="services.html#seoservices" data-toggle="tab"><i class="fa fa-print"></i> 更多热门文章</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="webdesign">
              <h5 class="title"><i class="fa fa-laptop"></i> 关于语言学习</h5>
              <div class="row">
                <div class="col-lg-6">
                  <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst.
                    In vitae nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. Nunc pretium magna eu est condimentum
                    malesuada. Nunc arcu nulla, fringilla in sodales sed, laoreet eget mi. Fusce ac suscipit turpis, sed porttitor mauris.</p>

                  <p>Integer convallis justo augue, et condimentum tortor scelerisque ut. Ut mattis ullamcorper lacinia. Donec dignissim eu dui non ultrices. Fusce ullamcorper suscipit ante, eget ultrices ipsum faucibus sagittis. Nunc eu elit orci. Etiam
                    id orci vitae mauris bibendum molestie sit amet sed neque. Cras malesuada vulputate orci sed molestie. Phasellus accumsan nunc sit amet egestas suscipit. Duis non ipsum ac risus consequat dapibus placerat sed dui. Sed vitae risus scelerisque
                    purus euismod ornare. Phasellus ultricies ante vitae molestie adipiscing. </p>
                </div>

                <div class="col-lg-6">
                  <img class="img-responsive" src="img/slider_01.png" alt="">
                </div>
              </div>
            </div>
            <div class="tab-pane" id="webdevelopment">
              <h5 class="title"><i class="fa fa-cogs"></i> 关于实战课程</h5>
              <div class="row">
                <div class="col-lg-6">
                  <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst.
                    In vitae nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. Nunc pretium magna eu est condimentum
                    malesuada. Nunc arcu nulla, fringilla in sodales sed, laoreet eget mi. Fusce ac suscipit turpis, sed porttitor mauris.</p>

                  <p>Integer convallis justo augue, et condimentum tortor scelerisque ut. Ut mattis ullamcorper lacinia. Donec dignissim eu dui non ultrices. Fusce ullamcorper suscipit ante, eget ultrices ipsum faucibus sagittis. Nunc eu elit orci. Etiam
                    id orci vitae mauris bibendum molestie sit amet sed neque. Cras malesuada vulputate orci sed molestie. Phasellus accumsan nunc sit amet egestas suscipit. Duis non ipsum ac risus consequat dapibus placerat sed dui.</p>
                </div>

                <div class="col-lg-6">
                  <img class="img-responsive" src="img/slider_02.png" alt="">
                </div>
              </div>
            </div>
            <div class="tab-pane" id="seoservices">
              <h5 class="title"><i class="fa fa-print"></i> 热门文章</h5>
              <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst.
                In vitae nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. Nunc pretium magna eu est condimentum malesuada.
                Nunc arcu nulla, fringilla in sodales sed, laoreet eget mi. Fusce ac suscipit turpis, sed porttitor mauris.</p>

              <p>Integer convallis justo augue, et condimentum tortor scelerisque ut. Ut mattis ullamcorper lacinia. Donec dignissim eu dui non ultrices. Fusce ullamcorper suscipit ante, eget ultrices ipsum faucibus sagittis. Nunc eu elit orci. Etiam id
                orci vitae mauris bibendum molestie sit amet sed neque. Cras malesuada vulputate orci sed molestie. Phasellus accumsan nunc sit amet egestas suscipit. Duis non ipsum ac risus consequat dapibus placerat sed dui. Sed vitae risus scelerisque
                purus euismod ornare. Phasellus ultricies ante vitae molestie adipiscing. </p>
            </div>
          </div>
        </div>

        <div class="clearfix"></div>

        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="widget" data-effect="slide-left">
            <h3 class="title">Why Choose us?</h3>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s..</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry..</p>
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ever since the..</p>
            <a class="button small" href="#">read more</a>
          </div>
          <!-- end widget -->
        </div>
        <!-- large-6 -->

        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="widget" data-effect="slide-bottom">
            <h3 class="title"><i class="fa fa-laptop"></i> Web Design Service</h3>
            <ul class="check">
              <li><a href="#">5+ homepage style (check features menu)</a></li>
              <li><a href="#">Compatible any eCommerce solutions</a></li>
              <li><a href="#">Limitless color combinations</a></li>
              <li><a href="#">Limitless page templates (15+ custom pages)</a></li>
              <li><a href="#">100% responsive layout design</a></li>
              <li><a href="#">Awesome slideshows for your contents</a></li>
              <li><a href="#">Super awesome portfolio sections</a></li>
              <li><a href="#">700+ custom font icons included</a></li>
            </ul>
          </div>
          <!-- end widget -->
        </div>
        <!-- large-6 -->

        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="widget" data-effect="slide-right">
            <h3 class="title"><i class="fa fa-cogs"></i> Web Development Service</h3>
            <ul class="check">
              <li><a href="#">Included custom slideshow plugins </a></li>
              <li><a href="#">Compatible any eCommerce solutions</a></li>
              <li><a href="#">Custom widgets and sidebar areas</a></li>
              <li><a href="#">Retina display ready</a></li>
              <li><a href="#">Modern and clean style!</a></li>
              <li><a href="#">Professional support help and desk</a></li>
              <li><a href="#">500+ Google fonts included (use very easy)</a></li>
            </ul>
          </div>
          <!-- end widget -->
        </div>
        <!-- large-6 -->


      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

  <section class="section3">
    <div class="container withpadding">
      <div class="message">
        <div class="col-lg-9 col-md-9 col-sm-9">
          <h3>Grab the attention of your customers!</h3>
          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since the 1500s..</p>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12">
          <a class="dmbutton button large pull-right" href="#"><i class="fa fa-download"></i> GET A QUOTE</a>
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

</html>tml>
