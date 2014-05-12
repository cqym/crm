<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div class="header">	
	<h1 class="logo"><a href="/" title="首页" data-stack="" data-stack-bare="" data-stack-root="">Tower</a></h1>

	<ul class="nav">
		<li class="active" id="nav-project"><a href="${ctx}/project/list" data-stack="" data-stack-bare="" data-stack-root="">项目</a></li>
		<li class="" id="nav-events"><a href="#" data-stack="" data-stack-bare="" data-stack-root="">回顾</a></li>
		<li class="" id="nav-calendar"><a href="#" data-stack="" data-stack-bare="" data-stack-root="">日历</a></li>
		<li class="" id="nav-calendar"><a href="${ctx}/team/view" data-stack="" data-stack-bare="" data-stack-root="">团队</a></li>
		<li class="" id="nav-calendar"><a href="#" data-stack="" data-stack-bare="" data-stack-root="">我自己</a></li>
	</ul>

	<div id="title">
	    <h1>
	    <shiro:user>
			<div class="btn-group pull-right">
				<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
					<i class="icon-user"></i> <shiro:principal property="name"/>
					<span class="caret"></span>
				</a>
			
				<ul class="dropdown-menu">
					<shiro:hasRole name="admin">
						<li><a href="${ctx}/admin/user">Admin Users</a></li>
						<li class="divider"></li>
					</shiro:hasRole>
					<li><a href="${ctx}/api">APIs</a></li>
					<li><a href="${ctx}/profile">Edit Profile</a></li>
					<li><a href="${ctx}/logout">Logout</a></li>
				</ul>
			</div>
		</shiro:user>
		</h1>
	</div>
</div>