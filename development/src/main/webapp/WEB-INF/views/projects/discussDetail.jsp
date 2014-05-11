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
			<div class="sheet-header">
					<a class="link-parent-sheet" href="${ctx}/project/view/${discussMain.projectId}">${discussMain.projectName}</a>
			</div>
			<div class="page sheet sheet-active sheet-1">
			<div class="page-inner">
				<div class="topic">
						 <div class="message">
								<div class="message-subject"><h3 title="${discussMain.theme}">${discussMain.theme} </h3></div>
								
								<c:forEach items="${discussMain.detail}" var="disDetail">
								<div class="message-main">
								   <div class="info"> 
										<a class="author">${disDetail.userName}</a>
										<span class="create-time">${disDetail.createDate}</span>
									</div>
								   <div class="message-content editor-style">
								       ${disDetail.content}
								   </div>
								</div>
								</c:forEach>
						</div>
				</div>
				<form id="inputForm" action="${ctx}/discuss/createDetail" method="post" class="form form-invite">
					<input type="hidden" name="projectId" value="${discussMain.projectId}">
					<input type="hidden" name="discussMainId" value="${discussMain.id}">
					
					<fieldset>
						<div class="form-item">
							<div class="form-field">
								<textarea id="content" name="content"  placeholder="发表讨论" cols="250" rows="5" data-validate="length:1,1000" data-validate-msg="讨论主题描述最长1000个字符" class=""></textarea>
							</div>
						</div>
						
						<div class="form-buttons">
							<input id="submit_btn" class="btn btn-primary" type="submit" value="保存"/>&nbsp;	
							<a href='${ctx}/project/view/${discussMain.projectId}'>取消</a>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
</body>
</html>
