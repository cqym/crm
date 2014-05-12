<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>项目编辑</title>
</head>

<body>
<div class="page sheet sheet-active sheet-root" id="page-invite">
		<div class="page-inner">
			<h3>邀请成员</h3>

			<form class="form form-invite" action="" method="post" data-remote="true" novalidate="">
			<div class="form-item">
				<label class="form-label" style="float:left;" id="label-email">输入他们的邮箱和权限</label>
				<span class="tips-helper">?
					<span class="tips-pop">
						管理员：可以管理项目、邀请成员；<br>
						成员：一般成员，可以看到完整的成员列表；<br>
						访客：只可以看到和他在同一个项目里的成员。
					</span>
				</span>
				<div class="form-field">
					<div class="invite-item">
						<img class="avatar" alt="kshift" src="${ctx}/static/images/jokul.jpg">
						<div class="invite-field">
							<input type="email" class="invite-email no-border" placeholder="请输入新成员的邮箱">
							<div class="invite-role-field">
								<select class="invite-role" id="choose-role">
									<option value="0" selected="">成员</option>
									<option value="1">管理员</option>
									<option value="3">访客</option>
								</select>
							</div>
							<div class="invite-subgroup-field">
								<select class="invite-subgroup" id="choose-subgroup" name="subgroup_id">
									<option value="0">小组</option>
									<option disabled="">-----</option>
									<option value="11528">sss</option>
								</select>
							</div>

							<input type="text" class="invite-comment no-border" placeholder="添加成员备注（可选）" data-validate="length:0,128" data-validate-msg="成员备注最长128个字符">
						</div>
					</div>
					<div class="invite-item">
						<img class="avatar" alt="kshift" src="${ctx}/static/images/jokul.jpg">
						<div class="invite-field">
							<input type="email" class="invite-email no-border" placeholder="请输入新成员的邮箱">
							<div class="invite-role-field">
								<select class="invite-role" id="choose-role">
									<option value="0" selected="">成员</option>
									<option value="1">管理员</option>
									<option value="3">访客</option>
								</select>
							</div>
							<div class="invite-subgroup-field">
								<select class="invite-subgroup" id="choose-subgroup" name="subgroup_id">
									<option value="0">小组</option>
									<option disabled="">-----</option>
									<option value="11528">sss</option>
								</select>
							</div>

							<input type="text" class="invite-comment no-border" placeholder="添加成员备注（可选）" data-validate="length:0,128" data-validate-msg="成员备注最长128个字符">
						</div>
					</div>
				</div>
				<p class="add-invite-wrap"><a href="javascript:;" id="add-invite-item">再加一个</a></p>
			</div>

				<div class="form-item proj-in">
					<label class="form-label">选择他们能够参与的项目<span class="select-all">[ <a href="#" class="select-all-proj">全选</a> | <a class="select-none-proj" href="#">全不选</a> ]</span></label>
					<div class="form-field">
							<label title="熟悉Tower" class="welcome"><input type="checkbox" name="init-projects[]" value="dd292eef6f5d4b53805205c566fe9c05" checked=""> 熟悉Tower</label>
					</div>
				</div>

			<div class="form-item cal-in">
				<label class="form-label">选择他们能够访问的日历<span class="select-all">[ <a href="#" class="select-all-cal">全选</a> | <a class="select-none-cal" href="#">全不选</a> ]</span></label>
				<div class="form-field">
						<label title="默认日历"><input type="checkbox" name="init-calendars[]" value="36b4ff49db2a2f5bc417ae438f4d0d7c" checked=""> 默认日历</label>
				</div>
			</div>

			<div class="invite-message-wrap">
				<div class="form-item">
					<label class="form-label" for="txt-welcome">邀请邮件附言</label>
					<div class="form-field">
						<textarea name="welcome_words" id="txt-welcome" placeholder="请把附言写在这里（可选）"></textarea>
					</div>
					<p class="desc">
						发送邀请后，被邀请的成员会收到一封邀请邮件，这封邮件会引导他们加入团队。
						<a href="/teams/767c75528761467aa27d89a355c0b23f/invite/preview" class="view-mail" data-stack="">查看邀请邮件的示例 <i class="fa fa-caret-right"></i></a>
					</p>
				</div>
			</div>

			<div class="form-buttons">
				<button type="submit" class="btn btn-primary" id="btn-invite" data-disable-with="正在邀请..." data-success-text="邀请成功" data-goto="/teams/767c75528761467aa27d89a355c0b23f/members">发送邀请</button>
				<a class="btn btn-x" href="/teams/767c75528761467aa27d89a355c0b23f/members" data-stack="" data-stack-bare="" data-stack-root="">取消，并返回团队页面</a>
			</div>
			</form>

		</div>
	</div>
</body>
</html>
