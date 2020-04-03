<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>上课网首页</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
  

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
              	<li><a href="404.jsp">直播课</a></li>
              	<li><a href="services.jsp">专栏</a></li>
              	<!-- <li><a href="blog-right-sidebar.html">博客</a></li> -->
              	<li><a href="SelectAllBankServlet?current=1">题库</a></li>
              	<li><a href="about.jsp">关于我们</a>
              	<!-- <li><a href="account.html">我的订单</a></li> -->
              	
              	
              	<!-- 进行校验，如果登录，则显示购物车和个人中心 -->
          		<%String usernamea = (String)session.getAttribute("username");	
				if(usernamea!=null){%>
					<li><a href="SelectAllByUserIdToIndentServlet">购物车 
							<span class="badge">
							<!-- 5 -->
							${requestScope.countNum }
							
							</span>
					</a></li>
              		<!-- <li><a href="#">个人中心</a></li> -->
				<% }%>

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

  <section id="intro">
    <div class="container">
      <div class="ror">
        <div class="col-md-8 col-md-offset-2">
          <h1>程序员的梦工厂</h1>
          <p>IT职业技能在线教育品牌，为梦想增值</p>
        </div>
      </div>
    </div>
  </section>


  <section class="section1">
    <div class="container">
      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-left">
              <a href="services.jsp" class=""> <i class="active dm-icon fa fa-bars fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>职场提升</h4>
              <hr>
            </div>
            <p>
            	Web领域市场呼声最高的的主流技术栈逐一精讲
				技术与业务深度融合，赋能Java从业者拥有更强的职场适应力和工作竞争力
            	从Java后端走向全栈，适合你的才是好的，不要盲目下单
            </p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-4 -->

      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-bottom">
              <a href="selectAllGoodsServlet?current=1" class=""> <i class="active dm-icon fa fa-laptop fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>新上好课</h4>
              <hr>
            </div>
            <p>10年互联网老兵，前阿里P8级技术专家亲授,带你以更贴近实际工作的方式重学大学必修课</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-4 -->

      <div class="col-lg-4 col-md-4 col-sm-4">
        <div class="servicebox text-center">
          <div class="service-icon">
            <div class="dm-icon-effect-1" data-effect="slide-right">
              <a href="SelectAllBankServlet?current=1" class=""> <i class="active dm-icon fa fa-book fa-3x"></i> </a>
            </div>
            <div class="servicetitle">
              <h4>热门面试题库</h4>
              <hr>
            </div>
            <p>该专题为剑指offer专题，题目均来自《剑指offer》，里面每道题带有练习模式和考试模式，可还原考试模式进行模拟，也可通过练习模式进行练习。</p>
          </div>
          <!-- service-icon -->
        </div>
        <!-- servicebox -->
      </div>
      <!-- large-4 -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

  <section class="section5">
    <div class="container">
      <div class="col-lg-6 col-md-6 col-sm-12 columns">
        <div class="widget" data-effect="slide-left">
          <img src="image/a_2.jpg" alt="" height="540px" width="540px">
        </div>
        <!-- end widget -->
      </div>
      <!-- large-6 -->
      <div class="col-lg-6 col-md-6 col-sm-12 columns">
        <div class="widget clearfix">
          <div class="services_lists">

            <div class="services_lists_boxes clearfix">
              <div class="col-lg-3 col-md-3 col-sm-12">
                <div class="services_lists_boxes_icon" data-effect="slide-bottom">
                  <a href="selectAllGoodsServlet?current=1" class=""> <i class="active dm-icon-medium fa fa-key fa-2x"></i> </a>
                </div>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9">
                <div class="servicetitle">
                  <h4>精品课程</h4>
                  <hr>
                </div>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
              </div>
            </div>
            <!-- services_lists_boxes -->

            <div class="services_lists_boxes clearfix">
              <div class="col-lg-3 col-md-3 col-sm-12">
                <div class="services_lists_boxes_icon" data-effect="slide-bottom">
                  <a href="#" class=""> <i class="active dm-icon-medium fa fa-download fa-2x"></i> </a>
                </div>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9">
                <div class="servicetitle">
                  <h4>名师大咖</h4>
                  <hr>
                </div>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry"s standard..</p>
              </div>
            </div>
            <!-- services_lists_boxes -->


            <div class="services_lists_boxes clearfix">
              <div class="col-lg-3 col-md-3 col-sm-12">
                <div class="services_lists_boxes_icon_none" data-effect="slide-bottom">
                  <a href="#" class=""> <i class="active dm-icon-medium fa fa-dollar fa-2x"></i> </a>
                </div>
              </div>
              <div class="col-lg-9 col-md-9 col-sm-9">
                <div class="servicetitle">
                  <h4>职场提升</h4>
                  <hr>
                </div>
                <p>Lorem Ipsum is simply dummy text of the industry. Lorem Ipsum has been the industry"s standard dummy text ever since..</p>
              </div>
            </div>
            <!-- services_lists_boxes -->

          </div>
          <!-- services_lists -->
        </div>
        <!-- end widget -->
      </div>
      <!-- large-6 -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section2 -->

  <section class="section4 text-center">
    <div class="general-title">
      <h3>我们的课程</h3>
      <hr>
    </div>
    <div class="portfolio-wrapper">
      <div id="owl-demo" class="owl-carousel">

		<!-- //显示实战课程的全部 -->
		<c:forEach var="aa" items="${requestScope.list }">
	        <div class="item">
	          <a data-rel="prettyPhoto" href="img/portfolio_01.jpg">
	                        	<a><img class="lazyOwl" src="${aa.img }" data-src="${aa.img }" alt="" ></a>
	                        	<div>
	                                <small>${aa.name }</small>
	                                <span>Project Name Here</span>
	                                <i class="fa fa-search"></i>
	                            </div>
	          </a>
	        </div>

		</c:forEach>

      </div>
      <!-- end owl-demo -->
    </div>
    <!-- end portfolio-wrapper -->
    <a class="button large" href="selectAllGoodsServlet?current=1">查看更多课程</a>
  </section>
  <!-- end section1 -->

  <section class="section2">
    <div class="container">
      <div class="message text-center">
        <h2 class="big-title">你的 <span>知识量</span> 一定很丰富吧!</h2>
        <p class="small-title">立刻来题库检验一下？.</p>
        <a class="button large" href="selectAllGoodsServlet?current=1">实战课程</a> 
        <a class=" dmbutton large" href="SelectAllBankServlet?current=1">题库</a>
      </div>
      <!-- end message -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section2 -->
  <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >建站模板</a></div>








  <section class="section1 text-center">
    <div class="container">
      <div class="general-title">
        <h3>我们的团队</h3>
        <hr>
      </div>
      <div class="row">
      
      
      
      
      
      
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-effect="slide-bottom">
          <div class="custom-box">
            <div class="servicetitle">
              <h4>马化腾</h4>
              <hr>
            </div>
            <div class="icn-main-container">
              <img alt="" src="image/p_2.jpg">
              <!-- <span class="icn-container">$25</span> -->
            </div>
            <p>马化腾，汉族，1971年10月29日生于广东省东方县八所港（今属海南省东方市），
            	广东省汕头市潮南区人 [1-2]  。1993年获深圳大学理学学士学位。
            	腾讯公司主要创办人之一。现任腾讯公司董事会主席兼首席执行官；全国青联副主席；全国人大代表。</p>
            <a class="btn btn-primary" href="SelectAllTeacherServlet">更多团队大咖</a>
          </div>
          <!-- end custombox -->
        </div>
        <!-- end col-4 -->

        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-effect="slide-bottom">
          <div class="custom-box">
            <div class="servicetitle">
              <h4>马云</h4>
              <hr>
            </div>
            <div class="icn-main-container">
              <img alt="" src="image/p_4.jpg">
              <!-- <span class="icn-container">$55</span> -->
            </div>
            <p>1988年毕业于杭州师范学院外语系，同年担任杭州电子工业学院英文及国际贸易教师，
            1995年创办中国第一家互联网商业信息发布网站“中国黄页”，1998年出任中国国际电子商务中心国富通信息技术发展有限公司总经理，
            1999年创办阿里巴巴，并担任阿里集团CEO、董事局主席。</p>
            
            <a class="btn btn-primary" href="SelectAllTeacherServlet">更多团队大咖</a>
          </div>
          <!-- end custombox -->
        </div>
        <!-- end col-4 -->

        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12" data-effect="slide-bottom">
          <div class="custom-box">
            <div class="servicetitle">
              <h4>赵赤阳</h4>
              <hr>
            </div>
            <div class="icn-main-container">
              <img alt="" src="image/p_5.jpg">
              <!-- <span class="icn-container">$98</span> -->
            </div>
            <p>项目经验： 日本某世界五百强企业(制造业)，负责SAP系统的二次开发,测试和维护、日本某综合建材龙头企业(制造业)，
           	 负责系统的二次开发,测试和维护、某大型企业，负责系统的改修和维护、日本某大型制造业，负责系统的upgrade 
            	技术擅长：精通Java编程语言、JavaEE（JSP,Servlet）企业应用架构与设计，
          	 精通Spring、SpringMVC、MyBatis、JSF、Hibernate、Struts2等主流开源框架和SAP。
 			</p>
            <a class="btn btn-primary" href="SelectAllTeacherServlet">更多团队大咖</a>
          </div>
          <!-- end custombox -->
        </div>
        <!-- end col-4 -->








      </div>
    </div>
    <!-- end container -->
  </section>
  <!-- end section1 -->






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
              <li><a href="index.html">首页2</a></li>
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
