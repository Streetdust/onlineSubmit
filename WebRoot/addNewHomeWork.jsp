<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>onlineSubmit Teacher</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>

    <!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <link href='assets/stylesheets/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css'/>
    <link href='assets/stylesheets/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css'/>
    <link href='assets/javascripts/bootstrap/bootstrap.min.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / jquery ui -->
    <link href='assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css' media='all' rel='stylesheet' type='text/css'/>
    <link href='assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / switch buttons -->
    <link href='assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / xeditable -->
    <link href='assets/stylesheets/plugins/xeditable/bootstrap-editable.css' media='all' rel='stylesheet'
          type='text/css'/>
    <link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / wysihtml5 (wysywig) -->
    <link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / jquery file upload -->
    <link href='assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / full calendar -->
    <link href='assets/stylesheets/plugins/fullcalendar/fullcalendar.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / select2 -->
    <link href='assets/stylesheets/plugins/select2/select2.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / mention -->
    <link href='assets/stylesheets/plugins/mention/mention.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / tabdrop (responsive tabs) -->
    <link href='assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / jgrowl notifications -->
    <link href='assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / datatables -->
    <link href='assets/stylesheets/plugins/datatables/bootstrap-datatable.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / dynatrees (file trees) -->
    <link href='assets/stylesheets/plugins/dynatree/ui.dynatree.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / color picker -->
    <link href='assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / datetime picker -->
    <link href='assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css' media='all'
          rel='stylesheet' type='text/css'/>
    <!-- / daterange picker) -->
    <link href='assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css' media='all'
          rel='stylesheet' type='text/css'/>
    <!-- / flags (country flags) -->
    <link href='assets/stylesheets/plugins/flags/flags.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / slider nav (address book) -->
    <link href='assets/stylesheets/plugins/slider_nav/slidernav.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / fuelux (wizard) -->
    <link href='assets/stylesheets/plugins/fuelux/wizard.css' media='all' rel='stylesheet' type='text/css'/>
    <!-- / flatty theme -->
    <link href='assets/stylesheets/light-theme.css' id='color-settings-body-color' media='all' rel='stylesheet'
          type='text/css'/>
    <!-- / demo -->
    <link href='assets/stylesheets/demo.css' media='all' rel='stylesheet' type='text/css'/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body class='contrast-red '>
<header>
    <div class='navbar'>
        <div class='navbar-inner'>
            <div class='container-fluid'>
                <a class='brand' href='index-stu.jsp'>
                    <i class='icon-heart-empty'></i>
                    <span class='hidden-phone'>onlineSubmit</span>
                </a>
                <a class='toggle-nav btn pull-left' href='#'>
                    <i class='icon-reorder'></i>
                </a>

                <!-- 导航栏右侧 start -->
                <ul class='nav pull-right'>
                    <!-- ui设置 start -->
                    <li class='dropdown light only-icon'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-adjust'></i>
                        </a>
                        <ul class='dropdown-menu color-settings'>
                            <li class='color-settings-body-color'>
                                <div class='color-title'>Body color</div>
                                <a data-change-to='assets/stylesheets/light-theme.css' href='#'>
                                    Light
                                    <small>(default)</small>
                                </a>
                               
                            </li>
                            <li class='divider'></li>
                            <li class='color-settings-contrast-color'>
                                <div class='color-title'>Contrast color</div>
                                <a href="#" data-change-to="contrast-red"><i class='icon-adjust text-red'></i>
                                    Red
                                    <small>(default)</small>
                                </a>
                                <a href="#" data-change-to="contrast-blue"><i class='icon-adjust text-blue'></i>
                                    Blue
                                </a>
                                <a href="#" data-change-to="contrast-orange"><i class='icon-adjust text-orange'></i>
                                    Orange
                                </a>
                                <a href="#" data-change-to="contrast-purple"><i class='icon-adjust text-purple'></i>
                                    Purple
                                </a>
                                <a href="#" data-change-to="contrast-green"><i class='icon-adjust text-green'></i>
                                    Green
                                </a>
                                <a href="#" data-change-to="contrast-muted"><i class='icon-adjust text-muted'></i>
                                    Muted
                                </a>
                                <a href="#" data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
                                    Facebook
                                </a>
                                <a href="#" data-change-to="contrast-dark"><i class='icon-adjust text-dark'></i>
                                    Dark
                                </a>
                                <a href="#" data-change-to="contrast-pink"><i class='icon-adjust text-pink'></i>
                                    Pink
                                </a>
                                <a href="#" data-change-to="contrast-grass-green"><i
                                        class='icon-adjust text-grass-green'></i>
                                    Grass green
                                </a>
                                <a href="#" data-change-to="contrast-sea-blue"><i class='icon-adjust text-sea-blue'></i>
                                    Sea blue
                                </a>
                                <a href="#" data-change-to="contrast-banana"><i class='icon-adjust text-banana'></i>
                                    Banana
                                </a>
                                <a href="#" data-change-to="contrast-dark-orange"><i
                                        class='icon-adjust text-dark-orange'></i>
                                    Dark orange
                                </a>
                                <a href="#" data-change-to="contrast-brown"><i class='icon-adjust text-brown'></i>
                                    Brown
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- ui设置 end -->

                    <!-- 消息提示栏 start -->
                    <li class='dropdown medium only-icon widget'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-rss'></i>
                        </a>
                        
                    </li>
                    <!-- 消息提示栏 end -->

                    <!-- 用户栏 start -->
                    <li class='dropdown dark user-menu'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <img alt='Mila Kunis' height='23' src='assets/images/avatar.jpg' width='23'/>
                            <span class='user-name hidden-phone'>${nowteacher.teacherName }</span>
                            <b class='caret'></b>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='teacherctlr/person.do?techerId=${nowteacher.teacherId }'>
                                    <i class='icon-user'></i>个人中心
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='login.jsp'>
                                    <i class='icon-signout'></i>安全退出
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- 用户栏 end -->
                </ul>
                <!-- 导航栏右侧 end -->

        </div>
    </div>
    </div>
</header>
<div id='wrapper'>
    <div id='main-nav-bg'></div>
    <nav class='' id='main-nav'>
        <div class='navigation'>
            <!--左侧导航栏 start-->
            <ul class='nav nav-stacked'>
                <li class='active'>
                    <a href='index-teacher.jsp'>
                        <i class='icon-dashboard'></i>
                        <span>主页</span>
                    </a>
                </li>
                <li class=''>
                    <a class='dropdown-collapse'>
                        <i class='icon-edit'></i>
                        <span>查看所有作业</span>
                        <i class='icon-angle-down angle-down'></i>
                    </a>
                    <ul class='nav nav-stacked'>
                    	<c:forEach items="${courseClass }" var="cc">
                    		<li>
	                            <a class='dropdown-collapse'>
	                                <i class='icon-caret-right'></i>
	                                <span>${cc.course.courseName }</span>
	                                <i class='icon-angle-down angle-down'></i>
	                            </a>
	                            <ul class='nav nav-stacked'>
	                                <c:forEach items="${cc.classes }" var="cla">
	                                	<li>
		                                    <a href='teacherctlr/listTasks.do?classId=${cla.classId }'>
		                                        <i class='icon-caret-right'></i>
		                                        <span>${cc.course.classDepa }${cc.course.classMajor }${cla.classNum }</span>
		                                    </a>
	                               	 	</li>
	                                </c:forEach>
	                            </ul>
                       	 </li>	
                    	</c:forEach>
                        
                    </ul>
                </li>

                <li class=''>
                    <a href='classInfo-teacher.jsp'>
                        <i class='icon-star'></i>
                        <span>管理班级信息</span>
                    </a>
                </li>

                <li class=''>
                    <a href='addNewHomeWork.jsp'>
                        <i class='icon-calendar'></i>
                        <span>发布新作业</span>
                    </a>
                </li>

                <li class=''>
                    <a href='teacherctlr/listTasks.do?classId=-1'>
                        <i class='icon-calendar'></i>
                        <span>公告栏管理</span>
                    </a>
                </li>

            </ul>
            <!--左侧导航栏 end-->
        </div>
    </nav>


    <!--主页内容 start-->
    <section id='content'>
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='row-fluid'>
                        <div class='span12'>
                            <div class='page-header'>
                                <h1 class='pull-left'>
                                    <i class='icon-list-ul'></i>
                                    <span>发布新作业</span>
                                </h1>
                                <div class='pull-right'>
                                    <ul class='breadcrumb'>
                                        <li>
                                            <a href="index-stu.jsp"><i class='icon-bar-chart'></i>
                                            </a>
                                        </li>
                                        <li class='separator'>
                                            <i class='icon-angle-right'></i>
                                        </li>

                                        <li class='active'>发布新作业</li>
                                    </ul>
                                </div>
                                <!--正文内容填充区 start-->
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='box-content box-padding'>
                                <div class='fuelux'>
                                    <div class='wizard'>
                                        <ul class='steps'>
                                            <li class='active' data-target='#step1'>
                                                <span class='step'>1</span>
                                            </li>
                                            <li data-target='#step2'>
                                                <span class='step'>2</span>
                                            </li>
                                            <li data-target='#step3'>
                                                <span class='step'>3</span>
                                            </li>
                                            <li data-target='#step4'>
                                                <span class='step'>4</span>
                                            </li>
                                        </ul>
                                        <div class='actions'>
                                            <button class='btn btn-mini btn-prev'><i class='icon-arrow-left'></i>
                                                Prev
                                            </button>
                                            <button class='btn btn-mini btn-success btn-next' data-last='Finish'>
                                                Next
                                                <i class='icon-arrow-right'></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class='step-content'>
                                        <hr class='hr-normal'/>
                                        <form accept-charset="UTF-8" action="teacherctlr/publicTask.do" class="form" method="post"
                                              style="margin-bottom: 0px;" enctype="multipart/form-data">
                                        <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden"
                                                                                              value="&#x2713;"/><input
                                                name="authenticity_token" type="hidden"
                                                value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>

                                        <div class='step-pane active' id='step1'>
                                            <div class='control-group'>
                                                <label class='control-label' for='inputText'>选择您要新增作业的班级</label>
                                                <div class='controls'>
                                                    <!--第一步内容start-->
                                                    <div class='row-fluid'>
                                                        <div class='span4 box bordered-box blue-border'>
                                                            <div class='box-header blue-background'>
                                                                <div class='title'>
                                                                    选择班级
                                                                </div>
                                                                <div class='actions'>
                                                                    <a href="#"
                                                                       class="btn box-remove btn-mini btn-link"><i
                                                                            class='icon-remove'></i>
                                                                    </a>
                                                                    <a href="#"
                                                                       class="btn box-collapse btn-mini btn-link"><i></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <input type="hidden" name="teacherId" value="${nowteacher.teacherId }">
                                                            <div class='box-content'>
                                                                <div class='row-fluid'>
                                                                    <div class='span12'>
                                                                        <div class='row-fluid'>
                                                                            <strong>班级列表</strong>
                                                                            <select id="inputText"
                                                                                    class='select2 input-block-level' name="classId">
                                                                                <option value='1'>软工1611</option>
                                                                                <option value='2'>软工1612</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--第一步内容 end-->

                                                </div>
                                            </div>
                                        </div>

                                        <div class='step-pane' id='step2'>
                                            <div class='control-group'>
                                                <label class='control-label' for='inputPassword'>选择您要新增作业的科目</label>
                                                <div class='controls'>
                                                    <!--第二部分内容 start-->
                                                    <div class='row-fluid'>
                                                        <div class='span4 box bordered-box blue-border'>
                                                            <div class='box-header blue-background'>
                                                                <div class='title'>选择科目
                                                                </div>
                                                                <div class='actions'>
                                                                    <a href="#"
                                                                       class="btn box-remove btn-mini btn-link"><i
                                                                            class='icon-remove'></i>
                                                                    </a>
                                                                    <a href="#"
                                                                       class="btn box-collapse btn-mini btn-link"><i></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class='box-content'>
                                                                <div class='row-fluid'>
                                                                    <div class='span12'>
                                                                        <div class='row-fluid'>
                                                                            <strong>科目列表</strong>
                                                                            <select id="inputPassword"
                                                                                    class='select2 input-block-level' name="courseId">
                                                                                <option value='math'>数学</option>
                                                                                <option value='english'>英语</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!--第二部分内容 end-->
                                                </div>
                                            </div>
                                        </div>

                                        <div class='step-pane' id='step3'>
                                            <div class='control-group'>
                                                <label class='control-label' for='container'>编写您要发布的新作业:</label>
                                                <div class='controls'>
                                                    <!--第三部分内容 start-->
                                                    <hr class='hr-double'/>
                                                    <div class="container">
                                                        <div class='control-group'>
                                                            <label class='control-label'>作业内容如下:</label>
                                                            <div class='controls'>
																<textarea rows="10" class="from-contolr" name="taskDesc"></textarea>
                                                            </div>
                                                      	</div>
                                                      	<div class="control-group">
														    <label for="inputfile">文件输入</label>
														    <input type="file" id="inputfile" name="file">
														 </div>
														                                                       
                                                        <button id="submitHomeWorkInfo" class="btn btn-success"
                                                                name="button" style="margin-bottom:5px" type="button">点击提交
                                                        </button>
                                                        <button id="concelSubmitHomeWorkInfo" class="btn btn-danger"
                                                                name="button" style="margin-bottom:5px" type="button">取消填写
                                                        </button>
                                                    </div>
                                                    <!--第三部分内容 end-->
                                                </div>
                                            </div>
                                        </div>

                                        <div class='step-pane' id='step4'>
                                            <div class='control-group'>
                                                <label class='control-label' for='chooseTime'>请选择作业的截止日期:</label>
                                                <!--第四部分内容 start-->
                                                <div id="chooseTime" class='row-fluid'>
                                                    <div class='span4 box bordered-box blue-border box-nomargin'>
                                                        <div class='box-header red-background'>
                                                            <div class='title'>
                                                                请选择:
                                                            </div>
                                                            <div class='actions'>
                                                                <a href="#" class="btn box-remove btn-mini btn-link"><i
                                                                        class='icon-remove'></i>
                                                                </a>
                                                                <a href="#"
                                                                   class="btn box-collapse btn-mini btn-link"><i></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class='box-content'>

                                                            <div class='row-fluid'>
                                                                <strong>截止日期</strong>
                                                                <div>
                                                                    <div class='datepicker input-append'
                                                                         id='datepicker'>
                                                                        <input class='input-medium'
                                                                               data-format='yyyy-MM-dd'
                                                                               placeholder='截止日期'
                                                                               type='text' name="preDate"/>
                                                                        <span class='add-on'>
                                                                        <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <hr class='hr-normal'/>
                                                            <div class='row-fluid'>
                                                                <strong>截止时间</strong>
                                                                <div>
                                                                    <div class='timepicker input-append'
                                                                         id='timepicker'>
                                                                        <input name="sufDate" class='input-medium'
                                                                               data-format='hh:mm:ss'
                                                                               placeholder='选择截止时间'
                                                                               type='text'/>
                                                                        <span class='add-on'>
                                                                          <i data-date-icon='icon-calendar' data-time-icon='icon-time'></i>
                                                                        </span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>

                                                <hr class='hr-normal'/>
                                                <button id="submitHomeWork" class="btn btn-success"
                                                name="button" style="margin-bottom:5px" type="submit">确认提交作业</button>
                                                <button id="concelSubmitHomeWork" class="btn btn-danger"
                                                name="button" style="margin-bottom:5px" type="reset">取消提交</button>

                                                <!--第四部分内容 end-->
                                            </div>
                                        </div>
                                        </form>
                                    </div>

                                    <!--正文内容填充区 end-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <!--主页内容 end-->

</div>
<!-- / jquery -->
<script src='assets/javascripts/jquery/jquery.min.js' type='text/javascript'></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src='assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<!-- / jquery migrate (for compatibility with new jquery) -->
<script src='assets/javascripts/jquery/jquery-migrate.min.js' type='text/javascript'></script>
<!-- / jquery ui -->
<script src='assets/javascripts/jquery_ui/jquery-ui.min.js' type='text/javascript'></script>
<!-- / bootstrap -->
<script src='assets/javascripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/flot/excanvas.js' type='text/javascript'></script>
<!-- / sparklines -->
<script src='assets/javascripts/plugins/sparklines/jquery.sparkline.min.js' type='text/javascript'></script>
<!-- / flot charts -->
<script src='assets/javascripts/plugins/flot/flot.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/flot/flot.resize.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/flot/flot.pie.js' type='text/javascript'></script>
<!-- / bootstrap switch -->
<script src='assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js' type='text/javascript'></script>
<!-- / fullcalendar -->
<script src='assets/javascripts/plugins/fullcalendar/fullcalendar.min.js' type='text/javascript'></script>
<!-- / datatables -->
<script src='assets/javascripts/plugins/datatables/jquery.dataTables.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js' type='text/javascript'></script>
<!-- / wysihtml5 -->
<script src='assets/javascripts/plugins/common/wysihtml5.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/common/bootstrap-wysihtml5.js' type='text/javascript'></script>
<!-- / select2 -->
<script src='assets/javascripts/plugins/select2/select2.js' type='text/javascript'></script>
<!-- / color picker -->
<script src='assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
        type='text/javascript'></script>
<!-- / mention -->
<script src='assets/javascripts/plugins/mention/mention.min.js' type='text/javascript'></script>
<!-- / input mask -->
<script src='assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js' type='text/javascript'></script>
<!-- / fileinput -->
<script src='assets/javascripts/plugins/fileinput/bootstrap-fileinput.js' type='text/javascript'></script>
<!-- / modernizr -->
<script src='assets/javascripts/plugins/modernizr/modernizr.min.js' type='text/javascript'></script>
<!-- / retina -->
<script src='assets/javascripts/plugins/retina/retina.js' type='text/javascript'></script>
<!-- / fileupload -->
<script src='assets/javascripts/plugins/fileupload/tmpl.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/load-image.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/canvas-to-blob.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/fileupload/jquery.fileupload-init.js' type='text/javascript'></script>
<!-- / timeago -->
<script src='assets/javascripts/plugins/timeago/jquery.timeago.js' type='text/javascript'></script>
<!-- / slimscroll -->
<script src='assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js' type='text/javascript'></script>
<!-- / autosize (for textareas) -->
<script src='assets/javascripts/plugins/autosize/jquery.autosize-min.js' type='text/javascript'></script>
<!-- / charCount -->
<script src='assets/javascripts/plugins/charCount/charCount.js' type='text/javascript'></script>
<!-- / validate -->
<script src='assets/javascripts/plugins/validate/jquery.validate.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/validate/additional-methods.js' type='text/javascript'></script>
<!-- / naked password -->
<script src='assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js' type='text/javascript'></script>
<!-- / nestable -->
<script src='assets/javascripts/plugins/nestable/jquery.nestable.js' type='text/javascript'></script>
<!-- / tabdrop -->
<script src='assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js' type='text/javascript'></script>
<!-- / jgrowl -->
<script src='assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js' type='text/javascript'></script>
<!-- / bootbox -->
<script src='assets/javascripts/plugins/bootbox/bootbox.min.js' type='text/javascript'></script>
<!-- / inplace editing -->
<script src='assets/javascripts/plugins/xeditable/bootstrap-editable.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/xeditable/wysihtml5.js' type='text/javascript'></script>
<!-- / ckeditor -->
<script src='assets/javascripts/plugins/ckeditor/ckeditor.js' type='text/javascript'></script>
<!-- / filetrees -->
<script src='assets/javascripts/plugins/dynatree/jquery.dynatree.min.js' type='text/javascript'></script>
<!-- / datetime picker -->
<script src='assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'
        type='text/javascript'></script>
<!-- / daterange picker -->
<script src='assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js' type='text/javascript'></script>
<script src='assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'
        type='text/javascript'></script>
<!-- / max length -->
<script src='assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js' type='text/javascript'></script>
<!-- / dropdown hover -->
<script src='assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'
        type='text/javascript'></script>
<!-- / slider nav (address book) -->
<script src='assets/javascripts/plugins/slider_nav/slidernav-min.js' type='text/javascript'></script>
<!-- / fuelux -->
<script src='assets/javascripts/plugins/fuelux/wizard.js' type='text/javascript'></script>
<!-- / flatty theme -->
<script src='assets/javascripts/nav.js' type='text/javascript'></script>
<script src='assets/javascripts/tables.js' type='text/javascript'></script>
<script src='assets/javascripts/theme.js' type='text/javascript'></script>
<!-- / demo -->
<script src='assets/javascripts/demo/jquery.mockjax.js' type='text/javascript'></script>
<script src='assets/javascripts/demo/inplace_editing.js' type='text/javascript'></script>
<script src='assets/javascripts/demo/charts.js' type='text/javascript'></script>
<script src='assets/javascripts/demo/demo.js' type='text/javascript'></script>


<!-- 配置文件 -->
<script type="text/javascript" src="utf8-jsp/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="utf8-jsp/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">

    var ue = UE.getEditor('container');

    $("#submitHomeWorkInfo").click(function () {

        ue.ready(function () {
            //设置编辑器的内容
            // ue.setContent('hello');
            //获取html内容，返回: <p>hello</p>
            // var html = ue.getContent();
            //获取纯文本内容，返回: hello
            var txt = ue.getContentTxt();
            $("#homeworkInfo").text(txt);
        });
    })

    $("#concelSubmitHomeWorkInfo").click(function () {
        ue.ready(function () {
            //设置编辑器的内容
            ue.setContent('在这里输入你的作业详情...');
            //获取html内容，返回: <p>hello</p>
            // var html = ue.getContent();
            //获取纯文本内容，返回: hello
            // var txt = ue.getContentTxt();
            $("#homeworkInfo").text('');
        });
    })


</script>
</body>
</html>
