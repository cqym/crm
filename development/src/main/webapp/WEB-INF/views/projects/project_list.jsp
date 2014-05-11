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
<section class='example'>
        <div class='gridly'>
		  <c:forEach items="${projects}" var="proj">
			  <div name="projBlock" class='brick small' value="${proj.id}">
				<a class='delete' href='#'>&times;</a>
				<img class="brick img" src="${ctx}/static/images/date.gif">
				<div class="brick title"><a class="code" href="#" value="${proj.id}">${proj.projectName}</a></div>
			  </div>
		  </c:forEach>
        </div>

		<div class="form-buttons">
				<input id="createProj" class="btn btn-primary" type="submit" value="新增项目"/>
		</div>
</section>

<script>
  $('.gridly').gridly({
    base: 60, // px 
    gutter: 20, // px
    columns: 13
  });

  $(".code").click(function(){
	  var id = $(this).attr('value');
      document.location.href = "${ctx}/project/view/" + id;
  });
  $("#createProj").click(function(){
      document.location.href = "${ctx}/project/create";
  });
</script>
</body>
</html>
