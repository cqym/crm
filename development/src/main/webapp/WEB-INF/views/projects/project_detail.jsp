<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>登录后欢迎页面</title>
</head>

<body>
<div class="page sheet sheet-root sheet-active" data-since="2014-05-10 13:23:52 UTC" id="page-project" data-page-name="${project.projectName}">
		<div class="page-inner">
			<div class="project-header">
			    <div class="project-hd-info">
					<span class="project-title">${project.projectName}</span><br>
					<span class="project-desc">${project.remark}</span>
				</div>
			</div>
		</div>
			<div class="project-links">
					<a href="#" class="link-admin link-admin-members" title="成员管理" data-visible-to="admin" data-stack="" data-nocache="" style="display: block;">成员</a>

				<a href="/projects/settings/${project.id}" class="link-admin link-admin-settings" title="项目设置" data-visible-to="admin" data-stack="" data-nocache="" style="display: block;">设置</a>

				<a href="#" class="link-admin link-recap" data-nocache="true" data-stack="true" title="查看项目的每日进展">进展</a>

				<a href="#" class="link-admin link-stat" title="项目数据统计" data-stack="" data-nocache="">统计</a>
			</div>
			<div class="section-messages" data-droppable>
				<h3 class="topics-head">
					<a class="title" href="#" data-stack>讨论</a>
					<a href="${ctx}/discuss/createMain/${project.id}" class="btn btn-mini btn-new-discussion">发起新的讨论</a>
				</h3>
			</div>
			<div class="messages">
			<c:forEach items="${project.discussDiscusses}" var="discuss">
			    <div class="message">
			    <div class="name">${discuss.createUserName} : </div>
				<a class="message-link" href="${ctx}/discuss/detail/${discuss.id}">
				    <span class="message-title">${discuss.theme}</span>
					<span class="message-content">${discuss.content}</span>
					<span class="time" title="2014-05-03" data-abstime="2014-05-03 12:55:03 +0800" data-pretty-format="short">${discuss.createDate}</span>
				</a>
				</div>
			</c:forEach>
			</div>
			<c:if test="${addDiscuss != null}">
			    <form id="inputForm" action="${ctx}/discuss/createMain" method="post" class="form form-invite">
				    <input type="hidden" name="projectId" value="${project.id}">
					<fieldset>
						<div class="form-item">
							<div class="form-field">
								<input type="text" name="theme" id="theme" placeholder="讨论主题"
										autofocus data-validate="required;length:1,255" class="input-block-level" data-validate-msg="请填写讨论主题;讨论主题最长255个字符" />
							</div>
						</div>
						<div class="form-item">
							<div class="textarea">
								<textarea id="content" name="content" placeholder="详细" cols="250" rows="5" data-validate="length:1,1000" data-validate-msg="讨论主题描述最长1000个字符" class="form-control"></textarea>
							</div>
						</div>
						
						<div class="form-buttons">
							<input id="submit_btn" class="btn btn-primary" type="submit" value="保存"/>&nbsp;	
							<a href='${ctx}/project/view/${project.id}'>取消</a>
						</div>
					</fieldset>
				</form>
			</c:if>
</div>	
</body>
</html>
