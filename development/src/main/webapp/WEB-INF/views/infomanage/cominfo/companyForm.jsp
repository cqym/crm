<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>企业信息</title>
</head>

<body>
	<form id="inputForm" action="${ctx}/infomanage/company/${action}" method="post" class="form-horizontal">
		<input type="hidden" name="id" value="${company.id}"/>
		<fieldset>
			<legend><small>企业信息</small></legend>
			<div class="control-group">
				<label for="company_title" class="control-label">公司名称:</label>
				<div class="controls">
					<input type="text" id="company_companyName" name="companyName"  value="${company.companyName}" class="input-large required" minlength="3"/>
				</div>
			</div>	
			<div class="control-group">
				<label for="description" class="control-label">公司代码:</label>
				<div class="controls">
					<input type="text" id="company_companyCode" name="companyCode"  value="${company.companyCode}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">电话:</label>
				<div class="controls">
					<input type="text" id="company_phone" name="phone"  value="${company.phone}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">传真:</label>
				<div class="controls">
					<input type="text" id="company_fax" name="fax"  value="${company.fax}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">开户银行:</label>
				<div class="controls">
					<input type="text" id="company_bank" name="bank"  value="${company.bank}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">账号:</label>
				<div class="controls">
					<input type="text" id="company_accountNumber" name="accountNumber"  value="${company.accountNumber}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">注册地址:</label>
				<div class="controls">
					<input type="text" id="company_regAddress" name="regAddress"  value="${company.regAddress}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">税号:</label>
				<div class="controls">
					<input type="text" id="company_taxCode" name="taxCode"  value="${company.taxCode}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">联系地址:</label>
				<div class="controls">
					<input type="text" id="company_companyAddress" name="companyAddress"  value="${company.companyAddress}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">法人:</label>
				<div class="controls">
					<input type="text" id="company_contactPerson" name="contactPerson"  value="${company.contactPerson}" class="input-large required" minlength="3"/>
				</div>
			</div>
			<div class="control-group">
				<label for="description" class="control-label">邮编:</label>
				<div class="controls">
					<input type="text" id="company_postcode" name="postcode"  value="${company.postcode}" class="input-large required" minlength="3"/>
				</div>
			</div>
			
			<div class="form-actions">
				<input id="submit_btn" class="btn btn-primary" type="submit" value="提交"/>&nbsp;	
				<input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
			</div>
		</fieldset>
	</form>
	<script>
		$(document).ready(function() {
			//聚焦第一个输入框
			$("#company_companyName").focus();
			//为inputForm注册validate函数
			$("#inputForm").validate();
		});
	</script>
</body>
</html>
