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
<div class="page" id="page-members" >
<div class="group group-default ui-droppable" data-guid="0">
			<ul class="members">
	<li class="member member-invite">
		<a href="${ctx}/team/create" class="member-link new" data-stack="" data-stack-root="">
			<img class="avatar" src="${ctx}/static/images/new-member-d21bf5eea16b8caf756341ec42e3da79.png" alt="邀请新成员">
			<span class="name">邀请新成员</span>
		</a>
	</li>

			<li class="member ui-draggable" data-guid="aa2a97f846f24dd79ac18002d76a998c" data-team-guid="767c75528761467aa27d89a355c0b23f">
				<a href="/members/aa2a97f846f24dd79ac18002d76a998c" title="码农A" class="member-link owner" data-stack="" data-stack-root="">

					<img class="avatar" src="${ctx}/static/images/waves.jpg" alt="码农A">
					<span class="name">码农A</span>

						<span class="role">团队账户所有人</span>
				</a>
			</li>
		

</ul>

		</div>
</div>

</body>
</html>
