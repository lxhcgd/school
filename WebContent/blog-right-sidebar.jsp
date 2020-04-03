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
          <a href="index.html" title="">
            <h4>MAXI<span>BIZ</span></h4>
          </a>
        </div>
      </div>
      <!-- title area -->
      <div class="col-lg-9 col-md-12 col-sm-12">
        <div id="nav" class="right">
          <div class="container clearfix">
            <ul id="jetmenu" class="jetmenu blue">
              <li><a href="index.html">Home</a>
              </li>
              <li><a href="#">Pages</a>
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
              <li><a href="#">Portfolio</a>
                <ul class="dropdown">
                  <li><a href="single-portfolio-1.html">Single Portfolio 1</a></li>
                  <li><a href="single-portfolio-2.html">Single Portfolio 2</a></li>
                  <li><a href="portfolio-2.html">Portfolio (2 Columns)</a></li>
                  <li><a href="portfolio-3.html">Portfolio (3 Columns)</a></li>
                  <li><a href="gallery-portfolio.html">Gallery</a></li>
                  <li><a href="masonry-grid-portfolio.html">Masonry Grid Style</a></li>
                </ul>
              </li>
              <li class="active"><a href="#">Blog</a>
                <ul class="dropdown">
                  <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                  <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                  <li><a href="single-with-sidebar.html">Single with Sidebar</a></li>
                </ul>
              </li>
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
        <li><a href="index.html">Home</a></li>
        <li>Blog Right Sidebar</li>
      </ul>
      <h2>BLOG RIGHT SIDEBAR</h2>
    </div>
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
      <!-- search -->
      <div class="search-bar">
        <form action="" method="get">
          <fieldset>
            <input type="image" src="images/pixel.gif" class="searchsubmit" alt="" />
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
    <div class="content col-lg-8 col-md-8 col-sm-8 col-xs-12 clearfix">

      <!-- SLIDE POST -->
      <article class="blog-wrap text-center">
        <div class="blog-media">
          <div id="myCarousel" class="carousel slide">
            <div class="carousel-inner">
              <div class="item active">
                <img src="img/slides_01.jpg" alt="">
              </div>
              <!-- end item -->
              <div class="item">
                <img src="img/slides_02.jpg" alt="">
              </div>
              <!-- end item -->
              <div class="item">
                <img src="img/slides_03.jpg" alt="">
              </div>
              <! -- end item -->
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

        <header class="page-header blog-title">
          <div class="author-wrap">
            <span class="inside">
								<a href="#"><img class="img-responsive" alt="" src="img/team_02.png"></a>
							</span>
          </div>
          <h3 class="general-title">This is a slideshow gallery post type!</h3>
          <div class="post-meta">
            <p>
              Published at: <span class="publish-on">21/01/2014</span>
              <span class="sep">/</span> Category: <a href="#">Slider</a>
              <span class="sep">/</span> Comments: <a href="#"> 4 Comments</a>
            </p>
          </div>
        </header>

        <div class="post-desc">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
            nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. </p>
          <a class="readmore" href="single-with-sidebar.html" title="">阅读更多哈哈哈哈</a>
        </div>
      </article>

      <hr>

      <!-- STANDARD POST -->
      <article class="blog-wrap text-center">
        <div class="blog-media">
          <div class="he-wrap tpl2">
            <img alt="" src="img/slides_01.jpg">
          </div>
          <!-- he wrap -->
        </div>

        <header class="page-header blog-title">
          <div class="author-wrap">
            <span class="inside">
								<a href="#"><img class="img-responsive" alt="" src="img/team_03.png"></a>
							</span>
          </div>
          <h3 class="general-title">This is a standard post!</h3>
          <div class="post-meta">
            <p>
              Published at: <span class="publish-on">21/01/2014</span>
              <span class="sep">/</span> Category: <a href="#">News</a>
              <span class="sep">/</span> Comments: <a href="#"> 4 Comments</a>
            </p>
          </div>
        </header>

        <div class="post-desc">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
            nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. </p>
          <a class="readmore" href="#" title="">read more</a>
        </div>
      </article>

      <hr>

      <!-- VIDEO POST -->
      <article class="blog-wrap text-center">
        <div class="blog-media">
          <div class="js-video [vimeo, widescreen]">
            <iframe src="https://player.vimeo.com/video/3438670?title=0&byline=0&portrait=0&color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
          </div>
        </div>

        <header class="page-header blog-title">
          <div class="author-wrap">
            <span class="inside">
								<a href="#"><img class="img-responsive" alt="" src="img/team_02.png"></a>
							</span>
          </div>
          <h3 class="general-title">This is a video post type!</h3>
          <div class="post-meta">
            <p>
              Published at: <span class="publish-on">21/01/2014</span>
              <span class="sep">/</span> Category: <a href="#">Video</a>
              <span class="sep">/</span> Comments: <a href="#"> 14 Comments</a>
            </p>
          </div>
        </header>

        <div class="post-desc">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
            nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. </p>
          <a class="readmore" href="#" title="">read more</a>
        </div>
      </article>

      <hr>

      <!-- SOUNDCLOUD POST -->
      <article class="blog-wrap text-center">
        <div class="blog-media">
          <iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https://api.soundcloud.com/tracks/130038494&color=151d25&auto_play=false&show_artwork=true"></iframe>
        </div>

        <header class="page-header blog-title">
          <div class="author-wrap">
            <span class="inside">
								<a href="#"><img class="img-responsive" alt="" src="img/team_03.png"></a>
							</span>
          </div>
          <h3 class="general-title">This is an audio post!</h3>
          <div class="post-meta">
            <p>
              Published at: <span class="publish-on">21/01/2014</span>
              <span class="sep">/</span> Category: <a href="blog-left-sidebar.html#">Audio</a>
              <span class="sep">/</span> Comments: <a href="blog-left-sidebar.html#"> 21 Comments</a>
            </p>
          </div>
        </header>

        <div class="post-desc">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
            nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. </p>
          <a class="readmore" href="#" title="">read more</a>
        </div>
      </article>

      <hr>

      <!-- ANOTHER STANDARD POST -->
      <article class="blog-wrap text-center">
        <div class="blog-media">
          <div class="he-wrap tpl2">
            <img alt="" src="img/slides_02.jpg">
          </div>
          <!-- he wrap -->
        </div>

        <header class="page-header blog-title">
          <div class="author-wrap">
            <span class="inside">
								<a href="#"><img class="img-responsive" alt="" src="img/team_06.png"></a>
							</span>
          </div>
          <h3 class="general-title">This is an another standard post type!</h3>
          <div class="post-meta">
            <p>
              Published at: <span class="publish-on">21/01/2014</span>
              <span class="sep">/</span> Category: <a href="#">News</a>
              <span class="sep">/</span> Comments: <a href="#"> 2 Comments</a>
            </p>
          </div>
        </header>

        <div class="post-desc">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
            nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. </p>
          <a class="readmore" href="#" title="">read more</a>
        </div>
      </article>

      <hr>

      <!-- QUOTE POST -->
      <article class="blog-wrap">
        <div class="blog-media">
          <div class="quote-post">
            <blockquote>
              <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
              <small>
                                Someone famous in
                                <cite title="Source Title">John Doe</cite>
                                </small>
            </blockquote>
          </div>
          <!-- quotepost -->
        </div>
      </article>

      <hr>

      <!-- THIRD STANDARD POST POST -->
      <article class="blog-wrap text-center">
        <div class="blog-media">
          <div class="he-wrap tpl2">
            <img alt="" src="img/slides_03.jpg">
          </div>
          <!-- he wrap -->
        </div>

        <header class="page-header blog-title">
          <div class="author-wrap">
            <span class="inside">
								<a href="#"><img class="img-responsive" alt="" src="img/team_02.png"></a>
							</span>
          </div>
          <h3 class="general-title">Hi there, welcome to the our blog!</h3>
          <div class="post-meta">
            <p>
              Published at: <span class="publish-on">21/01/2014</span>
              <span class="sep">/</span> Category: <a href="#">News</a>
              <span class="sep">/</span> Comments: <a href="#"> 21 Comments</a>
            </p>
          </div>
        </header>

        <div class="post-desc">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus aliquet erat quis nibh vehicula, condimentum placerat lectus iaculis. Nam ultricies nisi vel ligula pulvinar, quis dapibus velit iaculis. In hac habitasse platea dictumst. In vitae
            nunc tincidunt, euismod nibh sit amet, convallis arcu. Vestibulum feugiat auctor auctor. Phasellus lacinia auctor metus, in posuere justo egestas eget. Vivamus ornare tincidunt sagittis. </p>
          <a class="readmore" href="#" title="">read more</a>
        </div>
      </article>

      <div class="clearfix"></div>
      <hr>

      <div class=" text-center">
        <ul class="pagination">
          <li><a href="#">«</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><a href="#">3</a></li>
          <li><a href="#">»</a></li>
        </ul>
      </div>

    </div>
    <!-- end content -->


    <!-- SIDEBAR -->
    <div id="sidebar" class="col-lg-4 col-md-4 col-sm-4 col-xs-12">

      <div class="widget">
        <h4 class="title">
                        <span>Subscribe</span>
                    </h4>
        <form id="subscribe" action="mc.php" name="subscribe" method="post">
          <input type="text" name="name" id="name" class="form-control" placeholder="Name">
          <input type="text" name="email" id="email" class="form-control" placeholder="Email">
          <div class="pull-right">
            <input type="submit" value="Subscribe" id="submit" class="button">
          </div>
        </form>
      </div>

      <div class="widget">
        <h4 class="title">
                    	<span>Recent Posts</span>
                    </h4>
        <div class="tabbable">
          <ul class="nav nav-tabs">
            <li class="active"><a href="left-sidebar.html#recent" data-toggle="tab">Recent</a></li>
            <li><a href="left-sidebar.html#popular" data-toggle="tab">Popular</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="recent">
              <ul class="recent_posts">
                <li>
                  <a href="#">
                                    <img src="img/recent_post_01.png" alt="" />Our New Dashboard Is Here
                                    </a>
                  <a class="readmore" href="#">read more</a>
                </li>
                <li>
                  <a href="#">
                                    <img src="img/recent_post_02.png" alt="" />Design Is In The Air
                                    </a>
                  <a class="readmore" href="#">read more</a>
                </li>
              </ul>
              <!-- recent posts -->
            </div>
            <div class="tab-pane" id="popular">
              <ul class="recent_posts">
                <li>
                  <a href="#">
                                    <img src="img/flickr_01.jpg" alt="" />Blog Post With Image
                                    </a>
                  <a class="readmore" href="#">read more</a>
                </li>
                <li>
                  <a href="#">
                                    <img src="img/flickr_02.jpg" alt="" />Another Recent Post with Image
                                    </a>
                  <a class="readmore" href="#">read more</a>
                </li>
              </ul>
              <!-- recent posts -->
            </div>
          </div>
        </div>
        <!-- tabbable -->
      </div>
      <!-- end widget -->


      <div class="widget">
        <h4 class="title">
                        <span>Categories</span>
                    </h4>
        <ul class="categories">
          <li><a href="#">Logo Design</a></li>
          <li><a href="l#">Web Design</a></li>
          <li><a href="#">WordPress</a></li>
          <li><a href="#">HTML5 & CSS3</a></li>
          <li><a href="#">Other Works</a></li>
        </ul>
      </div>

      <div class="widget">
        <h4 class="title">
                        <span>Pages</span>
                    </h4>
        <ul class="pages">
          <li><a href="#">Homepage</a></li>
          <li><a href="#">About us</a></li>
          <li><a href="#">Portfolio</a></li>
          <li><a href="#">Shopping</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>

      <div class="widget">
        <h4 class="title">
                        <span>Tags</span>
                    </h4>

        <div class="tagcloud">
          <a href="#" class="" title="12 topics">advice</a>
          <a href="#" class="" title="2 topics">wordpress</a>
          <a href="#" class="" title="21 topics">joomla</a>
          <a href="#" class="" title="5 topics">blog</a>
          <a href="#" class="" title="62 topics">cms</a>
          <a href="#" class="" title="12 topics">drupal</a>
          <a href="#" class="" title="88 topics">html5</a>
          <a href="#" class="" title="15 topics">css3</a>
          <a href="#" class="" title="31 topics">orange</a>
          <a href="#" class="" title="16 topics">love to</a>
          <a href="#" class="" title="32 topics">tutorials</a>
          <a href="#" class="" title="12 topics">how to</a>
          <a href="#" class="" title="44 topics">advice</a>
        </div>
      </div>

    </div>
    <!-- end sidebar -->
  </div>
  <!-- end container -->
</section>
<!-- end section -->


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

js"></script>

</body>
</html>

e-enhanced.min.js"></script>
  <script src="lib/jigowatt/jigowatt.js"></script>
  <script src="lib/easypiechart/easypiechart.min.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

</body>
</html>

js"></script>

</body>
</html>

