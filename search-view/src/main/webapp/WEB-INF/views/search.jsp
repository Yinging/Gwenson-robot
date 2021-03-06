<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>${ words }</title>
  <link rel="shortcut icon" href="/conf/dist/img/g.png"/>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/conf/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/conf/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/conf/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/conf/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/conf/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="/conf/plugins/html5shiv.min.js"></script>
  <script src="/conf/plugins/respond.min.js"></script>
  <![endif]-->
</head>
<style>
.search{
	cursor: pointer;
}
#search_text{
	width:300px;
}
.gwensonTag{
    display:block;
    background-image:url(/conf/dist/img/gwenson4.png) ;
    background-repeat:no-repeat;
    /* position:fixed; */
    width: 120px;
}
.callout{
	font-size: 13px !important;
	padding: 1px 30px 13px 15px !important;
}
.callout.callout-info{
  background-color: #fff !important;
  color:#121212 !important;
  border-color: #fff !important;
}
.callout a{
	color: #3c8dbc !important;
}
.callout  em{
	color: #FB7E6B !important;
}
.callout  strong{
	color: #FB7E6B  !important;
}
.last{
	position: relative;
	margin-left: -11%;
	cursor: pointer;
}
.last a{
	color:#d2d6de;
}
.up{
	position: relative;
	margin-left: 102%;
	margin-top: -98px;
	cursor: pointer;
}
.up a{
	color:#d2d6de;
}
/* 换行 */
.searchItemInfo {
	word-wrap: break-word;
    word-break: normal;
}
.searchCon{
	word-wrap: break-word;
    word-break: normal;
}
</style>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-black-light layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
      
        <div class="navbar-header">
          <a href="index.html" class="navbar-brand gwensonTag">
          <!-- <b>Gwenson</b> -->
          </a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
        <!--  <ul class="nav navbar-nav">
		  
            <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
			
          </ul>
		  -->
          <form class="navbar-form navbar-left" role="search">
          	<div class="input-group">
					<input type="text" id="search_text" class="form-control"  onkeydown="disableEnter(event)" value="${ words }">
					<a class="input-group-addon search" href="javascript:search()"><i class="fa fa-search"></i></a>
				</div>
            <!-- <div class="form-group">
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
            </div> -->
          </form>
		   
        </div>
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
         <!--  <ul class="nav navbar-nav">
            Messages: style can be found in dropdown.less
            <li class="dropdown messages-menu">
              Menu toggle button
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-envelope-o"></i>
                <span class="label label-success">0</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 0 messages</li>
                <li>
                  inner menu: contains the messages
                  <ul class="menu">
                    <li>start message
                      <a href="#">
                        <div class="pull-left">
                          User Image
                          <img src="/conf/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        Message title and timestamp
                        <h4>
                          Support Team
                          <small><i class="fa fa-clock-o"></i> 5 mins</small>
                        </h4>
                        The message
                        <p>Why not buy a new awesome theme?</p>
                      </a>
                    </li>
                    end message
                  </ul>
                  /.menu
                </li>
                <li class="footer"><a href="#">See All Messages</a></li>
              </ul>
            </li>
            /.messages-menu

            Notifications Menu
            <li class="dropdown notifications-menu">
              Menu toggle button
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-bell-o"></i>
                <span class="label label-warning">0</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 0 notifications</li>
                <li>
                  Inner Menu: contains the notifications
                  <ul class="menu">
                    <li>start notification
                      <a href="#">
                        <i class="fa fa-users text-aqua"></i> 5 new members joined today
                      </a>
                    </li>
                    end notification
                  </ul>
                </li>
                <li class="footer"><a href="#">View all</a></li>
              </ul>
            </li>
            Tasks Menu
            <li class="dropdown tasks-menu">
              Menu Toggle Button
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-flag-o"></i>
                <span class="label label-danger">0</span>
              </a>
              <ul class="dropdown-menu">
                <li class="header">You have 0 tasks</li>
                <li>
                  Inner menu: contains the tasks
                  <ul class="menu">
                    <li>Task item
                      <a href="#">
                        Task title and progress text
                        <h3>
                          Design some buttons
                          <small class="pull-right">20%</small>
                        </h3>
                        The progress bar
                        <div class="progress xs">
                          Change the css width attribute to simulate progress
                          <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                            <span class="sr-only">20% Complete</span>
                          </div>
                        </div>
                      </a>
                    </li>
                    end task item
                  </ul>
                </li>
                <li class="footer">
                  <a href="#">View all tasks</a>
                </li>
              </ul>
            </li>
            User Account Menu
            <li class="dropdown user user-menu">
              Menu Toggle Button
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                The user image in the navbar
                <img src="/conf/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                hidden-xs hides the username on small devices so only the image appears.
                <span class="hidden-xs">Gwenson wu</span>
              </a>
              <ul class="dropdown-menu">
                The user image in the menu
                <li class="user-header">
                  <img src="/conf/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                  <p>
                    Gwenson wu - Web Developer
                    <small>Member since Nov. 2012</small>
                  </p>
                </li>
                Menu Body
                <li class="user-body">
                  <div class="row">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </div>
                  /.row
                </li>
                Menu Footer
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                  </div>
                  <div class="pull-right">
                    <a href="#" class="btn btn-default btn-flat">Sign out</a>
                  </div>
                </li>
              </ul>
            </li>
          </ul>
        --> </div>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column -->
  <div class="layout-boxed content-wrapper">
	<div class="container">
		<section class="content">
		<c:if test="${ advert != null && fn:length(advert) != 0 }">
			<c:forEach items="${ advert }" var="code" varStatus="s">
				<div class="callout callout-info">
				<div class="searchItem" id="advert${s.index }">
					${ code }
				</div>
			</div>
			</c:forEach>
		
		</c:if>
			<!-- <script type="text/javascript">
					var sogou_ad_id=919159;
					var sogou_ad_height=90;
					var sogou_ad_width=728;
					</script>
					<script type='text/javascript' src='http://images.sohu.com/cs/jsfile/js/c.js'></script> -->
		
			<div id="contentHtml">
				<c:if test="${ page != null }">
				
				
					<c:choose>
						<c:when test="${ page.result !=null && fn:length(page.result)>0  }">
						
							<c:forEach items="${ page.result }" var="p" >
					
								<c:if test="${p != null }">
								
									<div class="callout callout-info">
										<div class="searchItem"> 
											 <h3 class="searchItemTitle"> <a target="_blank" href="${p.url }"> ${ p.title } </a> </h3> 
											 <span class="searchCon"> ${p.text } </span>
											 <div class="searchItemInfo"> 
											 </div> 
											 <div class="searchItemInfo"> 
											 	<a class="searchURL" href="${p.url }" >${p.url }</a> 
										 	 </div> 
										</div>
									</div>
									
								</c:if>
					
							</c:forEach>
						
						</c:when>
						
						<c:otherwise>
							<div class="callout callout-info">
								<div class="searchItem"> 
									 <h3 class="searchItemTitle"> </h3> 
									 <span class="searchCon"> 很抱歉，没有找到你想要的内容。可以试试<a href="https://wwww.baidu.com">百度一下</a>或许有你想要的内容。 </span>
									 <div class="searchItemInfo"> 
									 </div> 
									 <div class="searchItemInfo"> 
								 	 </div> 
								</div>
							</div>
						</c:otherwise>
					</c:choose>
					
					<div>
 						<div style="float: left;margin-top: 26px;font-size: 10pt;">
 						  共<i id="pageTotalCount">${ page.totalCount }</i>条记录&nbsp; 第
 						  <i id="pageNum">${ page.pageNo }</i>
 						  页/共<i id="pageCount">${ page.totalPage }</i>页
 						 </div>
 						 <c:if test="${ page.totalCount != 0}">
 						 	<ul id="ulPage" class="pagination pagination-sm" data-function="" data-count="" data-totalCount="" style="float: right;margin-right: 10px;margin-top: 25px;">
	 					         <li class="disabled" id="upPage" onclick="jumpPage(this)" pageIndex="1"><a href="#">&laquo;</a></li>
	 					         <li onclick="jumpPage(this)" pageIndex=""><a href="#">0</a></li>
	 					         <li id="nextPage" onclick="jumpPage(this)" pageIndex="2"><a href="#">&raquo;</a></li>   	
	 					    </ul> 
 						 </c:if>
 						       	
 					</div>
					
				</c:if>
			</div>
		  <!-- <div class="callout callout-info">
			<dl class="search-list"> 
				  <dt> 
				   <a href="http://blog.csdn.net/rcxqc2002/article/details/69948577?locationNum=10&amp;fps=1" target="_blank">反<em>爬虫</em>技术</a> 
				   						        	<a href="http://blog.csdn.net/"  target="_blank">&nbsp;&nbsp;-&nbsp;CSDN博客</a> 
				   <a href="http://blog.csdn.net/rcxqc2002/article/details/69948577?locationNum=10&amp;fps=1" target="_blank">&nbsp;&nbsp;-&nbsp;CSDN博客</a> 
				  </dt> 
				  <dd class="author-time">
				   作者：
				   <a href="http://my.csdn.net/rcxqc2002" target="_blank">rcxqc2002</a>&nbsp;&nbsp;&nbsp;日期：2017-04-10 14:57:39&nbsp;&nbsp;&nbsp;浏览&nbsp;79&nbsp;次
				  </dd> 
				  <dd class="search-detail">
				   用netstat检查80端口的连接 sh netstat -nt | grep youhostip:80 | awk '{print $5}' | awk -F":" '{print $1}'| sort | uniq -c | sort -r -n 这行shell可以按照80端口连接数量对来源IP进行排序，这样可以直观的判断出来网页
				   <em>爬虫</em>。一般来说
				   <em>爬虫</em>的
				  </dd> 
				  <dd class="search-link">
				   <a href="http://blog.csdn.net/rcxqc2002/article/details/69948577" target="_blank">http://blog.csdn.net/rcxqc2002/article/details/69948577</a>
				  </dd> 
				 </dl> 
			</div> -->
			<!-- <div class="callout callout-info">
										<div class="searchItem"> 
											 <h3 class="searchItemTitle"> <a target="_blank" href="'+s1.url+'">'+s1.title+'</a> </h3> 
											 <span class="searchCon"> '+s1.text+' </span> 
											 <div class="searchItemInfo"> '+
												  <span class="searchItemInfo-userName"> <a href="'+s1.authorUrl+'" target="_blank">'+s1.author+'</a> </span> 
												  <span class="searchItemInfo-publishDate">'+s1.authorTime+'</span> 
												  <span class="searchItemInfo-good">推荐('+s1.hot+')</span> 
												  <span class="searchItemInfo-comments">评论('+s1.reviewNumber+')</span> 
												  <span class="searchItemInfo-views">浏览('+s1.scanNumber+')</span> 
											 </div> 
											 <div class="searchItemInfo"> 
											  <a class="searchURL" href="'+s1.url+'" >'+s1.url+'</a> 
										 	</div> 
										</div>
									</div> -->
			<!-- /.box -->
		</section>
		
	</div>
	
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <!-- <div class="container">
      <div class="pull-right hidden-xs">
        <b>Version</b> 1.0.0
      </div>
      <strong>Copyright &copy; 2016-2018 <a href="http://www.gwenson.com">Gwenson</a>.</strong> All rights
      reserved.
    </div> -->
    <!-- /.container -->
  </footer>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="/conf/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/conf/bootstrap/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="/conf/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/conf/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/conf/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/conf/dist/js/demo.js"></script>
<script src="/conf/searchJS/config.js"></script>
<!-- <script src="/conf/searchJS/search.js"></script> -->
<script type="text/javascript">
$(document).ready(function(){
	  var pageCount = $("#pageCount").text();
	  var pageNum = $("#pageNum").text();
	  var pageTotalCount = $("#pageTotalCount").text();
	  pageCount = Number(pageCount);
	  pageNum = Number(pageNum);
	  console.log(pageCount);
	  console.log(pageNum);
	  console.log(pageTotalCount);
	  if(pageCount!=null&&pageNum!=null){
		  disposePageNum(pageNum,pageCount);
	  }
	});
	
/**
 * 处理上下页按钮
 * @param pageNo 当前页
 * @param count  总页数
 */
function disposePageNum(pageNo,count) {
	var up=0;
	var next=0;
	var countNum=8;
	if(count-pageNo>=4){
		if(pageNo-4<0){
			up=1;
			if(count>countNum){
				next=countNum;
			}else{
				next=count;
			}
		}else{
			up=pageNo-4;
			next=pageNo+4;
		}
		
	}else{
		up=count-countNum;
		if(up<1){
			up=1;
		}
		next=count;
	}
	if(up>0&&next<=count){
		var words=$("#search_text").val();
		var href=prod.localhost+"/search?words="+encodeURI(encodeURI(words))+"&currPage=";
		var pageNo1=pageNo;
		if(pageNo-1>=0){
			pageNo1=pageNo-1;
		}
		var li='<li id="upPage" onclick="jumpPage(this)" pageIndex="'+pageNo1+'"><a href="'+href+pageNo1+'">&laquo;</a></li>';
		for(var i=up; i<=next;i++){
			if(i==pageNo){
				li=li+'<li  class="disabled" pageIndex="'+i+'"><a href="#">'+i+'</a></li>';
			}else{
				li=li+'<li onclick="jumpPage(this)" pageIndex="'+i+'"><a href="'+href+i+'">'+i+'</a></li>';
			}
		}
		var pageNo2=pageNo;
		if(pageNo+1<=count){
			pageNo2=pageNo+1;
		}
		li=li+'<li id="nextPage" onclick="jumpPage(this)" pageIndex="'+pageNo2+'"><a href="'+href+pageNo2+'">&raquo;</a></li>';
		$("#ulPage").html(li);
	}else{
		var $li=$("#ulPage").find(".disabled");
		$li.removeClass("disabled");
		var $li2=$("#ulPage").find("li");
		for(var i=0;i<$li2.length;i++){
			var index=$($li2[i]).attr("pageIndex");
			index=Number(index);
			if(index==pageNo){
				$($li2[i]).addClass("disabled");
			}
		}
		
	}
}
function search(){
	var text=$("#search_text").val();
	/* sessionStorage.searchText=text;
	sessionStorage.currPage=1;
	sessionStorage.findCount=true;
	sessionStorage.count=0; */
	window.location.href=prod.localhost+"/search?words="+encodeURI(encodeURI(text));
}
function disableEnter(event){
	var keyCode = event.keyCode?event.keyCode:event.which?event.which:event.charCode;
		if (keyCode ==13){
			event.keyCode=0;
			event.returnValue   =   false;
		// 此处处理回车动作
			search();
		}
	}
</script>
</body>
</html>
