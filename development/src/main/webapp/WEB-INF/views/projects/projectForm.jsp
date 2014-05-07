<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>项目编辑</title>
</head>

<body>
<div class="page-inner">
    <h3>创建新项目</h3>
	<form id="inputForm" action="${ctx}/project/create" method="post" class="form form-invite">
		
			<div class="form-item">
				<div class="form-field">
					<input type="text" name="projectName" id="projectName" placeholder="项目名称"
							autofocus data-validate="required;length:1,255"  class="input-block-level" data-validate-msg="请填写项目名称;项目名称最长255个字符" />
				</div>
			</div>
			<div class="form-item">
				<div class="form-field">
					<textarea id="remark" name="remark" placeholder="简单描述项目，便于其他人理解（选填）" cols="250" rows="5" data-validate="length:1,1000" data-validate-msg="项目描述最长1000个字符" class="form-control"></textarea>
				</div>
			</div>
			
			<div class="form-buttons">
				<input id="submit_btn" class="btn btn-primary" type="submit" value="创建项目"/>&nbsp;	
				<a href='${ctx}/project/list'>取消</a>
			</div>
		
	</form>
</div>
	<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#projectName").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate();
		});
	</script>
</body>
</html>
