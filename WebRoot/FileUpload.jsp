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



<!-- --------------引入bootStrap fileUpload 所需js、css start ---------------- -->

<link type="text/css" href="fileinput/css/fileinput.css"
	rel="stylesheet">
<link href="fileinput/css/font-awesome.min.css" media="all"
	rel="stylesheet" type="text/css" />
<link href="fileinput/css/theme.css" media="all" rel="stylesheet"
	type="text/css" />

<script src="assets/javascripts/jquery/jquery.min.js"></script>
<script src="assets/javascripts/bootstrap/bootstrap.min.js"></script>
<script src="fileinput/js/fileinput.min.js"></script>
<script src="fileinput/js/locales/zh.js"></script>
<script src="fileinput/js/plugins/sortable.js" type="text/javascript"></script>
<script src="fileinput/js/theme.min.js" type="text/javascript"></script>
<script src="fileinput/js/theme.js" type="text/javascript"></script>
<script src="fileinput/js/popper.min.js" type="text/javascript"></script>

<!-- ---------------引入bootStrap fileUpload 所需js、css end ------------------ -->

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

					<li class=''><a href='manageStudentInfo.jsp'> <i
							class='icon-cog'></i> <span>管理学生信息</span>
					</a></li>

					<li class=''><a href='manageTeacherInfo.jsp'> <i
							class='icon-cog'></i> <span>管理教师信息</span>
					</a></li>
					
					<li class='active'><a href='FileUpload.jsp'> <i
							class='icon-cog'></i> <span>批量添加学生信息</span>
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
										<i class='icon-list-ul'></i> <span>批量添加学生信息</span>
									</h1>
									<div class='pull-right'>
										<ul class='breadcrumb'>
											<li><a href="index-admin.jsp"><i
													class='icon-bar-chart'></i> </a></li>
											<li class='separator'><i class='icon-angle-right'></i></li>
											<li>批量添加学生信息</li>
											
										</ul>
									</div>


									<!--正文内容填充区 start-->
									<hr class='hr-double' />

									<table class="table-detail" cellpadding="0" cellspacing="0"
										border="0" type="main">
										<tr>
											<th>附件上传</th>
											<td colspan="6"><input id="file" name="file" multiple
												type="file" data-show-caption="true" class="projectfile"></td>
										</tr>
									</table>

									<input type="hidden" id="flmAtt" name="flmAtt"
										value="${flowMs.flmAtt}" />

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
	
	
	
	
	<script type="text/javascript">
		//文件上传
		$(function() {
			initFileInput("file");
		});
		//文件上传
		function initFileInput(ctrlName) {
			var control = $('#' + ctrlName);
			control.fileinput({
				language : 'zh', //设置语言
				uploadUrl : "adminctlr/fileUpload.do?flmNo=${flowMs.flmNo}", //上传的地址
				/* allowedFileExtensions : [ 'jpg', 'gif', 'png', 'txt', 'xlsx', 'zip', 'pdf', 'pptx', 'docx', 'xls' ], //接收的文件后缀 */
				allowedFileExtensions : [ 'xlsx','xls' ], //接收的文件后缀
				//uploadExtraData:{"id": 1, "fileName":'123.mp3'},
				uploadAsync : true, //默认异步上传
				showUpload : true, //是否显示上传按钮
				showRemove : true, //显示移除按钮
				showPreview : true, //是否显示预览
				showCaption : false, //是否显示标题
				browseClass : "btn btn-primary", //按钮样式
				//dropZoneEnabled: true,//是否显示拖拽区域
				//minImageWidth: 50, //图片的最小宽度
				//minImageHeight: 50,//图片的最小高度
				//maxImageWidth: 1000,//图片的最大宽度
				//maxImageHeight: 1000,//图片的最大高度
				//maxFileSize: 0,//单位为kb，如果为0表示不限制文件大小
				//minFileCount: 0,
				maxFileCount : 10, //表示允许同时上传的最大文件个数
				enctype : 'multipart/form-data',
				validateInitialCount : true,
				previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",
				msgFilesTooMany : "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
			}).on('filepreupload', function(event, data, previewId, index) { //上传中
				var form = data.form,
					files = data.files,
					extra = data.extra,
					response = data.response,
					reader = data.reader;
				console.log('文件正在上传');
			}).on("fileuploaded", function(event, data, previewId, index) { //一个文件上传成功
				//后台返回的文件保存路径
				var filePath = data.response;
				if (!filePath == null) {
					//已经上传的附件路径
					var flmAtt = $('#flmAtt').val();
					if (flmAtt.isEmpty()) {
						//赋值
						flmAtt = filePath;
					} else {
						//将附件保存地址拼接
						flmAtt = flmAtt + "," + filePath;
					}
					//清空
					$('#flmAtt').val("");
					//赋值-->传入后台
					$('#flmAtt').val(flmAtt);
				}
	
				console.log('文件上传成功！' );
				alert('文件上传成功！')
				
				
	
			}).on('fileerror', function(event, data, msg) { //一个文件上传失败
				console.log('文件上传失败！' );
				
				alert('文件上传失败！')
				
				
						
			});
		}
	</script>

</body>
</html>
