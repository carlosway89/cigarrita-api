<!DOCTYPE html>
<html lang="en">

<head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Cigarrita CMS</title>

	<meta name="description" content="">
	<meta name="author" content="Akshay Kumar">

	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/css/bootstrap/bootstrap.css" /> 
  
  <!-- MaterializeCSS -->
  <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/css/materialize/materialize.css" /> 
  
  <!-- Summernote -->
  <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/css/plugins/summernote/summernote.css" /> 

    <!-- Fonts  -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,300' rel='stylesheet' type='text/css'>
    
    <!-- Base Styling  -->
    <link rel="stylesheet" href="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/css/app/app.v1.css" />


	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>
<body>	

	<!-- Preloader -->
    <div class="loading-container">

      <div class="loading">
        <div class="preloader-wrapper big active">
          <div class="spinner-layer spinner-green-only ">
            <div class="circle-clipper left">
              <div class="circle"></div>
            </div><div class="gap-patch">
              <div class="circle"></div>
            </div><div class="circle-clipper right">
              <div class="circle"></div>
            </div>
          </div>

        </div>

      </div>
    </div>
    <!-- Preloader -->
    
	<aside class="left-panel collapsed">
    		
            <div class="user text-center">
                  <img src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/images/avtar/cigarrita-pet.jpg" class="img-circle" alt="...">
                  <h4 class="user-name">Carlos Manay</h4>
            </div>
            
            
            
            <nav class="navigation">
            	<ul class="list-unstyled">
                	<li><a href="<?=Yii::app()->request->url?>"><i class="fa fa-bookmark-o"></i><span class="nav-label">Dashboard</span></a></li>
                    <li class="has-submenu"><a href="#"><i class="fa fa-comment-o"></i> <span class="nav-label">Widgets &amp; Apps</span></a>
                    	<ul class="list-unstyled">
                        	<li><a href="email.html">Email</a></li>
                            <li><a href="timeline.html">Timeline</a></li>
                            <li><a href="calendar.html">Calendar</a></li>
                            <li><a href="notes.html">Notes</a></li>
                            <li><a href="file-browser.html">File Browser</a></li>
                        </ul>
                    </li>
                    <li class="has-submenu"><a href="#"><i class="fa fa-code"></i> <span class="nav-label">Charts</span></a>
                    	<ul class="list-unstyled">
                        	<li><a href="chart-variants.html">Chart Variants</a></li>
                            <li><a href="gauges.html">Gauges</a></li>
                            <li><a href="vector-maps.html">Vector Maps</a></li>
                            <li><a href="range-selector.html">Range Selector</a></li>
                        </ul>
                    </li>
                    <li class="has-submenu active"><a href="#"><i class="fa fa-star-o"></i> <span class="nav-label">Plugins &amp; More</span></a>
                    	<ul class="list-unstyled">
                        	<li><a href="404.html">404 Page</a></li>
                        	<li><a href="invoice.html">Invoice</a></li>
                            <li><a href="elfinder.html">File Manager</a></li>
                            <li><a href="google-maps.html">Google Maps</a></li>
                            <li><a href="signin.html">Signin</a></li>
                            <li><a href="signup.html">Signup</a></li>
                            <li><a href="search.html">Search</a></li>
                            <li><a href="full-screen.html">Full Screen</a></li>
                            <li class="active"><a href="blank.html">Blank Page</a></li>
                            
                        </ul>
                    </li>
                </ul>
            </nav>
            
    </aside>
    
    <section class="content">
    	
        <header class="top-head container-fluid">
            <button type="button" class="navbar-toggle pull-left hidden-lg hidden-md hidden-sm">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            
            
            <nav class=" navbar-default hidden-xs" role="navigation">
                <ul class="nav navbar-nav">
                <li><a href="<?=Yii::app()->getBaseUrl(true)?>" target="_blank">Live Website</a></li>
                <li class="dropdown">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#">Languages <span class="caret"></span></a>
                  <ul role="menu" class="dropdown-menu">
                    <li><a href="#">Español</a></li>
                    <li><a href="#">English</a></li>
                    <li><a href="#">Deutsch</a></li>
                    <li class="divider"></li>
                    <li><a href="#">+ Add New Language</a></li>
                  </ul>
                </li>
              </ul>
            </nav>
            
            <ul class="nav-toolbar">
            	<li class="dropdown"><a href="#" data-toggle="dropdown"><i class="fa fa-comments-o"></i> <span class="badg bg-warning">7</span></a>
                	<div class="dropdown-menu md arrow pull-right panel panel-default arrow-top-right messages-dropdown">
                        <div class="panel-heading">
                      	Messages
                        </div>
                        
                        <div class="list-group">
                            
                            <a href="#" class="list-group-item">
                            <div class="media">
                              <div class="user-status busy pull-left">
                              <img class="media-object img-circle pull-left" src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/images/avtar/user2.png" alt="user#1" width="40">
                              </div>
                              <div class="media-body">
                                <h6 class="media-heading">Lorem ipsum dolor sit consect....</h6>
                                <small class="text-muted">23 Sec ago</small>
                              </div>
                            </div>
                            </a>
                            <a href="#" class="list-group-item">
                            <div class="media">
                              <div class="user-status offline pull-left">
                              <img class="media-object img-circle pull-left" src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/images/avtar/user3.png" alt="user#1" width="40">
                              </div>
                              <div class="media-body">
                                <h6 class="media-heading">Nunc elementum, enim vitae</h6>
                                <small class="text-muted">23 Sec ago</small>
                              </div>
                            </div>
                            </a>
                            <a href="#" class="list-group-item">
                            <div class="media">
                              <div class="user-status invisibled pull-left">
                              <img class="media-object img-circle pull-left" src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/images/avtar/user4.png" alt="user#1" width="40">
                              </div>
                              <div class="media-body">
                                <h6 class="media-heading">Praesent lacinia, arcu eget</h6>
                                <small class="text-muted">23 Sec ago</small>
                              </div>
                            </div>
                            </a>
                            <a href="#" class="list-group-item">
                            <div class="media">
                              <div class="user-status online pull-left">
                              <img class="media-object img-circle pull-left" src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/images/avtar/user5.png" alt="user#1" width="40">
                              </div>
                              <div class="media-body">
                                <h6 class="media-heading">In mollis blandit tempor.</h6>
                                <small class="text-muted">23 Sec ago</small>
                              </div>
                            </div>
                            </a>
                            
                            <a href="#" class="btn btn-info btn-flat btn-block">View All Messages</a>

                        </div>
                        
                    </div>
                </li>
              <li class="dropdown"><a href="#" data-toggle="dropdown"><i class="fa fa-bell-o"></i><span class="badg">3</span></a>
                	<div class="dropdown-menu arrow pull-right md panel panel-default arrow-top-right notifications">
                        <div class="panel-heading">
                      	Notification
                        </div>
                        
                        <div class="list-group">
                            
                            <a href="#" class="list-group-item">
                              <p>Installing App v1.2.1<small class="pull-right text-muted">45% Done</small></p>
                              <div class="progress progress-xs no-margn progress-striped active">
                                <div class="progress-bar"  role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                                  <span class="sr-only">45% Complete</span>
                                </div>
                              </div>
                            </a>
                            
                            <a href="#" class="list-group-item">
                            Fusce dapibus molestie tincidunt. Quisque facilisis libero eget justo iaculis
                            </a>
                            
                            <a href="#" class="list-group-item">
                              <p>Server Status</p>
                              <div class="progress progress-xs no-margn">
                                <div class="progress-bar progress-bar-success" style="width: 35%">
                                  <span class="sr-only">35% Complete (success)</span>
                                </div>
                                <div class="progress-bar progress-bar-warning" style="width: 20%">
                                  <span class="sr-only">20% Complete (warning)</span>
                                </div>
                                <div class="progress-bar progress-bar-danger" style="width: 10%">
                                  <span class="sr-only">10% Complete (danger)</span>
                                </div>
                              </div>
                            </a>
                            
                            
                            
                            <a href="#" class="list-group-item">
                              <div class="media">
                                <span class="label label-danger media-object img-circle pull-left">Danger</span>
                                <div class="media-body">
                                  <h6 class="media-heading">Lorem ipsum dolor sit consect..</h6>
                                </div>
                              </div>
                            </a>
                            
                            
                            <a href="#" class="list-group-item">
                              <p>Server Status</p>
                              <div class="progress progress-xs no-margn">
                                <div style="width: 60%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="60" role="progressbar" class="progress-bar progress-bar-info">
                                  <span class="sr-only">60% Complete (warning)</span>
                                </div>
                              </div>
                						</a>
                            

                        </div>
                        
                    </div>
              </li>
              <li class="dropdown"><a href="#" data-toggle="dropdown"><i class="fa fa-ellipsis-v"></i></a>
                	<div class="dropdown-menu lg pull-right arrow panel panel-default arrow-top-right">
                    	<div class="panel-heading">
                        	Panel Options
                        </div>
                        <div class="panel-body text-center">
                        	<div class="row">
                            	<div class="col-xs-6 col-sm-4"><a href="#" class="text-green"><span class="h2"><i class="fa fa-envelope-o"></i></span><p class="text-gray no-margn">Messages</p></a></div>
                                <div class="col-xs-6 col-sm-4"><a href="#" class="text-purple"><span class="h2"><i class="fa fa-calendar-o"></i></span><p class="text-gray no-margn">Page Config</p></a></div>
                                
                                <div class="col-xs-12 visible-xs-block"><hr></div>
                                
                                <div class="col-xs-6 col-sm-4"><a href="<?=Yii::app()->request->baseUrl?>/site/logout" class="text-red"><span class="h2"><i class="fa fa-sign-out"></i></span><p class="text-gray no-margn">Log Out</p></a></div>
                                                      
                          </div>
                        </div>
                    </div>
              </li>
            </ul>
        </header>
        <!-- Header Ends -->
        
        
        <div class="data-container">
        	
            <div class="data-content">
                <?php echo $content; ?>    
            </div>
            <!-- Content Here -->
            
        </div>
        <!-- Warper Ends Here (working area) -->
        
        
        <!-- <footer class="container-fluid footer">
        	Copyright &copy; 2015 <a href="http://cigarrita-worker.com/" target="_blank">Cigarrita Worker</a>
            <a href="#" class="pull-right scrollToTop"><i class="fa fa-chevron-up"></i></a>
        </footer> -->
        
    
    </section>
    <!-- Content Block Ends Here (right box)-->
    
    
    
    <!-- JQuery v1.9.1 -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/plugins/underscore/underscore-min.js"></script>
    <!-- Bootstrap -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/bootstrap/bootstrap.min.js"></script>
    
    <!-- Materialize -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/materialize/materialize.min.js"></script>
    
    <!-- Wysihtml5 -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.min.js"></script>
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.js"></script>

    <!-- Summernote -->
<!-- <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/plugins/summernote/summernote.min.js"></script> -->

    <!-- Globalize -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/globalize/globalize.min.js"></script>
    
    <!-- NanoScroll -->
    <script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
    
    <!-- Custom JQuery -->
	<script src="<?php echo Yii::app()->request->baseUrl; ?>/assets/panel/js/app/custom.js" type="text/javascript"></script>
    

</body>

</html>
