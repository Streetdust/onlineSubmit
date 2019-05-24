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
</head>


<c:set var="admin" value="${sessionScope.nowadmin}" />
<body class='contrast-red '>
	<header>
		<div class='navbar'>
			<div class='navbar-inner'>
				<div class='container-fluid'>
					<a class='brand' href='index.html'> <i class='icon-heart-empty'></i>
						<span class='hidden-phone'>onlineSubmit</span>
					</a> <a class='toggle-nav btn pull-left' href='#'> <i
						class='icon-reorder'></i>
					</a>
					<ul class='nav pull-right'>
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
						<li class='dropdown medium only-icon widget'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-rss'></i>
								<div class='label'>0</div>
						</a></li>
						<li class='dropdown dark user-menu'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <img
								alt='Mila Kunis' height='23' src='assets/images/avatar.jpg'
								width='23' /> <span class='user-name hidden-phone'>${admin.adminName}</span>
								<b class='caret'></b>
						</a>
							<ul class='dropdown-menu'>
								<li><a href='admin_profile.jsp'> <i class='icon-user'></i>
										个人中心
								</a></li>

								<li><a href='adminctlr/loginOff.do'> <i
										class='icon-signout'></i> 安全退出
								</a></li>
							</ul></li>
					</ul>
					<form accept-charset="UTF-8" action="search_results.html"
						class="navbar-search pull-right hidden-phone" method="get">
						<div style="margin:0;padding:0;display:inline">
							<input name="utf8" type="hidden" value="&#x2713;" />
						</div>
						<button class="btn btn-link icon-search" name="button"
							type="submit"></button>
						<input autocomplete="off" class="search-query span2" id="q_header"
							name="q" placeholder="Search..." type="text" value="" />
					</form>
				</div>
			</div>
		</div>
	</header>
	<div id='wrapper'>
		<div id='main-nav-bg'></div>
		<nav class='' id='main-nav'>
			<div class='navigation'>
				<div class='search'>
					<form accept-charset="UTF-8" action="search_results.html"
						method="get">
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
				</div>
				<!--左侧导航栏 start-->
				<ul class='nav nav-stacked'>
					<li class='active'><a href='index-admin.jsp'> <i
							class='icon-dashboard'></i> <span>主页</span>
					</a></li>
					<li class=''><a href='manageClassInfo.jsp'> <i
							class='icon-cog'></i> <span>管理班级信息</span>
					</a></li>

					<li class=''><a href='manageStudentInfo.jsp'> <i
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
		<section id='content'>
			<div class='container-fluid'>
				<div class='row-fluid' id='content-wrapper'>
					<div class='span12'>
						<div class='page-header'>
							<h1 class='pull-left'>
								<i class='icon-list-ul'></i> <span>个人中心</span>
							</h1>
							<div class='pull-right'>
								<ul class='breadcrumb'>
									<li><a href="index-admin.jsp"><i
											class='icon-bar-chart'></i> </a></li>
									<li class='separator'><i class='icon-angle-right'></i></li>
									<li>个人中心</li>

								</ul>
							</div>
						</div>
						<!-- 正文内容 start -->
						<div class='row-fluid'>

							<div class='span9 box'>
								<div class='box-content box-double-padding'>
									<form class='form' style='margin-bottom: 0;'>
										<fieldset>
											<div class='span4'>
												<div class='lead'>
													<i class='icon-signin text-contrast'></i> 当前账户信息
												</div>
												<small class='muted'>您可以修改账户的密码，但是需要验证老密码，或者手机号。温馨提示，您仅可以同时修改一项信息哦！</small>
											</div>
											<div class='span7 offset1'>
												<div class='control-group'>
													<label class='control-label'>管理员账户(不支持修改)</label>
													<div class='controls'>
														<input class='span12' id='username'
															placeholder='管理员账户(不支持修改)' disabled="" type='text'
															value="${admin.adminName}" />
													</div>
												</div>
												<div class='control-group'>
													<label class='control-label'>当前密码</label>
													<div class='controls'>
														<input class='span12' id='adminPassForHid'
															placeholder='当前密码' disabled="" type='text' " /> <input
															class='span12' id='adminPass' placeholder='当前密码'
															type="hidden" value="${admin.adminPass}" />
													</div>
												</div>
												<div class='control-group'>
													<label class='control-label'>手机号码</label>
													<div class='controls'>
														<input class='span12' id='adminTelForHid'
															placeholder='手机号码' disabled="" type='text' " /> <input
															class='span12' id='adminTel' placeholder='手机号码'
															type="hidden" value="${admin.adminTel}" />
													</div>
												</div>
												<hr class='hr-normal' />
												<div class='control-group'>
													<div class='controls'>

														<label class='checkbox'> <input
															data-target='#change-Tel' data-toggle='collapse'
															id="changePhone" type='checkbox' value='option1' />
															修改手机号?
														</label>
													</div>
												</div>
												<div class='collapse' id='change-Tel'>
													<div class='control-group'>
														<label class='control-label'>手机号</label>
														<div class='controls'>
															<input class='span6' id='inputPhone' placeholder='手机'
																type='password' />
														</div>
													</div>
													<div class='control-group'>
														<label class='control-label'>点击获取短信验证码</label>
														<div class='controls'>
															<button type="button" id="captchaBtn"
																class="btn btn-primary" onclick="getNoteCode(this)">获取验证码</button>
														</div>
													</div>

													<div class='control-group'>
														<label class='control-label'>短信验证码</label>
														<div class='controls'>
															<input class='span6 ' id='phoneCaptcha'
																placeholder='点击获取短信验证码' type='number' />
														</div>
													</div>

													<div class='control-group'>
														<label class='control-label'>新的手机号</label>
														<div class='controls'>
															<input class='span6' id='newPhoneNumber'
																placeholder='新的手机号' type='number' />
														</div>
													</div>
												</div>
												<hr class='hr-normal' />
												<div class='control-group'>
													<div class='controls'>

														<label class='checkbox'> <input
															data-target='#change-password' data-toggle='collapse'
															id="changePassword" type='checkbox' value='option1' />
															修改密码?
														</label>
													</div>
												</div>

												<div class='collapse' id='change-password'>
													<div class='control-group'>
														<label class='control-label'>现在的密码</label>
														<div class='controls'>
															<input class='span6 ' id='password' placeholder='现在的密码'
																type='password' />
														</div>
													</div>


													<div class='control-group'>
														<label class='control-label' for='validation_password'>请输入新密码</label>
														<div class='controls'>
															<input data-rule-minlength='6' data-rule-password='true'
																data-rule-required='true' id='onePasswod'
																name='validation_password' placeholder='请输入新密码'
																type='password' />
														</div>
													</div>
													<div class='control-group'>
														<label class='control-label'
															for='validation_password_confirmation'>请再次输入新密码</label>
														<div class='controls'>
															<input data-rule-equalto='#validation_password'
																data-rule-required='true' id='twoPasswod'
																name='validation_password_confirmation'
																placeholder='请再次输入新密码' type='password' />
														</div>
													</div>

													<div class='control-group'>
														<label class='control-label'>点击获取短信验证码</label>
														<div class='controls'>
															<button type="button" class="btn btn-primary"
																id="captchaBtn2">获取验证码</button>
														</div>
													</div>

													<div class='control-group'>
														<label class='control-label'>短信验证码</label>
														<div class='controls'>
															<input class='span6  ' id='phoneCaptcha2'
																placeholder='短信验证码' type='password' />
														</div>
													</div>
												</div>

											</div>
										</fieldset>

										</fieldset>
										<div class='form-actions' style='margin-bottom: 0;'>
											<div class='text-right'>
												<div class='btn btn-primary btn-large'>
													<span id="changeInfo"><i class='icon-save'></i> 确认修改</span>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<!-- 正文内容 end -->
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- / jquery -->
	<script src='assets/javascripts/jquery/jquery.min.js'
		type='text/javascript'></script>
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
			$("#adminTelForHid").val($("#adminTel").val().substring(0, 3) + "****" + $("#adminTel").val().substring(8, 11));
	
			$("#adminPassForHid").val($("#adminPass").val().substring(0, 2) + "****");
		})
	</script>

	<script type="text/javascript">
		var Num = "";
		var capTcha=null;
		var capthaStatus = false;
		var phoneStatus = false;
	
		//获取短信验证码
		var countDown = 60;
	
		function getNoteCode(val) {
			var phone = $("#adminTel").val();
			var inputPhone = $("#inputPhone").val()
	
	
	
			for (var i = 0; i < 6; i++) {
				Num += Math.floor(Math.random() * 10);
			}
			
			capTcha=Num;
	
	
	
	
			if (phone == "" || phone == null) {
	
				return bootbox.dialog("请输入正确的手机号", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
	
			} else if (phone == inputPhone && Num.length == 6) {
				$.ajax({
					type : "post",
					url : "adminctlr/SendCaptcha.do",
					data : {
						"adminTel" : phone,
						"code" : Num
					},
					success : function(data) {
						var json = eval("(" + data + ")")
						if (json.return_code == 00000) {
							var newCode = setInterval(function() {
								/* $(val).attr("class", "layui-btn layui-btn-fluid layui-btn-disabled"); */
								$("#captchaBtn").attr("disabled", "disabled");
								//val.setAttribute("disabled", true);
								$("#captchaBtn").text("重新发送(" + countDown + ")");
								countDown--;
								if (countDown == 0) {
									Num = "";
									window.clearInterval(newCode);
									$("#captchaBtn").attr("disabled", false);
									/* $("#captchaBtn").attr("class", "layui-btn layui-btn-fluid"); */
									$("#captchaBtn").text("获取验证码");
									countDown = 60;
								}
							}, 1000);
						} else {
	
							return bootbox.dialog("发生错误,请重试", [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
	
	
						}
					}
				});
			} else {
				return bootbox.dialog("请输入正确的手机号", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			}
		}
		;
	
		$("#phoneCaptcha").blur(function() {
			var nowCaptcha = $("#phoneCaptcha").val()
	
	
			if (nowCaptcha == capTcha) {
				capthaStatus = true;
			/* alert(capthaStatus) */
			} else {
				return bootbox.dialog("短信验证码错误", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			}
		});
	
		$("#newPhoneNumber").blur(function() {
			
	
			if ($("#newPhoneNumber").val() == $("#adminTel").val()) {
				return bootbox.dialog("与现有手机号相同，请输入新的手机号！", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			} else if ($("#newPhoneNumber").val().length != 11) {
				return bootbox.dialog("请输入11位手机号！", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			} else {
				phoneStatus = true;
			}
	
		});
	</script>

	<script type="text/javascript">
		$("#changePhone").click(function() {
			if ($("#changePhone").is(':checked') == true && $("#changePassword").is(':checked') == true) {
				$("#changePhone").prop("checked", true);
				$("#change-Tel").css("display", "block");
	
				$("#changePassword").prop("checked", false);
				$("#change-password").css("display", "none");
			} else if ($("#changePhone").is(':checked') == true && $("#changePassword").is(':checked') == false) {
				$("#changePhone").prop("checked", true);
				$("#change-Tel").css("display", "block");
	
				$("#changePassword").prop("checked", false);
				$("#change-password").css("display", "none");
			}
	
		});
	
		$("#changePassword").click(function() {
			if ($("#changePhone").is(':checked') == true && $("#changePassword").is(':checked') == true) {
				$("#changePhone").prop("checked", false);
				$("#change-Tel").css("display", "none");
	
				$("#changePassword").prop("checked", true);
				$("#change-password").css("display", "block");
			} else if ($("#changePhone").is(':checked') == false && $("#changePassword").is(':checked') == true) {
				$("#changePhone").prop("checked", false);
				$("#change-Tel").css("display", "none");
	
				$("#changePassword").prop("checked", true);
				$("#change-password").css("display", "block");
			}
	
		});
	
		$("#changeInfo").click(function() {
			if ($("#changePhone").is(':checked') == true && $("#changePassword").is(':checked') == true) {
				return bootbox.dialog("单次只能修改一项信息哦！", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			} else if ($("#changePhone").is(':checked') == false && $("#changePassword").is(':checked') == true) {
				
				
				
				if (capthaStatus2==true && passowrdStatus == true && newpasswordStatus == true) {
					var adminName = $("#username").val()
					var adminTel = $("#adminTel").val()
					var adminPass = $("#twoPasswod").val()
	
					$.ajax({
						type : "post",
						url : "adminctlr/editAdmPhone.do",
						dataType : "json",
						data : {
							"adminName" : adminName,
							"adminTel" : adminTel,
							"adminPass" : adminPass
						},
						error : function(data) { //如果确定能正确运行,可不写
							return bootbox.dialog("发生错误，请稍后重试！", [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
						},
						success : function(data) {
							window.location.reload()
	
							return bootbox.dialog("修改成功！", [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							])
	
	
							/* alert($("#adminTel").val()) */
							$("#adminTelForHid").val($("#adminTel").val().substring(0, 3) + "****" + $("#adminTel").val().substring(8, 11));
	
	
	
	
						}
					})
	
				} else {
					return bootbox.dialog("信息不全，请填写后重试！", [
						{
							label : "确认",
							"class" : "btn-primary"
						}
					]);
				}
	
	
			} else if ($("#changePhone").is(':checked') == true && $("#changePassword").is(':checked') == false) {
				
				
				
				if (capthaStatus == true && phoneStatus == true) {
					var adminName = $("#username").val()
					var adminTel = $("#newPhoneNumber").val()
					var adminPass = $("#adminPass").val()
	
					$.ajax({
						type : "post",
						url : "adminctlr/editAdmPhone.do",
						dataType : "json",
						data : {
							"adminName" : adminName,
							"adminTel" : adminTel,
							"adminPass" : adminPass
						},
						error : function(data) { //如果确定能正确运行,可不写
							return bootbox.dialog("发生错误，请稍后重试！", [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
						},
						success : function(data) {
							window.location.reload()
	
							return bootbox.dialog("修改成功！", [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							])
	
	
							/* alert($("#adminTel").val()) */
							$("#adminTelForHid").val($("#adminTel").val().substring(0, 3) + "****" + $("#adminTel").val().substring(8, 11));
	
	
	
	
						}
					})
	
				} else {
					return bootbox.dialog("信息不全，请填写后重试！", [
						{
							label : "确认",
							"class" : "btn-primary"
						}
					]);
				}
			}
	
	
	
		});
	</script>

	<script type="text/javascript">
		var Num2 = "";
		var cpatcha=null;
		var capthaStatus2 = false;
		var passowrdStatus = false;
		var newpasswordStatus = false;
	
	
		$("#password").blur(function() {
			if ($("#password").val() == $("#adminPass").val()) {
	
			} else {
				return bootbox.dialog("密码错误，请填写后重试！", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			}
		});
	
		$("#onePasswod").blur(function() {
			if ($("#onePasswod").val() == $("#adminPass").val()) {
	
				
				return bootbox.dialog("与原密码相同，请重新填写！", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			} else {
				newpasswordStatus = true;
			}
		});
	
	
	
		$("#twoPasswod").blur(function() {
			if ($("#twoPasswod").val() == $("#onePasswod").val()) {
				passowrdStatus = true;
			} else {
				return bootbox.dialog("两次密码不一致，请填写后重试！", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			}
		});
	
	
		$("#captchaBtn2").click(function() {
	
			var phone2 = $("#adminTel").val();
	
			//获取短信验证码
			var countDown2 = 60;
	
	
			for (var i = 0; i < 6; i++) {
				Num2 += Math.floor(Math.random() * 10);
			}
	
			cpatcha=Num2;
	
	
			if (Num2.length == 6) {
				
				$.ajax({
					type : "post",
					url : "adminctlr/SendCaptcha.do",
					data : {
						"adminTel" : phone2,
						"code" : Num2
					},
					success : function(data) {
						var json = eval("(" + data + ")")
						if (json.return_code == 00000) {
							var newCode = setInterval(function() {
								/* $(val).attr("class", "layui-btn layui-btn-fluid layui-btn-disabled"); */
								$("#captchaBtn2").attr("disabled", "disabled");
								//val.setAttribute("disabled", true);
								$("#captchaBtn2").text("重新发送(" + countDown2 + ")");
								countDown2--;
								if (countDown2 == 0) {
									Num2 = "";
									window.clearInterval(newCode);
									$("#captchaBtn2").attr("disabled", false);
									/* $("#captchaBtn").attr("class", "layui-btn layui-btn-fluid"); */
									$("#captchaBtn2").text("获取验证码");
									countDown2 = 60;
								}
							}, 1000);
						} else {
	
							return bootbox.dialog("发生错误,请重试", [
								{
									label : "确认",
									"class" : "btn-primary"
								}
							]);
	
	
						}
					}
				});
			}
		});
	
		$("#phoneCaptcha2").blur(function() {
			if ($("#phoneCaptcha2").val() == cpatcha) {
				capthaStatus2 = true;
			} else {
				return bootbox.dialog("验证码错误,请重试", [
					{
						label : "确认",
						"class" : "btn-primary"
					}
				]);
			}
		})
	</script>
</body>
</html>
