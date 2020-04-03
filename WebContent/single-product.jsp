<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>实战课程详细信息页</title>
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
            <a href="index.jsp" title="">
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
                <li><a href="selectAllGoodsServlet">实战课程</a></li>
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

<!-- school_goods表 -->
<c:forEach var="xyz" items="${requestScope.list }">
  <section class="post-wrapper-top">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
        <ul class="breadcrumb">
          <li><a href="load.jsp">首页</a></li>
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

  <section class="marketplace-top">
    <div id="market-wrapper">
      <div class="item_image">
        <img data-effect="fade" class="aligncenter" width="1260" height="400" src="${xyz.img }" alt="">
      </div>
      <!-- end item_image -->
    </div>
  </section>

  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="general-title text-center">
          <h3>${xyz.name }</h3>
          <p>${xyz.info }</p>
          <hr>
        </div>

        <div class="divider"></div>

        <div class="item_details">

          <div class="col-lg-3 col-md-3 col-sm-12">
            <div class="theme_details">
              <div class="details_section">
                <h3>${xyz.name }</h3>
                <ul>
                  <li class="version">原价格 <span>${xyz.goldprice }</span></li>
                  <li class="release">名师团队 <span>赵赤阳</span></li>
                  <li class="designer">课程描述 <span>${xyz.info }</span></li>
                                    </ul>
                            </div>
                        </div>
                    </div><!-- col-lg-3 -->

                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="theme_details">
                            <div class="item-description">
                            	<p>从学习角度看，C++是一门“见效慢”的语言；学习曲线陡峭，语言本身复杂。但，如果你想了解很多编程语言的思想源泉，想要一窥大型企业级开发工程的思路，
                            	想开发别人做不了的高性能程序，那C++就是你的不二之选。
                            	如果你想成为一名资深开发人员，想一窥底层细节，那么，这门课就是为你设计的。课程将从C++的发展史讲起，从知识与思想层面 从0带你构建C++知识框架，
                            	并会分享讲师亲历的大型项目实践思路，为你打下坚实的基础</p>
                                <p>都2020了，为什么我们还要学C++
									因为在贴近底层、追求性能、降低功耗方面，C++几乎没有敌手，小到嵌入式、大
									到分布式，C++都是解决问题的利器，面向物联网的“嵌入式”开发和面向大型化的
								“分布式”开发都离不开它5G即来，C++在起势，你不抓住吗?</p>
                            </div><!-- item-description -->
                        </div><!-- theme_details -->
                    </div><!-- col-lg-6 -->

                    <div class="col-lg-3 col-md-3 col-sm-12">
                        <div class="theme_details">
                        	<div class="item_price">
                            	<h3><span><small>$</small><sapn>${xyz.price }</sapn></span></h3>
              </div>
              <!-- item_price -->
              <hr>
              <div class="buttons">
                <!-- <a class="button btn-block large" href="#">SEE GALLERY</a> -->
                <a class="button btn-block large" href="InsertGoodsOfSelectGoodsByIdtServlet?goodsid=${xyz.goodsid }&name=${xyz.name }&price=${xyz.price }&num=${xyz.num }&img=${xyz.img }&url=${requestScope.url }">
                <i class="fa fa-download"></i>加入购物车</a>
              </div>
              <!-- buttons -->
              <hr>
              <div class="rating text-center">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star-o"></i>
                <p>Users Rating</p>
              </div>
              <!-- rating -->
            </div>
            <!-- theme_details -->
          </div>
          <!-- col-lg-3 -->

        </div>
        <!-- item_details -->

        <div class="clearfix"></div>

        <div class="general-title text-center">
          <h3>Product Features</h3>
          <p>More information about your product</p>
          <hr>
        </div>

        <div class="divider"></div>
        <div class="theme_overviews clearfix">
          <div class="col-lg-4 col-md-4 col-sm-12 first">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-arrows"></i>
              </div>
              <header>
                <h3>Different Sizes</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-heart"></i>
              </div>
              <header>
                <h3>HandMade in Italy</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 last">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-lock"></i>
              </div>
              <header>
                <h3>Secure Metal Zip</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 first">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-trophy"></i>
              </div>
              <header>
                <h3>Premium Design</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-cloud"></i>
              </div>
              <header>
                <h3>Softly Padded</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 last">
            <div class="services">
              <div class="icon-container">
                <i class="fa fa-pencil"></i>
              </div>
              <header>
                <h3>Signed Product</h3>
              </header>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
          </div>

        </div>
        <!-- theme / Products overview -->

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
            <a href="home1.jsp#">
						<img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here</a>
            <a class="readmore" href="#">read more</a>
          </li>
          <li>
            <a href="home1.jsp#">
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
              <li><a href="index.jsp">首页</a></li>
              <li><a href="about.jsp">About</a></li>
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
