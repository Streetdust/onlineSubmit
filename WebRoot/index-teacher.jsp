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
                <a class='brand' href='index-teacher.jsp'>
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
                <li class='active'>
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

                <li class=''>
                    <a href='addNewNotice.jsp'>
                        <i class='icon-calendar'></i>
                        <span>公告栏管理</span>
                    </a>
                </li>


            </ul>
            <!--左侧导航栏 end-->
        </div>
    </nav>

    <!-- 主页内容 start-->
    <section id='content'>
        <div class='container-fluid'>
            <div class='row-fluid' id='content-wrapper'>
                <div class='span12'>
                    <div class='page-header'>
                        <h1 class='pull-left'>
                            <i class='icon-dashboard'></i>
                            <span>主页详情</span>
                        </h1>
                        <div class='pull-right'>
                            <div class='btn-group'>
                                <a href="#" class="btn btn-white hidden-phone">上个月</a>
                                <a href="#" class="btn btn-white">上周</a>
                                <a href="#" class="btn btn-white ">今天</a>
                                <a href="#" class="btn btn-white" id="daterange"><i class='icon-calendar'></i>
                                    <span class='hidden-phone'>日历</span>
                                    <b class='caret'></b>
                                </a>
                            </div>
                        </div>
                    </div>


                    <div class='alert alert-info'>
                        <a class='close' data-dismiss='alert' href='#'>&times;</a>
                        你好:
                        <strong>Flatty (v2)</strong>
                        - 希望你能喜欢这个UI. 不要忘记 - 你可以修改成你喜欢的颜色
                        <i class='icon-adjust'></i>
                        如果你想的话.
                    </div>

                    <div class='row-fluid'>
                        <div class='span6 box'>
                            <div class='box-header'>
                                <div class='title'>
                                    <i class='icon-inbox'></i>
                                    近期作业完成情况
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='box-content'>
                                <div id='stats-chart1'></div>
                            </div>
                        </div>

                    </div>


                    <hr class='hr-drouble'/>
                    <div class='row-fluid'>
                        <div class='span3 box'>
                            <div class='box-header'>
                                <div class='title'>
                                    <i class='icon-inbox'></i>
                                    作业数量统计:
                                </div>
                                <div class='actions'>
                                    <a href="#" class="btn box-remove btn-mini btn-link"><i class='icon-remove'></i>
                                    </a>
                                    <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                    </a>
                                </div>
                            </div>
                            <div class='row-fluid'>
                                <div class='span12'>
                                    <div class='box-content box-statistic'>
                                        <h3 class='title text-error'>91</h3>
                                        <small>新发布的作业:</small>
                                        <div class='text-error icon-plus align-right'></div>
                                    </div>
                                    <div class='box-content box-statistic'>
                                        <h3 class='title text-success'>1</h3>
                                        <small>已完成的作业:</small>
                                        <div class='text-success icon-ok align-right'></div>
                                    </div>
                                    <div class='box-content box-statistic'>
                                        <h3 class='title text-info'>123</h3>
                                        <small>待完成的作业:</small>
                                        <div class='text-info icon-time align-right'></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>近期事件一览:</h2>
                                    <small class='muted'>列举了各科目老师发布的公告等信息!
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span6'>
                            <div class='row-fluid todo-list'>
                                <div class='span12 box box-nomargin'>
                                    <div class='box-header'>
                                        <div class='title'>
                                            <i class='icon-list-alt'></i>
                                            公告栏:
                                        </div>
                                        <div class='actions'>
                                            <a href="#" class="btn box-remove btn-mini btn-link"><i
                                                    class='icon-remove'></i>
                                            </a>
                                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class='box-content box-no-padding'>
                                        <div class='sortable-container'>
                                            <form accept-charset="UTF-8" action="#" class="new-todo" method="post"/>
                                            <div style="margin:0;padding:0;display:inline"><input name="utf8"
                                                                                                  type="hidden"
                                                                                                  value="&#x2713;"/><input
                                                    name="authenticity_token" type="hidden"
                                                    value="CFC7d00LWKQsSahRqsfD+e/mHLqbaVIXBvlBGe/KP+I="/></div>
                                            <input class='span12' id='todo_name' name='todo[name]'
                                                   placeholder='输入你想要查询的关键字:' type='text'/>
                                            <button class='btn btn-success' type='submit'>
                                                <i class='icon-plus'></i>
                                            </button>
                                            </form>
                                            <div class='date text-contrast'>今天:</div>
                                            <ul class='unstyled sortable' data-sortable-axis='y'
                                                data-sortable-connect='.sortable'>
                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Voluptas voluptas consequatur omnis nisi.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Odit veniam occaecati fugit.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='done item'>
                                                    <label class='check pull-left todo'>
                                                        <input checked='checked' type='checkbox'/>
                                                        Ad aliquid voluptas labore magnam et ut.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        <i class='icon-envelope-alt'></i>
                                                        Vel velit fuga dolorum earum rem.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class='date text-contrast'>Due Wed, Sep 19, 2013</div>
                                            <ul class='unstyled sortable' data-sortable-axis='y'
                                                data-sortable-connect='.sortable'>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Qui pariatur eum ex impedit.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='important item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Illo aut officiis eum mollitia voluptatibus.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        In et rerum ipsam.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li class='item'>
                                                    <label class='check pull-left todo'>
                                                        <input type='checkbox'/>
                                                        Asperiores sed praesentium assumenda recusandae ea.
                                                    </label>
                                                    <div class='actions pull-right'>
                                                        <a class='btn btn-link edit has-tooltip' data-placement='top'
                                                           href='#' title='Edit todo'>
                                                            <i class='icon-pencil'></i>
                                                        </a>
                                                        <a class='btn btn-link remove has-tooltip' data-placement='top'
                                                           href='#' title='Remove todo'>
                                                            <i class='icon-remove'></i>
                                                        </a>
                                                        <a class='btn btn-link important has-tooltip'
                                                           data-placement='top' href='#' title='Mark as important'>
                                                            <i class='icon-bookmark-empty'></i>
                                                        </a>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class='span6'>
                            <div class='row-fluid recent-activity'>
                                <div class='span12 box box-nomargin'>
                                    <div class='box-header'>
                                        <div class='title'>
                                            <i class='icon-refresh'></i>
                                            最近活动汇总:
                                        </div>
                                        <div class='actions'>
                                            <a href="#" class="btn box-remove btn-mini btn-link"><i
                                                    class='icon-remove'></i>
                                            </a>
                                            <a href="#" class="btn box-collapse btn-mini btn-link"><i></i>
                                            </a>
                                        </div>
                                    </div>

                                    <div class='box-content box-no-padding'>
                                        <ul class='nav nav-tabs nav-tabs-simple'>
                                            <li class='active'>
                                                <a href="#users" class="green-border" data-toggle="tab"><i
                                                        class='icon-user text-green'></i>
                                                    Users
                                                </a>
                                            </li>

                                        </ul>
                                        <div class='tab-content'>
                                            <div class='tab-pane fade in active' id='users'>
                                                <ul class='unstyled users list-hover list-striped'>

                                                    <li>
                                                        <div class='avatar pull-left'>
                                                            <img alt='Avatar' height='23' src='assets/images/avatar.jpg'
                                                                 width='23'/>
                                                        </div>
                                                        <div class='action pull-left'>
                                                            <a href="#" class="text-contrast">Guadalupe Ward</a>
                                                            signed up
                                                        </div>
                                                        <small class='date pull-right muted'>
                                                            <span class='timeago fade has-tooltip' data-placement='top'
                                                                  title='2013-05-30 20:56:41 +0200'>May 30, 2013 - 20:56</span>
                                                            <i class='icon-time'></i>
                                                        </small>
                                                    </li>


                                                    <li>
                                                        <div class='avatar pull-left'>
                                                            <div class='icon-user'></div>
                                                        </div>
                                                        <div class='action pull-left'>
                                                            <a href="#" class="text-contrast">Emerson Weissnat II</a>
                                                            commented
                                                        </div>
                                                        <small class='date pull-right muted'>
                                                            <span class='timeago fade has-tooltip' data-placement='top'
                                                                  title='2013-05-30 20:57:41 +0200'>May 30, 2013 - 20:57</span>
                                                            <i class='icon-time'></i>
                                                        </small>
                                                    </li>
                                                    <li>
                                                        <div class='avatar pull-left'>
                                                            <div class='icon-user'></div>
                                                        </div>
                                                        <div class='action pull-left'>
                                                            <a href="#" class="text-contrast">Elody O&#x27;Keefe</a>
                                                            signed in
                                                        </div>
                                                        <small class='date pull-right muted'>
                                                            <span class='timeago fade has-tooltip' data-placement='top'
                                                                  title='2013-05-30 20:58:41 +0200'>May 30, 2013 - 20:58</span>
                                                            <i class='icon-time'></i>
                                                        </small>
                                                    </li>
                                                    <li>
                                                        <div class='avatar pull-left'>
                                                            <img alt='Avatar' height='23' src='assets/images/avatar.jpg'
                                                                 width='23'/>
                                                        </div>
                                                        <div class='action pull-left'>
                                                            <a href="#" class="text-contrast">Joana Zboncak</a>
                                                            uploaded photo
                                                        </div>
                                                        <small class='date pull-right muted'>
                                                            <span class='timeago fade has-tooltip' data-placement='top'
                                                                  title='2013-05-30 20:59:41 +0200'>May 30, 2013 - 20:59</span>
                                                            <i class='icon-time'></i>
                                                        </small>
                                                    </li>
                                                    <li>
                                                        <div class='avatar pull-left'>
                                                            <img alt='Avatar' height='23' src='assets/images/avatar.jpg'
                                                                 width='23'/>
                                                        </div>
                                                        <div class='action pull-left'>
                                                            <a href="#" class="text-contrast">Zander Turner</a>
                                                            signed in
                                                        </div>
                                                        <small class='date pull-right muted'>
                                                            <span class='timeago fade has-tooltip' data-placement='top'
                                                                  title='2013-05-30 21:00:41 +0200'>May 30, 2013 - 21:00</span>
                                                            <i class='icon-time'></i>
                                                        </small>
                                                    </li>
                                                    <li>
                                                        <div class='avatar pull-left'>
                                                            <img alt='Avatar' height='23' src='assets/images/avatar.jpg'
                                                                 width='23'/>
                                                        </div>
                                                        <div class='action pull-left'>
                                                            <a href="#" class="text-contrast">Miss Price Reynolds</a>
                                                            commented
                                                        </div>
                                                        <small class='date pull-right muted'>
                                                            <span class='timeago fade has-tooltip' data-placement='top'
                                                                  title='2013-05-30 21:01:41 +0200'>May 30, 2013 - 21:01</span>
                                                            <i class='icon-time'></i>
                                                        </small>
                                                    </li>
                                                </ul>

                                                <div class='load-more'>
                                                    <a href="#" class="btn btn-block"
                                                       data-loading-text="&lt;i class=&#x27;icon-spinner icon-spin&#x27;&gt;&lt;/i&gt; Loading more..."
                                                       id="users-more-activity"><i class='icon-circle-arrow-down'></i>
                                                        Load more
                                                    </a>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid">
                        <div class='group-header'>
                            <div class='row-fluid'>
                                <div class='span6 offset3'>
                                    <div class='text-center'>
                                        <h2>联系人及Email</h2>
                                        <small class='muted'>You can send some message in chat below!</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='row-fluid'>
                            <div class='span6'>
                                <div class='chat row-fluid'>
                                    <div class='box box-nomargin span12'>
                                        <div class='box-content box-no-padding'>
                                            <div class='clearfix' id='slider'>
                                                <div class='slider-content'>
                                                    <ul>
                                                        <li id='addressbook_a'>
                                                            <a class='title' name='a'>A</a>
                                                            <ul>
                                                                <li>
                                                                    <a href='#'>Adam</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Alex</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Ali</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Apple</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Arthur</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Ashley</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li id='addressbook_b'>
                                                            <a class='title' name='b'>B</a>
                                                            <ul>
                                                                <li>
                                                                    <a href='#'>Barry</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Becky</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Biff</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Billy</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Bozarking</a>
                                                                </li>
                                                                <li>
                                                                    <a href='#'>Bryan</a>
                                                                </li>
                                                            </ul>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class='span6' style="position: relative;left: 640px;top: -1110px;">
                            <div class='row-fluid'>
                                <div class='span12 box box-nomargin'>
                                    <div class='box-header blue-background'>
                                        <div class='title'>
                                            <div class='icon-envelope-alt'></div>
                                            发送电子邮件
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
                                        <input class="span12" id="email" name="email" placeholder="E-mail地址" type="text"
                                               value=""/>
                                        <textarea class="span12 wysihtml5" cols="40" id="body_" name="body[]"
                                                  placeholder="Your message..." rows="5">
                                        </textarea>
                                        <div class='text-right'>
                                            <a href="#" class="btn btn-primary">发送</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class='group-header'>
                        <div class='row-fluid'>
                            <div class='span6 offset3'>
                                <div class='text-center'>
                                    <h2>日程安排</h2>
                                    <small class='muted'>在这里，你可以查看自己的日程安排及进度!
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class='row-fluid'>
                        <div class='span6'>
                            <div class='row-fluid'>
                                <div class='span12 box box-bordered purple-border box-nomargin'>
                                    <div class='box-header purple-background'>
                                        <div class='title'>
                                            <i class='icon-calendar'></i>
                                            Calendar
                                        </div>
                                    </div>
                                    <div class='box-content'>
                                        <div class='full-calendar-demo'></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class='span6'>
                            <div class='row-fluid'>
                                <div class='span12 box box-nomargin'>
                                    <div class='box-header green-background'>
                                        <div class='title'>
                                            <div class='icon-tasks'></div>
                                            Tasks
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
                                        <ul class='unstyled tasks'>
                                            <li>
                                                <div class='task'>
                <span class='pull-left'>
                  <a href='#'>Cras sed tellus velit</a>
                </span>
                                                    <small class='pull-right'>40%</small>
                                                </div>
                                                <div class='progress progress-small'>
                                                    <div class='bar' style='width: 40%'></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class='task'>
                <span class='pull-left'>
                  <a href='#'>Quis posuere tortor - maecenas in risus</a>
                </span>
                                                    <small class='pull-right'>80%</small>
                                                </div>
                                                <div class='progress progress-danger progress-small'>
                                                    <div class='bar' style='width: 80%'></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class='task'>
                <span class='pull-left'>
                  <a href='#'>Donec sodales justo in lacus sagittis</a>
                </span>
                                                    <small class='pull-right'>58%</small>
                                                </div>
                                                <div class='progress progress-success progress-small progress-striped'>
                                                    <div class='bar' style='width: 68%'></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class='task'>
                <span class='pull-left'>
                  <a href='#'>Etiam condimentum sem nec</a>
                </span>
                                                    <small class='pull-right'>100%</small>
                                                </div>
                                                <div class='progress progress-warning progress-small'>
                                                    <div class='bar' style='width: 100%'></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class='task'>
                <span class='pull-left'>
                  <a href='#'>Etiam condimentum sem nec</a>
                </span>
                                                    <small class='pull-right'>24%</small>
                                                </div>
                                                <div class='progress progress-info progress-small'>
                                                    <div class='bar' style='width: 24%'></div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class='task'>
                <span class='pull-left'>
                  <a href='#'>Id mi placerat</a>
                </span>
                                                    <small class='pull-right'>10%</small>
                                                </div>
                                                <div class='progress progress-success progress-small'>
                                                    <div class='bar' style='width: 10%'></div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- 主页内容 end-->
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

</body>
</html>