<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>Flatty - Flat administration template</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>

    <!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <link href='assets/stylesheets/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css'/>
    <link href='assets/stylesheets/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css'/>
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
                    <span class='hidden-phone'>Flatty</span>
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
                                <a data-change-to='assets/stylesheets/dark-theme.css' href='#'>
                                    Dark
                                </a>
                                <a data-change-to='assets/stylesheets/dark-blue-theme.css' href='#'>
                                    Dark blue
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
                            <div class='label'>5</div>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-user text-success'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            John Doe signed up
                                            <small class='muted'>just now</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-inbox text-error'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            New Order #002
                                            <small class='muted'>3 minutes ago</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-comment text-warning'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            America Leannon commented Flatty with veeery long text.
                                            <small class='muted'>1 hour ago</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-user text-success'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            Jane Doe signed up
                                            <small class='muted'>last week</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='#'>
                                    <div class='widget-body'>
                                        <div class='pull-left icon'>
                                            <i class='icon-inbox text-error'></i>
                                        </div>
                                        <div class='pull-left text'>
                                            New Order #001
                                            <small class='muted'>1 year ago</small>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class='widget-footer'>
                                <a href='#'>所有消息</a>
                            </li>
                        </ul>
                    </li>
                    <!-- 消息提示栏 end -->


                    <!-- 用户栏 start -->
                    <li class='dropdown dark user-menu'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <img alt='Mila Kunis' height='23' src='assets/images/avatar.jpg' width='23'/>
                            <span class='user-name hidden-phone'>张希光</span>
                            <b class='caret'></b>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='user_profile.html'>
                                    <i class='icon-user'></i>
                                    个人中心
                                </a>
                            </li>
                            <li>
                                <a href='user_profile.html'>
                                    <i class='icon-cog'></i>
                                    设置
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li>
                                <a href='sign_in.html'>
                                    <i class='icon-signout'></i>
                                    安全退出
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- 用户栏 end -->
                </ul>
                <!-- 导航栏右侧 end -->


                <!-- 导航栏搜索栏 start -->
                <form accept-charset="UTF-8" action="search_results.html" class="navbar-search pull-right hidden-phone"
                      method="get"/>
                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;"/></div>
                <button class="btn btn-link icon-search" name="button" type="submit"></button>
                <input autocomplete="off" class="search-query span2" id="q_header" name="q" placeholder="Search..."
                       type="text" value=""/>
                </form>
                <!-- 导航栏搜索栏 end -->


            </div>
        </div>
    </div>
</header>
<div id='wrapper'>
    <div id='main-nav-bg'></div>
    <nav class='' id='main-nav'>
        <div class='navigation'>

            <div class='search'>
                <!--不知道干啥的搜索框（暂时注掉） start-->
                <form accept-charset="UTF-8" action="search_results.html" method="get"/>
                <div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;"/></div>
                <div class='search-wrapper'>
                    <input autocomplete="off" class="search-query" id="q" name="q" placeholder="Search..." type="text"
                           value=""/>
                    <button class="btn btn-link icon-search" name="button" type="submit"></button>
                </div>
                </form>
                <!--不知道干啥的搜索框（暂时注掉） end-->
            </div>


            <!--左侧导航栏 start-->
            <ul class='nav nav-stacked'>
                <li class=''>
                    <a href='index-teacher.jsp'>
                        <i class='icon-dashboard'></i>
                        <span>主页</span>
                    </a>
                </li>
                <li class=''>
                    <a class='dropdown-collapse' href='#'>
                        <i class='icon-edit'></i>
                        <span>查看所有作业</span>
                        <i class='icon-angle-down angle-down'></i>
                    </a>
                    <ul class='nav nav-stacked'>
                        <li>
                            <a class='dropdown-collapse' href='#'>
                                <i class='icon-caret-right'></i>
                                <span>语文</span>
                                <i class='icon-angle-down angle-down'></i>
                            </a>
                            <ul class='nav nav-stacked'>
                                <li>
                                    <a href='allHomework-teacher.jsp'>
                                        <i class='icon-caret-right'></i>
                                        <span>三年级一班</span>
                                    </a>
                                </li>
                                <li>
                                    <a href='allHomework-teacher.jsp'>
                                        <i class='icon-caret-right'></i>
                                        <span>三年级二班</span>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <a class='dropdown-collapse' href='#'>
                                <i class='icon-caret-right'></i>
                                <span>数学</span>
                                <i class='icon-angle-down angle-down'></i>
                            </a>
                            <ul class='nav nav-stacked'>
                                <li>
                                    <a class='dropdown-collapse' href='allHomework-teacher.jsp'>
                                        <i class='icon-caret-right'></i>
                                        <span>三年级一班</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        </li>
                        <li class=''>
                            <a href='allHomework-teacher.jsp'>
                                <i class='icon-caret-right'></i>
                                <span>英语</span>
                            </a>
                        </li>
                        <li class=''>
                            <a href='allHomework-teacher.jsp'>
                                <i class='icon-caret-right'></i>
                                <span>计算机</span>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class=''>
                    <a class='dropdown-collapse ' href='#'>
                        <i class='icon-tint'></i>
                        <span>查看已交作业</span>
                        <i class='icon-angle-down angle-down'></i>
                    </a>
                    <ul class='nav nav-stacked'>
                        <li>
                            <a class='dropdown-collapse' href='#'>
                                <i class='icon-caret-right'></i>
                                <span>语文</span>
                                <i class='icon-angle-down angle-down'></i>
                            </a>
                            <ul class='nav nav-stacked'>
                                <li>
                                    <a href='downHomeWork.jsp'>
                                        <i class='icon-caret-right'></i>
                                        <span>三年级一班</span>
                                    </a>
                                </li>
                                <li>
                                    <a href='downHomeWork.jsp'>
                                        <i class='icon-caret-right'></i>
                                        <span>三年级二班</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
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

                <li class='active'>
                    <a href='addNewNotice.jsp'>
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
                                    <span>公告栏管理</span>
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
                                        <li class='active'>公告栏管理</li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!--正文内容填充区 start-->
                    <div class='alert alert-info'>
                        <a class='close' data-dismiss='alert' href='#'>&times;</a>
                        你好!尊敬的:
                        <strong>张希光老师</strong>
                        ,当前公告栏所有内容如下，您可以对其进行<strong>增加，修改，删除</strong>操作，请您务必注意
                        <i class=" icon-exclamation"></i><i class=" icon-exclamation"></i><i
                            class=" icon-exclamation"></i>
                    </div>

                    <div class='row-fluid'>
                        <div class='span12 box'>
                            <div class='row-fluid todo-list'>
                                <div class='span12 box box-nomargin'>
                                    <div class='box-content box-no-padding'>
                                        <div class='sortable-container'>
                                            <form accept-charset="UTF-8" action="#" class="new-todo"
                                                  method="post"/>
                                            <div style="margin:0;padding:0;display:inline"><input
                                                    name="utf8" type="hidden" value="&#x2713;"/><input
                                                    name="authenticity_token" type="hidden"
                                                    value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/>
                                            </div>
                                            <input class='span12' id='todo_name' name='todo[name]'
                                                   placeholder='Type your new todo here...' type='text'/>
                                            <button class='btn btn-success' type='submit'>
                                                <i class='icon-plus'></i>
                                            </button>
                                            </form>

                                            <div class='date text-contrast'>今天</div>
                                            <ul class='unstyled sortable' data-sortable-axis='y'
                                                data-sortable-connect='.sortable'>

                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        test1111
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-toggle='modal' href='#modal-example'
                                                           data-placement='top' title='点击查看公告详情'>
                                                            <i class='icon-folder-open-alt showModal'></i>
                                                        </a>
                                                        <a class='btn btn-link edit has-tooltip editNotice'
                                                           data-placement='top' href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        test1111
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-toggle='modal' href='#modal-example'
                                                           data-placement='top' title='点击查看公告详情'>
                                                            <i class='icon-folder-open-alt showModal'></i>
                                                        </a>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-placement='top' href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        test1111
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-toggle='modal' href='#modal-example'
                                                           data-placement='top' title='点击查看公告详情'>
                                                            <i class='icon-folder-open-alt showModal'></i>
                                                        </a>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-placement='top' href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>


                                            </ul>
                                            <div class='date text-contrast'>Due Wed, Sep 19, 2013</div>
                                            <ul class='unstyled sortable' data-sortable-axis='y'
                                                data-sortable-connect='.sortable'>

                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        test1111
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-toggle='modal' href='#modal-example'
                                                           data-placement='top' title='点击查看公告详情'>
                                                            <i class='icon-folder-open-alt showModal'></i>
                                                        </a>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-placement='top' href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        test1111
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-toggle='modal' href='#modal-example'
                                                           data-placement='top' title='点击查看公告详情'>
                                                            <i class='icon-folder-open-alt showModal'></i>
                                                        </a>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-placement='top' href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>

                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        test1111
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-toggle='modal' href='#modal-example'
                                                           data-placement='top' title='点击查看公告详情'>
                                                            <i class='icon-folder-open-alt showModal'></i>
                                                        </a>
                                                        <a class='btn btn-link edit has-tooltip'
                                                           data-placement='top' href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#'
                                                           title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>


                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <!--公告详情模态框 start-->
                                <%--<div class='text-center'>--%>

                                    <%--<a class='btn btn-success btn-large' data-toggle='modal' href='#modal-example'--%>
                                       <%--role='button' style='margin-bottom: 5px'>Launch big modal</a>--%>
                                <%--</div>--%>
                                <div class='modal hide fade' id='modal-example' role='dialog' tabindex='-1'>
                                    <div class='modal-header'>
                                        <button class='close' data-dismiss='modal' type='button'>&times;</button>
                                        <h3>公告详情</h3>
                                    </div>
                                    <div class='modal-body'>
                                        <h4>公告标题</h4>
                                        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia
                                            odio sem.</p>
                                        <!--  -->
                                        <h4>公告发布人:</h4>
                                        <p>XXX</p>
                                        <h4>公告发布时间:</h4>
                                        <p>XXX</p>
                                        <h4>公告发布关联作业:</h4>
                                        <p>XXX</p>
                                        <h4>公告内容:</h4>
                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac,
                                            vestibulum at eros.</p>
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus
                                            sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna,
                                            vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper
                                            nulla non metus auctor fringilla.</p>
                                        <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac
                                            facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac,
                                            vestibulum at eros.</p>
                                        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus
                                            sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
                                        <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna,
                                            vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper
                                            nulla non metus auctor fringilla.</p>
                                    </div>
                                    <div class='modal-footer'>
                                        <button class='btn' data-dismiss='modal'>Close</button>
                                        <button class='btn btn-primary'>Save changes</button>
                                    </div>
                                </div>
                                <!--公告详情模态框 end-->

                                <!--公告编辑模态框 start-->
                                <%--<div class='text-center'>--%>

                                    <%--<a class='btn btn-success btn-large' data-toggle='modal' href='#modal-example'--%>
                                       <%--role='button' style='margin-bottom: 5px'>Launch big modal</a>--%>
                                <%--</div>--%>
                                <div class='modal hide fade' id='edit-modal' role='dialog' tabindex='-1'>
                                    <div class='span12 box'>
                                        <div class='box-header blue-background'>
                                            <div class='title'>
                                                <div class='icon-edit'></div>
                                                公告编辑
                                            </div>
                                            <div class='actions'>
                                                <a href="#" class="btn box-remove btn-mini btn-link"><i
                                                        class='icon-remove'></i>
                                                </a>
                                                <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class='box-content'>
                                            <form accept-charset="UTF-8" action="#" class="form form-horizontal"
                                                  method="post"
                                                  style="margin-bottom: 0;"/>
                                            <div style="margin:0;padding:0;display:inline"><input name="utf8"
                                                                                                  type="hidden"
                                                                                                  value="&#x2713;"/><input
                                                    name="authenticity_token" type="hidden"
                                                    value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                            <div class='control-group'>
                                                <label class='control-label' for='notice-title'>公告标题:</label>
                                                <div class='controls'>
                                                    <input id='notice-title' placeholder='公告标题' type='text'/>
                                                </div>
                                            </div>

                                            <hr class='hr-normal'/>
                                            <div class='control-group'>
                                                <label class='control-label' for='notice-teacher'>公告发布人:</label>
                                                <div class='controls'>
                                                    <input class='input-xlarge' disabled='' id='notice-teacher'
                                                           placeholder='公告发布人' type='text'/>
                                                </div>
                                            </div>

                                            <hr class='hr-normal'/>
                                            <div class='control-group'>
                                                <label class='control-label' for='inputSelectMulti'>公告关联作业:</label>
                                                <div class='controls'>
                                                    <select id='inputSelectMulti' multiple='multiple'>
                                                        <option/>
                                                        1
                                                        <option/>
                                                        2
                                                        <option/>
                                                        3
                                                        <option/>
                                                        4
                                                        <option/>
                                                        5
                                                    </select>
                                                    <span class='help-inline'>温馨提示：仅能关联自己发布的作业任务哦！</span>
                                                </div>
                                            </div>

                                            <hr class='hr-normal'/>
                                            <div class='control-group'>
                                                <label class='control-label' for='notice-content'>公告内容:</label>
                                                <div class='controls'>
                                                    <textarea id='notice-content' placeholder='公告内容'
                                                              rows='3'></textarea>
                                                </div>
                                            </div>

                                            <hr class='hr-normal'/>
                                            <div class='control-group'>
                                                <label class='control-label' for='chooseTime'>公告内容:</label>
                                                <div class='controls'>
                                                    <div id="chooseTime" class='box-content'>

                                                        <div class='row-fluid'>
                                                            <strong>截止日期</strong>
                                                            <div>
                                                                <div class='datepicker input-append'
                                                                     id='datepicker'>
                                                                    <input class='input-medium'
                                                                           data-format='yyyy-MM-dd'
                                                                           placeholder='选择截止日期'
                                                                           type='text'/>
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
                                                                    <input class='input-medium'
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
                                            <div class='form-actions'>
                                                <button class='btn btn-primary' type='submit'>
                                                    <i class='icon-save'></i>
                                                    Save
                                                </button>
                                                <button class='btn' type='submit'>Cancel</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>

                                <!--公告编辑模态框 end-->


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


<script>
    $(".editNotice").click(function () {
        $("#edit-modal").modal("show");
    })
</script>

</body>
</html>
