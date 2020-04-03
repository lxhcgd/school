<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>登录页</title>
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
<!-- *************************Cookie************************************** -->
	<%
		String usernameCookie = null;
		String passwordCookie = null;
		//取出所有Cookie
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			//将cookie中的用户名和密码取出
			for(int i =0 ;i< cookies.length;i++){
				if("username".equals(cookies[i].getName())){
					usernameCookie = cookies[i].getValue();
				}
				if("password".equals(cookies[i].getName())){
					passwordCookie = cookies[i].getValue();
				}
			}
		}
		//如果用户名和密码都不为空，那么证明登陆过，直接跳到LoginServlet
		if(usernameCookie!=null&&passwordCookie!=null){
			request.getRequestDispatcher("LoginServlet?username="+usernameCookie+"&password="+passwordCookie).forward(request, response);
		}
	%>
<!-- *************************Cookie************************************** -->
  <div class="topbar clearfix">
    <div class="container">
      <div class="col-lg-12 text-right">
        <div class="social_buttons">
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Google+"><i class="fa fa-google-plus"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble"></i></a>
          <a href="#" data-toggle="tooltip" data-placement="bottom" title="RSS"><i class="fa fa-rss"></i></a>
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
                <li><a href="load.jsp">首页</a></li>
                <li><a href="#">免费课程</a></li>
              	<li><a href="#">直播课</a></li>
              	<li><a href="#">专栏</a></li>
              	<li><a href="gallery-portfolio.jsp">题库</a></li>
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

    

  <section class="section1">
    <div class="container clearfix">
      <div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
        <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title">
                    	<span>Welcome Back!</span>
                    </h4>
          <p>多年来，我们致力于扎根行业、深入场景进行设计和创新，为各行业提供网站解决方案，为客户创造新价值。</p>
          <p>在这里，你可以实现你的梦想，认识到学习，永远不晚。</p>
          <p class="withpadding">还没注册? <a href="register.jsp">点击这里</a> 立即注册.</p>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12">
          <h4 class="title"><span>登录</span></h4>
          
          <%String msg =(String)request.getAttribute("msg");
		  if(msg!=null&&!"".equals(msg)){%>
			  <font color="red">
			 	 ${msg }
			  </font>
		  <%}%>
		  
		  <%-- <!-- 获取上一个页面的url -->
		  <%
		  	String url = (String)request.getAttribute("url");
		  %> --%>
		  
		  
          <form id="loginform" method="post" name="loginform" >
          
          	<%-- <input type="hidden" name="CountCar" value="${requestScope.CountCar }"> --%>
          	<input type="hidden" name="url" value="${requestScope.url }">
          	<input type="hidden" name="goodsid1" value="${requestScope.goodsid1 }">
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                <input type="text" class="form-control" placeholder="Username" id="username" name="username" onblur="validate()">
                <span class="input-group-addon" id="span1"></span>
              </div>
            </div>
            <div class="form-group">
              <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                <input type="password" class="form-control" placeholder="Password" id="password" name="password">
                <span class="input-group-addon" id="span2"></span>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                	<input type="checkbox" name="che"> 记住密码
                </label>
              </div>
            </div>
            <div class="form-group">
              <input type="button" onclick="fun()" value="登录" >
            </div>
          </form>
  
        </div>
        <!-- end login -->
      </div>
      <!-- end content -->
    </div>
    <!-- end container -->
  </section>
  <!-- end section -->

<script type="text/javascript">
		var xmlHttp;
		function createXMLHttpRequest(){
			if (window.ActiveXObject) {
		        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
		    } else if (window.XMLHttpRequest) {
		        xmlHttp = new XMLHttpRequest();
		    }
		}
		function validate(){
			//alert("11");
			//ajax编程
			//1.创建ajax核心对象
			createXMLHttpRequest();
			//2.使用open方法发出ajax请求
			var uname = document.getElementById("username").value;
			//alert(uname);
			var url = "ValidateNameService?username="+escape(uname);
			//escape加密
			//true---异步提交
			xmlHttp.open("GET",url,true);
			//alert("222")
			//3.当状态发生变化的时候，调用函数
			xmlHttp.onreadystatechange = callback;
			xmlHttp.send(null);
		}
		function  callback(){
			//readyState == 4意味着服务器端返回给客户端响应
			if(xmlHttp.readyState==4){
				if(xmlHttp.status ==200){
					//获得服务器端返回给客户端的字符串
					document.getElementById("span1").innerHTML = xmlHttp.responseText;
				}
			}
		}




	//登录是否为空验证
	function fun(){
		var username = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		//flag用来标记用户名和密码为空情况
		var flag = 0;
		if(username==null||username==""){
			document.getElementById("span1").innerHTML = "用户名不能为空";
			document.getElementById("span1").style.color="red";
			flag = 1;
		}
		if(password==null||password==""){
			document.getElementById("span2").innerHTML = "密码不能为空";
			document.getElementById("span2").style.color="red";
			flag = 1;
		}
		if(flag == 0 ){
			//用户名和密码都不为空使
			var f1 = document.getElementById("loginform");
			f1.action = "/school/LoginServlet";
			f1.submit();
		}
	}
</script>




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
          <p>Copyright Â© 2014 - All rights reserved.</p>
          <div class="credits">
            More Templates <a href="http://www.cssmoban.com/" target="_blank" title="æ¨¡æ¿ä¹å®¶">æ¨¡æ¿ä¹å®¶</a> - Collect from <a href="http://www.cssmoban.com/" title="ç½é¡µæ¨¡æ¿" target="_blank">ç½é¡µæ¨¡æ¿</a>
          </div>
        </div>
        <!-- end widget -->
        <div class="col-lg-6 col-md-6 col-sm-12 columns text-right">
          <div class="footer-menu right">
            <ul class="menu">
              <li><a href="index.jsp">Home</a></li>
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
