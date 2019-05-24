<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<title>onlineSubmit-Admin</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport' />

<!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
<link href='assets/stylesheets/bootstrap/bootstrap.css' media='all'
	rel='stylesheet' type='text/css' />
<link href='assets/stylesheets/bootstrap/bootstrap-responsive.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery ui -->
<link href='assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / switch buttons -->
<link
	href='assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / xeditable -->
<link href='assets/stylesheets/plugins/xeditable/bootstrap-editable.css'
	media='all' rel='stylesheet' type='text/css' />
<link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / wysihtml5 (wysywig) -->
<link href='assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery file upload -->
<link
	href='assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / full calendar -->
<link href='assets/stylesheets/plugins/fullcalendar/fullcalendar.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / select2 -->
<link href='assets/stylesheets/plugins/select2/select2.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / mention -->
<link href='assets/stylesheets/plugins/mention/mention.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / tabdrop (responsive tabs) -->
<link href='assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / jgrowl notifications -->
<link href='assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datatables -->
<link
	href='assets/stylesheets/plugins/datatables/bootstrap-datatable.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / dynatrees (file trees) -->
<link href='assets/stylesheets/plugins/dynatree/ui.dynatree.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / color picker -->
<link
	href='assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datetime picker -->
<link
	href='assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / daterange picker) -->
<link
	href='assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / flags (country flags) -->
<link href='assets/stylesheets/plugins/flags/flags.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / slider nav (address book) -->
<link href='assets/stylesheets/plugins/slider_nav/slidernav.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / fuelux (wizard) -->
<link href='assets/stylesheets/plugins/fuelux/wizard.css' media='all'
	rel='stylesheet' type='text/css' />
<!-- / flatty theme -->
<link href='assets/stylesheets/light-theme.css'
	id='color-settings-body-color' media='all' rel='stylesheet'
	type='text/css' />
<!-- / demo -->
<link href='assets/stylesheets/demo.css' media='all' rel='stylesheet'
	type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<!-- 引入easyui -->
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="easyui/demo/demo.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<link rel="shortcut icon" type="image/x-icon"
	href="easyui/themes/default/images/browser_logo.gif" />

<c:set var="admin" value="${sessionScope.nowadmin}"/>
</head>
<body class='contrast-red '>
	<header>
		<div class='navbar'>
			<div class='navbar-inner'>
				<div class='container-fluid'>
					<a class='brand' href='index-stu.jsp'> <i
						class='icon-heart-empty'></i> <span class='hidden-phone'>onlineSubmit</span>
					</a> <a class='toggle-nav btn pull-left' href='#'> <i
						class='icon-reorder'></i>
					</a>

					<!-- 导航栏右侧 start -->
					<ul class='nav pull-right'>
						<!-- ui设置 start -->
						<li class='dropdown light only-icon'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-adjust'></i>
						</a>
							<ul class='dropdown-menu color-settings'>
								<li class='color-settings-body-color'>
									<div class='color-title'>Body color</div> <a
									data-change-to='assets/stylesheets/light-theme.css' href='#'>
										Light <small>(default)</small>
								</a> 
								
								</li>
								<li class='divider'></li>
								<li class='color-settings-contrast-color'>
									<div class='color-title'>Contrast color</div> <a href="#"
									data-change-to="contrast-red"><i
										class='icon-adjust text-red'></i> Red <small>(default)</small>
								</a> <a href="#" data-change-to="contrast-blue"><i
										class='icon-adjust text-blue'></i> Blue </a> <a href="#"
									data-change-to="contrast-orange"><i
										class='icon-adjust text-orange'></i> Orange </a> <a href="#"
									data-change-to="contrast-purple"><i
										class='icon-adjust text-purple'></i> Purple </a> <a href="#"
									data-change-to="contrast-green"><i
										class='icon-adjust text-green'></i> Green </a> <a href="#"
									data-change-to="contrast-muted"><i
										class='icon-adjust text-muted'></i> Muted </a> <a href="#"
									data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
										Facebook </a> <a href="#" data-change-to="contrast-dark"><i
										class='icon-adjust text-dark'></i> Dark </a> <a href="#"
									data-change-to="contrast-pink"><i
										class='icon-adjust text-pink'></i> Pink </a> <a href="#"
									data-change-to="contrast-grass-green"><i
										class='icon-adjust text-grass-green'></i> Grass green </a> <a
									href="#" data-change-to="contrast-sea-blue"><i
										class='icon-adjust text-sea-blue'></i> Sea blue </a> <a href="#"
									data-change-to="contrast-banana"><i
										class='icon-adjust text-banana'></i> Banana </a> <a href="#"
									data-change-to="contrast-dark-orange"><i
										class='icon-adjust text-dark-orange'></i> Dark orange </a> <a
									href="#" data-change-to="contrast-brown"><i
										class='icon-adjust text-brown'></i> Brown </a>
								</li>
							</ul></li>
						<!-- ui设置 end -->

						<!-- 消息提示栏 start -->
						<li class='dropdown medium only-icon widget'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-rss'></i>
								<div class='label'>0</div>
						</a>
							</li>
						<!-- 消息提示栏 end -->


						<!-- 用户栏 start -->
						<li class='dropdown dark user-menu'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <img
								alt='Mila Kunis' height='23' src='assets/images/avatar.jpg'
								width='23' /> <span class='user-name hidden-phone'>${admin.adminName}</span> <b
								class='caret'></b>
						</a>
							<ul class='dropdown-menu'>
								<li><a href='admin_profile.jsp'> <i class='icon-user'></i>
										个人中心
								</a></li>
								
								<li><a href='adminctlr/loginOff.do'> <i class='icon-signout'></i>
										安全退出
								</a></li>
							</ul></li>
						<!-- 用户栏 end -->
					</ul>
					<!-- 导航栏右侧 end -->


					<!-- 导航栏搜索栏 start -->
					<form accept-charset="UTF-8" action="search_results.html"
						class="navbar-search pull-right hidden-phone" method="get" />
					<div style="margin:0;padding:0;display:inline">
						<input name="utf8" type="hidden" value="&#x2713;" />
					</div>
					<button class="btn btn-link icon-search" name="button"
						type="submit"></button>
					<input autocomplete="off" class="search-query span2" id="q_header"
						name="q" placeholder="Search..." type="text" value="" />
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
					<form accept-charset="UTF-8" action="search_results.html"
						method="get" />
					<div style="margin:0;padding:0;display:inline">
						<input name="utf8" type="hidden" value="&#x2713;" />
					</div>
					<div class='search-wrapper'>
						<input autocomplete="off" class="search-query" id="q" name="q"
							placeholder="Search..." type="text" value="" />
						<button class="btn btn-link icon-search" name="button"
							type="submit"></button>
					</div>
					</form>
					<!--不知道干啥的搜索框（暂时注掉） end-->
				</div>


				<!--左侧导航栏 start-->
				<ul class='nav nav-stacked'>
					<li class=''><a href='index-admin.jsp'> <i
							class='icon-dashboard'></i> <span>主页</span>
					</a></li>
					<li class=''><a href='manageClassInfo.jsp'> <i
							class='icon-cog'></i> <span>管理班级信息</span>
					</a></li>

					<li class='active'><a href='manageStudentInfo.jsp'> <i
							class='icon-cog'></i> <span>管理学生信息</span>
					</a></li>

					<li class=''><a href='manageTeacherInfo.jsp'> <i
							class='icon-cog'></i> <span>管理教师信息</span>
					</a></li>

					<li class=''><a href='FileUpload.jsp'> <i class='icon-cog'></i>
							<span>批量添加学生信息</span>
					</a></li>



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
										<i class='icon-list-ul'></i> <span>管理学生信息</span>
									</h1>
									<div class='pull-right'>
										<ul class='breadcrumb'>
											<li><a href="index-admin.jsp"><i
													class='icon-bar-chart'></i> </a></li>
											<li class='separator'><i class='icon-angle-right'></i></li>

											<li class='active'>管理学生信息</li>
										</ul>
									</div>


									<!--正文内容填充区 start-->
									<hr class='hr-double' />
									<div class='row-fluid'>
										<div class='span6 box bordered-box orange-border'
											style='margin-bottom:0;'>
											<div class='box-header purple-background'>
												<div class='title'>学生信息列表</div>
												<div class='actions'>
													<a href="#" class="btn box-remove btn-mini btn-link"><i
														class='icon-remove'></i> </a> <a href="#"
														class="btn box-collapse btn-mini btn-link"><i></i> </a>
												</div>
											</div>
											<div class='box-content box-no-padding'>
												<div class='responsive-table'>
													<div class='scrollable-area' style="height: 500px">

														<table id="dateGrid" class="easyui-datagrid"
															style="width: 100%; height: 100%"
															data-options="pagination:true,rownumbers:true,singleSelect:true,url:'adminctlr/searchAllStudent.do',method:'get',toolbar:'#tb'">
															<thead>
																<tr>
																	<th data-options="field:'studentId',align:'center'">学号</th>
																	<th data-options="field:'studentName',align:'center'">姓名</th>
																	<th data-options="field:'studentPass' ,align:'center'">密码</th>
																	<th data-options="field:'classId' ,align:'center'">班级编号</th>


																</tr>
															</thead>
														</table>

													</div>
												</div>
											</div>
										</div>
									</div>

									
 								</div>

								<!-- 弹出框 start -->



								<div class='modal hide fade' id='noChooseObject' role='dialog'
									tabindex='-1'>
									<div class='modal-header'>
										<button class='close' data-dismiss='modal' type='button'>&times;</button>
										<h3 style="color:red">您当前尚未选择要操作的对象!</h3>
									</div>

									<div class='modal-footer'>
										<button class='btn btn-primary' data-dismiss='modal'>确定</button>
										<!-- <button class='btn btn-primary'>Save changes</button> -->
									</div>
								</div>


								<div class='modal hide fade' id='deleteChooseObject'
									role='dialog' tabindex='-1'>
									<div class='modal-header'>
										<button class='close' data-dismiss='modal' type='button'>&times;</button>
										<h3 style="color:red">您是否确认删除</h3>
									</div>

									<div class='modal-footer'>
										<button id="deleteOneStuInfo" class='btn btn-danger'
											data-dismiss='modal'>确定</button>
										<button class='btn btn-primary' data-dismiss='modal'>取消</button>
									</div>
								</div>


								<!-- 弹出框 end -->


								<!-- 新增班级信息 modal start-->

								<div class='modal hide fade' id='addNewStuInfo' role='dialog'
									tabindex='-1'>
									<div class='modal-header'>
										<button class='close' data-dismiss='modal' type='button'>&times;</button>
										<h3>新增学生信息</h3>
									</div>
									<div class='modal-body'>
										<form class='form' style='margin-bottom: 0;'>

											<div class='control-group'>
												<label class='control-label'>学号</label>
												<div class='controls'>
													<input class='span12' id='stuid' type="number" value="" />
													<p class='help-block' />
												</div>
											</div>

											<div class='control-group'>
												<label class='control-label'>学生姓名</label>
												<div class='controls'>
													<input class='span12' id='stuname' type='text' value="张希光" />
													<p class='help-block' />
												</div>
											</div>

											<div class='control-group'>
												<label class='control-label'>学生密码</label>
												<div class='controls'>
													<input class='span12' id='stupass' type="password"
														value="123456" />
													<p class='help-block' />
												</div>
											</div>

											<div class='control-group'>
												<label class='control-label'>班级编号</label>
												<div class='controls'>

													<input class='input-xlarge span12' disabled='' id='classid'
														placeholder='您可以通过选择院系-专业-班级，自动获取班级编号' type='text' />
													<p class='help-block' />
												</div>
											</div>


											<div class='control-group'>
												<div class='controls'>
													<label class='control-label' for='depa'>院系</label>
													<div class='controls'>

														<select name="depa" id="depa">
															<option>===请选择院系===</option>
														</select>

													</div>

												</div>
											</div>

											<div class='control-group'>
												<div class='controls'>
													<label class='control-label' for='major'>专业</label>
													<div class='controls'>

														<select name="major" id="major">
															<option>===请选择专业===</option>
														</select>

													</div>
												</div>
											</div>


											<div class='control-group'>
												<div class='controls'>
													<label class='control-label' for='addclass'>班级</label>
													<div class='controls'>

														<select name="class" id="addclass">
															<option>===请选择班级===</option>
														</select>

													</div>
												</div>
											</div>

										</form>
									</div>
									<div class='modal-footer'>
										<button class='btn btn-danger' data-dismiss='modal'>取消添加</button>
										<button id="addNewStuInfoBtn" class='btn btn-primary'
											data-dismiss='modal'>确认添加</button>
									</div>
								</div>



								<!-- 新增班级信息 modal end-->

								<!-- 编辑班级信息 modal start-->

								<div class='modal hide fade' id='editNewStuInfo' role='dialog'
									tabindex='-1'>
									<div class='modal-header'>
										<button class='close' data-dismiss='modal' type='button'>&times;</button>
										<h3>编辑学生信息</h3>
									</div>
									<div class='modal-body'>
										<form class='form' style='margin-bottom: 0;'>

											<div class='control-group'>
												<label class='control-label'>学号(暂不提供修改)</label>
												<div class='controls'>
													<input class='input-xlarge span12' id='editStuId'
														disabled='' type="number" value="" />
													<p class='help-block' />
												</div>
											</div>

											<div class='control-group'>
												<label class='control-label'>学生姓名</label>
												<div class='controls'>
													<input class='span12' id='editStuName' type='text' />
													<p class='help-block' />
												</div>
											</div>

											<div class='control-group'>
												<label class='control-label'>学生密码</label>
												<div class='controls'>
													<input class='span12' id='editStuPass' type="password" />
													<p class='help-block' />
												</div>
											</div>

											<div class='control-group'>
												<label class='control-label'>班级编号(您可以通过选择院系-专业-班级，自动获取班级编号)</label>
												<div class='controls'>

													<input class='input-xlarge span12' disabled=''
														id='editClassid' placeholder='您可以通过选择院系-专业-班级，自动获取班级编号'
														type='text' />
													<p class='help-block' />
												</div>
											</div>



											<div class='control-group'>
												<div class='controls'>
													<label class='control-label' for='depa2'>院系</label>
													<div class='controls'>

														<select name="depa2" id="depa2">
															<option>===请选择院系===</option>
														</select>

													</div>

												</div>
											</div>

											<div class='control-group'>
												<div class='controls'>
													<label class='control-label' for='major2'>专业</label>
													<div class='controls'>

														<select name="major" id="major2">
															<option>===请选择专业===</option>
														</select>

													</div>
												</div>
											</div>


											<div class='control-group'>
												<div class='controls'>
													<label class='control-label' for='editclass2'>班级</label>
													<div class='controls'>

														<select name="class" id="editclass2">
															<option>===请选择班级===</option>
														</select>

													</div>
												</div>
											</div>

										</form>
									</div>
									<div class='modal-footer'>
										<button class='btn  btn-danger' data-dismiss='modal'>取消编辑</button>
										<button id="editOneStuInfo" class='btn btn-primary'
											data-dismiss='modal'>确认编辑</button>
									</div>
								</div>

								<!-- 编辑班级信息 modal end-->
								<!--正文内容填充区 end-->
							</div>
						</div>
					</div>
				</div>

			</div>
		</section>
		<!--主页内容 end-->

	</div>

	<!-- / jquery mobile events (for touch and slide) -->
	<script
		src='assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js'
		type='text/javascript'></script>
	<!-- / jquery migrate (for compatibility with new jquery) -->
	<script src='assets/javascripts/jquery/jquery-migrate.min.js'
		type='text/javascript'></script>
	<!-- / jquery ui -->
	<script src='assets/javascripts/jquery_ui/jquery-ui.min.js'
		type='text/javascript'></script>
	<!-- / bootstrap -->
	<script src='assets/javascripts/bootstrap/bootstrap.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/flot/excanvas.js'
		type='text/javascript'></script>
	<!-- / sparklines -->
	<script
		src='assets/javascripts/plugins/sparklines/jquery.sparkline.min.js'
		type='text/javascript'></script>
	<!-- / flot charts -->
	<script src='assets/javascripts/plugins/flot/flot.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/flot/flot.resize.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/flot/flot.pie.js'
		type='text/javascript'></script>
	<!-- / bootstrap switch -->
	<script
		src='assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js'
		type='text/javascript'></script>
	<!-- / fullcalendar -->
	<script
		src='assets/javascripts/plugins/fullcalendar/fullcalendar.min.js'
		type='text/javascript'></script>
	<!-- / datatables -->
	<script
		src='assets/javascripts/plugins/datatables/jquery.dataTables.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js'
		type='text/javascript'></script>
	<!-- / wysihtml5 -->
	<script src='assets/javascripts/plugins/common/wysihtml5.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/common/bootstrap-wysihtml5.js'
		type='text/javascript'></script>
	<!-- / select2 -->
	<script src='assets/javascripts/plugins/select2/select2.js'
		type='text/javascript'></script>
	<!-- / color picker -->
	<script
		src='assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
		type='text/javascript'></script>
	<!-- / mention -->
	<script src='assets/javascripts/plugins/mention/mention.min.js'
		type='text/javascript'></script>
	<!-- / input mask -->
	<script
		src='assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js'
		type='text/javascript'></script>
	<!-- / fileinput -->
	<script
		src='assets/javascripts/plugins/fileinput/bootstrap-fileinput.js'
		type='text/javascript'></script>
	<!-- / modernizr -->
	<script src='assets/javascripts/plugins/modernizr/modernizr.min.js'
		type='text/javascript'></script>
	<!-- / retina -->
	<script src='assets/javascripts/plugins/retina/retina.js'
		type='text/javascript'></script>
	<!-- / fileupload -->
	<script src='assets/javascripts/plugins/fileupload/tmpl.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/fileupload/load-image.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/canvas-to-blob.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/fileupload/jquery.fileupload-init.js'
		type='text/javascript'></script>
	<!-- / timeago -->
	<script src='assets/javascripts/plugins/timeago/jquery.timeago.js'
		type='text/javascript'></script>
	<!-- / slimscroll -->
	<script
		src='assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js'
		type='text/javascript'></script>
	<!-- / autosize (for textareas) -->
	<script
		src='assets/javascripts/plugins/autosize/jquery.autosize-min.js'
		type='text/javascript'></script>
	<!-- / charCount -->
	<script src='assets/javascripts/plugins/charCount/charCount.js'
		type='text/javascript'></script>
	<!-- / validate -->
	<script
		src='assets/javascripts/plugins/validate/jquery.validate.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/validate/additional-methods.js'
		type='text/javascript'></script>
	<!-- / naked password -->
	<script
		src='assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js'
		type='text/javascript'></script>
	<!-- / nestable -->
	<script src='assets/javascripts/plugins/nestable/jquery.nestable.js'
		type='text/javascript'></script>
	<!-- / tabdrop -->
	<script src='assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js'
		type='text/javascript'></script>
	<!-- / jgrowl -->
	<script src='assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js'
		type='text/javascript'></script>
	<!-- / bootbox -->
	<script src='assets/javascripts/plugins/bootbox/bootbox.min.js'
		type='text/javascript'></script>
	<!-- / inplace editing -->
	<script
		src='assets/javascripts/plugins/xeditable/bootstrap-editable.min.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/plugins/xeditable/wysihtml5.js'
		type='text/javascript'></script>
	<!-- / ckeditor -->
	<script src='assets/javascripts/plugins/ckeditor/ckeditor.js'
		type='text/javascript'></script>
	<!-- / filetrees -->
	<script
		src='assets/javascripts/plugins/dynatree/jquery.dynatree.min.js'
		type='text/javascript'></script>
	<!-- / datetime picker -->
	<script
		src='assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'
		type='text/javascript'></script>
	<!-- / daterange picker -->
	<script
		src='assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js'
		type='text/javascript'></script>
	<script
		src='assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'
		type='text/javascript'></script>
	<!-- / max length -->
	<script
		src='assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js'
		type='text/javascript'></script>
	<!-- / dropdown hover -->
	<script
		src='assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'
		type='text/javascript'></script>
	<!-- / slider nav (address book) -->
	<script src='assets/javascripts/plugins/slider_nav/slidernav-min.js'
		type='text/javascript'></script>
	<!-- / fuelux -->
	<script src='assets/javascripts/plugins/fuelux/wizard.js'
		type='text/javascript'></script>
	<!-- / flatty theme -->
	<script src='assets/javascripts/nav.js' type='text/javascript'></script>
	<script src='assets/javascripts/tables.js' type='text/javascript'></script>
	<script src='assets/javascripts/theme.js' type='text/javascript'></script>
	<!-- / demo -->
	<script src='assets/javascripts/demo/jquery.mockjax.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/demo/inplace_editing.js'
		type='text/javascript'></script>
	<script src='assets/javascripts/demo/charts.js' type='text/javascript'></script>
	<script src='assets/javascripts/demo/demo.js' type='text/javascript'></script>

	<script type="text/javascript">
	
	
		$(document).ready(function() {
	
			$('#dateGrid').datagrid({
				toolbar : [ {
					iconCls : 'icon-add',
					handler : function() {
						$("#addNewStuInfo").modal()
	
					}
				}, '-', {
					iconCls : 'icon-edit',
					handler : function() {
						//这个匿名函数就是当用户点击datagrid上面当删除按钮时应该执行当业务代码
						//1.通过datagrid的方法获取用户当前选择的行信息
						var yourSelect = $("#dateGrid").datagrid("getSelected");
	
						//2.判断选择的行是否为null，
						if (yourSelect == null) {
							$('#noChooseObject').modal();
						} else {
							$("#editNewStuInfo").modal()
							$("#editStuId").attr("value", yourSelect.studentId)
							$("#editStuName").attr("value", yourSelect.studentName)
							$("#editStuPass").attr("value", yourSelect.studentPass)
							$("#editClassid").attr("value", yourSelect.classId)
	
	
	
						}
	
	
					}
				}, '-', {
					iconCls : 'icon-save',
					handler : function() {
					
						$.ajax({
						type : "post",
						url : "adminctlr/exportStuInfoByExcel.do",
						dataType : "json",
						
						error : function(data) { //如果确定能正确运行,可不写
	
	
							return bootbox.dialog(data.exportStuInfoByExcelResult, [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
						},
						success : function(data) {
							
	
	
	
							return bootbox.dialog(data.exportStuInfoByExcelResult, [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
	
						}
					})
					
					
					}
				}, '-', {
					iconCls : 'icon-remove',
					handler : function() {
	
						//这个匿名函数就是当用户点击datagrid上面当删除按钮时应该执行当业务代码
						//1.通过datagrid的方法获取用户当前选择的行信息
						var yourSelect = $("#dateGrid").datagrid("getSelected");
						//2.判断选择的行是否为null，
						if (yourSelect == null) {
							$('#noChooseObject').modal();
						} else {
							$('#deleteChooseObject').modal();
						}
	
	
					}
				} ],
				striped : true,
				fitColumns : true,
				/* idField : "userid", */
				loadMsg : "正在加载信息，请稍后！",
				checkOnSelect : true,
				autoSizeColumn : true
			});
	
	
			$("#deleteOneStuInfo").click(function() {
				var yourSelect = $("#dateGrid").datagrid("getSelected");
				var willdeleteUserid = yourSelect.studentId;
	
				$.ajax({
					type : "post",
					url : "adminctlr/deleteOneStuInfo.do",
					dataType : "text",
					data : {
						"studentId" : willdeleteUserid
					},
					success : function(data) {
						$("#dateGrid").datagrid("reload")
						var json = eval("(" + data + ")")
	
						return bootbox.dialog(json.deleteStuResulkt, [
							{
								label : "确认",
								"class" : "btn-primary"
							}
						]);
					},
					error : function(data) {
						var json = eval("(" + data + ")")
	
						return bootbox.dialog(json.deleteStuResulkt, [
							{
								label : "确认",
								"class" : "btn-primary"
							}
						]);
					}
				})
	
			});
	
	
			$("#addNewStuInfoBtn").click(function() {
				var stuid = $("#stuid").val();
				var stuname = $("#stuname").val();
				var stupass = $("#stupass").val();
				var classnum = $("#classid").val();
	
	
	
				if (stuid.length != 0 && stuname.length != 0 && stupass.length != 0 && classnum.length != 0) {
					$.ajax({
						type : "post",
						url : "adminctlr/addOneStuInfo.do",
						dataType : "json",
						data : {
							"studentid" : stuid,
							"studentName" : stuname,
							"studentPass" : stupass,
							"classId" : classnum
						},
						error : function(data) { //如果确定能正确运行,可不写
	
	
							return bootbox.dialog(data.addStuResult, [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
						},
						success : function(data) {
							$("#dateGrid").datagrid("reload")
	
	
	
							return bootbox.dialog(data.addStuResult, [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
	
						}
					})
				} else {
	
	
					return bootbox.dialog("信息不能为空!", [
						{
							label : "Okay",
							"class" : "btn-danger"
						}
					]);
	
				}
	
			});
			$("#stuid").blur(function() {
				var stuid = $("#stuid").val()
	
				$.ajax({
					type : "post",
					url : "adminctlr/stuIdCheck.do",
					dataType : "json",
					data : {
						"stuid" : stuid,
					},
					error : function(data) { //如果确定能正确运行,可不写
	
	
						return bootbox.dialog(data.stuIdCheck, [
							{
								label : "确认",
								"class" : "btn-primary"
							}
						]);
					},
					success : function(data) {
						$("#dateGrid").datagrid("reload")
	
	
	
						return bootbox.dialog(data.stuIdCheck, [
							{
								label : "确认",
								"class" : "btn-primary"
							}
						]);
	
					}
				})
	
			});
	
			$("#edit-stuid").blur(function() {
				var stuid = $("#stuid").val()
	
				$.ajax({
					type : "post",
					url : "adminctlr/stuIdCheck.do",
					dataType : "json",
					data : {
						"stuid" : stuid,
					},
					error : function(data) { //如果确定能正确运行,可不写
	
	
						return bootbox.dialog(data.stuIdCheck, [
							{
								label : "确认",
								"class" : "btn-primary"
							}
						]);
					},
					success : function(data) {
						$("#dateGrid").datagrid("reload")
	
	
	
						return bootbox.dialog(data.stuIdCheck, [
							{
								label : "确认",
								"class" : "btn-primary"
							}
						]);
	
					}
				})
	
			});
	
	
			$("#editOneStuInfo").click(function() {
				var yourSelect = $("#dateGrid").datagrid("getSelected");
				var studentId = $("#dateGrid").datagrid("getSelected").studentId;
				var studentName = $("#dateGrid").datagrid("getSelected").studentName;
				var studentPass = $("#dateGrid").datagrid("getSelected").studentPass;
				var classId = $("#dateGrid").datagrid("getSelected").classId;
	
				/* alert(classId)
				alert(classNum)
				alert(classDepa)
				alert(classMajor) */
	
				var nowStudentName = $("#editStuName").val();
				var nowStudentPass = $("#editStuPass").val();
				var nowClassId = $("#editClassid").val();
	
	
				if (studentName == nowStudentName && studentPass == nowStudentPass && classId == nowClassId) {
	
					return bootbox.dialog("当前信息并未修改", [
						{
							label : "确认",
							"class" : "btn-primary"
						}
					]);
				} else {
	
	
					$.ajax({
						type : "post",
						url : "adminctlr/editStuInfo.do",
						dataType : "json",
						data : {
							"studentId" : studentId,
							"studentName" : nowStudentName,
							"studentPass" : nowStudentPass,
							"classId" : nowClassId
						},
						error : function(data) { //如果确定能正确运行,可不写
	
	
							return bootbox.dialog(data.editStuResult, [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
						},
						success : function(data) {
							$("#dateGrid").datagrid("reload")
	
	
	
							return bootbox.dialog(data.editStuResult, [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
	
						}
					})
	
				}
	
	
			});
	
	
	
	
	
	
	
	
		})
	</script>


	<script type="text/javascript">
	
		window.onload = function ajaxSend() {
			
			$.ajax({
				type : "post", // 指定是post还是get
				url : "adminctlr/searchDepaInfo.do", //发送请求的地址
				dataType : "json",
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
				
					//alert(data.allDepa);
					for (var i = 0; i < data.allDepa.length; i++) {
						var op = document.createElement("option"); //创建一个指名名称元素
						op.value = data.allDepa[i]; //设置op的实际值为当前的省份名称
						var textNode = document.createTextNode(data.allDepa[i]); //创建文本节点
						op.appendChild(textNode); //把文本子节点添加到op元素中，指定其显示值
						
						var op2 = document.createElement("option"); //创建一个指名名称元素
						op2.value = data.allDepa[i]; //设置op的实际值为当前的省份名称
						var textNode = document.createTextNode(data.allDepa[i]); //创建文本节点
						op2.appendChild(textNode); //把文本子节点添加到op元素中，指定其显示值
	
						document.getElementById("depa").appendChild(op);
						 document.getElementById("depa2").appendChild(op2); 
						
					}
				}
			})
		}
	
	
		$("#depa").change(function() {
	
			var depaname = $("#depa").val()
	
	
			$.ajax({
				type : "post",
				url : "adminctlr/searchMajorInfo.do",
				dataType : "json",
				data : {
					"depaName" : depaname
				},
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
	
					/* alert(data.allMajor) */
					//如果是jsonArray这样返回
					//alert(data[0].name);
					//返回json结果
					/*
							把select中的所有option移除（除了请选择）
					 */
					var citySelect = document.getElementById("major");
					// 获取其所有子元素
					var optionEleList = citySelect.getElementsByTagName("option");
					// 循环遍历每个option元素，然后在citySelect中移除
					while (optionEleList.length > 1) { //子元素的个数如果大于1就循环，等于1就不循环了！
						citySelect.removeChild(optionEleList[1]); //总是删除1下标，因为1删除了，2就变成1了！
					}
	
	
					for (var i = 0; i < data.allMajor.length; i++) {
						var op = document.createElement("option"); //创建一个指名名称元素
						op.value = data.allMajor[i]; //设置op的实际值为当前的省份名称
						var textNode = document.createTextNode(data.allMajor[i]); //创建文本节点
						op.appendChild(textNode); //把文本子节点添加到op元素中，指定其显示值
	
						document.getElementById("major").appendChild(op);
					}
	
				}
			})
		});
	
		$("#major").change(function() {
	
			var depaname = $("#depa").val()
			var majorname = $("#major").val()
	
	
			$.ajax({
				type : "post",
				url : "adminctlr/searchClassInfo.do",
				dataType : "json",
				data : {
					"depaName" : depaname,
					"majorName" : majorname
				},
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
	
					/* alert(data.allMajor) */
					//如果是jsonArray这样返回
					//alert(data[0].name);
					//返回json结果
					/*
							把select中的所有option移除（除了请选择）
					 */
					var citySelect = document.getElementById("addclass");
					// 获取其所有子元素
					var optionEleList = citySelect.getElementsByTagName("option");
					// 循环遍历每个option元素，然后在citySelect中移除
					while (optionEleList.length > 1) { //子元素的个数如果大于1就循环，等于1就不循环了！
						citySelect.removeChild(optionEleList[1]); //总是删除1下标，因为1删除了，2就变成1了！
					}
	
	
					for (var i = 0; i < data.allClass.length; i++) {
						var op = document.createElement("option"); //创建一个指名名称元素
						op.value = data.allClass[i]; //设置op的实际值为当前的省份名称
						var textNode = document.createTextNode(data.allClass[i]); //创建文本节点
						op.appendChild(textNode); //把文本子节点添加到op元素中，指定其显示值
	
						document.getElementById("addclass").appendChild(op);
					}
	
				}
			})
		})
	
		$("#addclass").change(function() {
	
			var depaname = $("#depa  option:selected").val();
			var majorname = $("#major option:selected").val();
			var classname = $(this).val();
			/* alert(classname) */
	
			$.ajax({
				type : "post",
				url : "adminctlr/searchClassIdInfo.do",
				dataType : "json",
				data : {
					"depaName" : depaname,
					"majorName" : majorname,
					"className" : classname
				},
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
	
					$("#classid").val(data.ClassId)
	
				}
			})
		})
	
	
	
	
		$("#depa2").change(function() {
	
			var depaname = $("#depa2").val()
	
	
			$.ajax({
				type : "post",
				url : "adminctlr/searchMajorInfo.do",
				dataType : "json",
				data : {
					"depaName" : depaname
				},
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
	
					/* alert(data.allMajor) */
					//如果是jsonArray这样返回
					//alert(data[0].name);
					//返回json结果
					/*
							把select中的所有option移除（除了请选择）
					 */
					var citySelect = document.getElementById("major2");
					// 获取其所有子元素
					var optionEleList = citySelect.getElementsByTagName("option");
					// 循环遍历每个option元素，然后在citySelect中移除
					while (optionEleList.length > 1) { //子元素的个数如果大于1就循环，等于1就不循环了！
						citySelect.removeChild(optionEleList[1]); //总是删除1下标，因为1删除了，2就变成1了！
					}
	
	
					for (var i = 0; i < data.allMajor.length; i++) {
						var op = document.createElement("option"); //创建一个指名名称元素
						op.value = data.allMajor[i]; //设置op的实际值为当前的省份名称
						var textNode = document.createTextNode(data.allMajor[i]); //创建文本节点
						op.appendChild(textNode); //把文本子节点添加到op元素中，指定其显示值
	
						document.getElementById("major2").appendChild(op);
					}
	
				}
			})
		});
	
		$("#major2").change(function() {
	
			var depaname = $("#depa2").val()
			var majorname = $("#major2").val()
	
	
			$.ajax({
				type : "post",
				url : "adminctlr/searchClassInfo.do",
				dataType : "json",
				data : {
					"depaName" : depaname,
					"majorName" : majorname
				},
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
	
					/* alert(data.allMajor) */
					//如果是jsonArray这样返回
					//alert(data[0].name);
					//返回json结果
					/*
							把select中的所有option移除（除了请选择）
					 */
					var citySelect = document.getElementById("editclass2");
					// 获取其所有子元素
					var optionEleList = citySelect.getElementsByTagName("option");
					// 循环遍历每个option元素，然后在citySelect中移除
					while (optionEleList.length > 1) { //子元素的个数如果大于1就循环，等于1就不循环了！
						citySelect.removeChild(optionEleList[1]); //总是删除1下标，因为1删除了，2就变成1了！
					}
	
	
					for (var i = 0; i < data.allClass.length; i++) {
						var op = document.createElement("option"); //创建一个指名名称元素
						op.value = data.allClass[i]; //设置op的实际值为当前的省份名称
						var textNode = document.createTextNode(data.allClass[i]); //创建文本节点
						op.appendChild(textNode); //把文本子节点添加到op元素中，指定其显示值
	
						document.getElementById("editclass2").appendChild(op);
					}
	
				}
			})
		})
	
		$("#editclass2").change(function() {
	
			var depaname = $("#depa2  option:selected").val();
			var majorname = $("#major2 option:selected").val();
			var classname = $(this).val();
			/* alert(classname) */
	
			$.ajax({
				type : "post",
				url : "adminctlr/searchClassIdInfo.do",
				dataType : "json",
				data : {
					"depaName" : depaname,
					"majorName" : majorname,
					"className" : classname
				},
				error : function() { //如果确定能正确运行,可不写
					alert("发生错误");
				},
				success : function(data) {
	
					$("#editClassid").val(data.ClassId)
	
				}
			})
		})
	</script>

	



</body>
</html>
