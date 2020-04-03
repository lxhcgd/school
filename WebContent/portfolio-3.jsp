<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>实战课程页</title>
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
                <li><a href="load.jsp">首页</a>
                </li>
                <li><a href="portfolio-3.jsp">实战课程</a></li>
              	<li><a href="#">直播课</a></li>
              	<li><a href="services.jsp">专栏</a></li>
              	<li><a href="SelectAllBankServlet">题库</a></li>
              	<li><a href="#">购物车</a></li>
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
          <li>实战课程</li>
        </ul>
        <h2>最新实战课程</h2>
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

  <section class="section1" border="1px">
    <div class="container clearfix" >
      <div class=" col-lg-12 col-md-12 col-sm-12 clearfix">

        <div class="divider"></div>

        <nav class="portfolio-filter clearfix">
          <ul>
            <li><a href="#" class="dmbutton2" data-filter="*">全部 (6)</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".mockups">前端开发</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".graphic-design">后端开发</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">移动开发</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">计算机基础</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">前沿技术</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">云计算&大数据</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">运维&测试</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">数据库</a></li>
            <li><a href="#" class="dmbutton2" data-filter=".web-design">UI设计&多媒体</a></li>
          </ul>
        </nav>

        <div class="portfolio-centered">
          <div class="recentitems portfolio">

           <c:forEach var="xyz" items="${requestScope.list }">
            
            	<div class="portfolio-item col-lg-4 col-md-4 col-sm-4 col-xs-12 mockups">
              <div class="he-wrap tpl6 market-item">
                <img src="${xyz.img }" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown"><font size="0.3">${xyz.name }</font></h3>
                    <a data-rel="prettyPhoto" href="${xyz.img }" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                   <!--  链接到实战课程详细信息页--------------------------->
                   <!--  链接到实战课程详细信息页 --------------------------->
                   <!--  链接到实战课程详细信息页 --------------------------->
                    <a href="SelectGoodsInfoServlet?goodsid=${xyz.goodsid }" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    <!-- portfolio_category -->
                  </div>
                  <!-- he bg -->
                </div>
                <!-- he view -->
              </div>
              <!-- he wrap -->
              <h3 class="title">${xyz.name }</h3>
              <p>${xyz.info }</p>
              <div style="display:block">
              	<a href="#" style="float:left">${xyz.price }</a>
              	<a href="#" style="margin-left:5px"><s ><font color="gray">${xyz.goldprice }</font></s></a>
              	<a href="#" style="float:right">了解详情</a>
              </div>
              <span style="background:red;color:white">限时优惠</span>
              
            </div>
            <!-- end col-4 -->
            
            </c:forEach>
            
          <!-- 分页功能   -->
          <br>
          <p >
          	<span style="margin-left:400px;">一共${requestScope.sum }页</span> &nbsp;&nbsp;&nbsp;&nbsp;
            <a href="selectAllGoodsServlet?current=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="selectAllGoodsServlet?current=${current-1 }">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="selectAllGoodsServlet?current=${current+1 }">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="selectAllGoodsServlet?current=${requestScope.sum }">尾页</a>&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
          ${msg }
		




            <!-- <div class="portfolio-item col-lg-2 col-md-2 col-sm-2 col-xs-12 web-design graphic-design">
              <div class="he-wrap tpl6 market-item">
                <img src="img/portfolio_02.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">Project Name Here</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_02.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 2</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-4

            <div class="portfolio-item col-lg-2 col-md-2 col-sm-2 col-xs-12 graphic-design">
              <div class="he-wrap tpl6 market-item">
                <img src="img/portfolio_03.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">Project Name Here</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_03.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 3</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-4

            <div class="portfolio-item col-lg-2 col-md-2 col-sm-2 col-xs-12 mockups">
              <div class="he-wrap tpl6 market-item">
                <img src="img/portfolio_04.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">Project Name Here</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_04.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 4</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-12

            <div class="portfolio-item col-lg-2 col-md-2 col-sm-2 col-xs-12 web-design">
              <div class="he-wrap tpl6 market-item">
                <img src="img/portfolio_05.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">Project Name Here</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_05.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 5</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-12

            <div class="portfolio-item col-lg-2 col-md-2 col-sm-2 col-xs-12 web-design">
              <div class="he-wrap tpl6 market-item">
                <img src="img/portfolio_06.jpg" alt="">
                <div class="he-view">
                  <div class="bg a0" data-animate="fadeIn">
                    <h3 class="big a1" data-animate="fadeInDown">Project Name Here</h3>
                    <a data-rel="prettyPhoto" href="img/portfolio_06.jpg" class="dmbutton a2" data-animate="bounceInLeft"><i class="fa fa-search"></i></a>
                    <a href="#" class="dmbutton a2" data-animate="bounceInRight"><i class="fa fa-link"></i></a>
                    <div class="portfolio_category text-center a2" data-animate="fadeIn">
                    </div>
                    portfolio_category
                  </div>
                  he bg
                </div>
                he view
              </div>
              he wrap
              <h3 class="title">Project Name - 6</h3>
              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy..</p>
            </div>
            end col-12 -->

          </div>
          <!-- portfolio -->
        </div>
        <!-- portfolio container -->
        <div class="divider"></div>
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
              <li><a href="load.jsp">首页</a></li>
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
