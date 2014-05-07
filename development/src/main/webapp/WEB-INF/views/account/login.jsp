<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ page import="org.apache.shiro.authc.ExcessiveAttemptsException"%>
<%@ page import="org.apache.shiro.authc.IncorrectCredentialsException"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>登录页</title>
<link type="image/x-icon" href="${ctx}/static/images/favicon.ico" rel="shortcut icon">
<link href="${ctx}/static/bootstrap/2.3.2/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/static/styles/default.min.css" type="text/css" rel="stylesheet" />
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
	<link href="${ctx}/static/styles/bootstrap-responsive.css" type="text/css" rel="stylesheet" />	
	 <style type="text/css">
     body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  font-size: 16px;
  height: auto;
  padding: 10px;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: -1px;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

    </style>
</head>

<body>

	<div class="container">
	<%
	String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
	if(error != null){
	%>
		<div class="alert alert-error input-medium controls">
			<button class="close" data-dismiss="alert">×</button>登录失败，请重试.
		</div>
	<%
	}
	%>
      <form id="loginForm" action="${ctx}/login" method="post" class="form-signin">
        <h2 class="form-signin-heading">Project manage</h2>
		<div class="form-item">
			<input type="text" class="input-block-level" id="username" name="username"  value="${username}" placeholder="用户名">
		</div>
		<div class="form-item">
			<input type="password" class="input-block-level" type="password" id="password" name="password" placeholder="密码">
		</div>
		<div class="form-item">
			<label class="checkbox">
			  <input type="checkbox" value="remember-me"> 记住我
			</label>
		</div>
		<div class="form-item sign-in-btn">
			<button class="btn btn-large btn-primary" type="submit">登录</button>
			<button id="regBt" class="btn btn-large btn-primary" type="button">注册</button>
		</div>
      </form>

    </div>


	<script>
		$(document).ready(function() {
			$("#loginForm").validate();
			$("#regBt").click(function(){
			    document.location.href = '${ctx}/register';
			});
		});
	</script>
</body>
</html>
