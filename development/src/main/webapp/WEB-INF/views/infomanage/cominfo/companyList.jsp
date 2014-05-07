<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
	<title>企业信息</title>
	
</head>

<body>
	<h1>企业信息</h1>
	<c:if test="${not empty message}">
		<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
	</c:if>
	
	<div class="row">
		<div class="offset1">
			<form class="form-search" action="${ctx}/infomanage/company/">
			    <input type="text" name="search_LIKE_companyName"   class="input-medium search-query"  value="${param.search_LIKE_companyName}" placeholder="公司信息"> 
			    <input type="text" name="search_EQ_companyCode" class="input-medium search-query" value="${param.search_EQ_companyCode}" placeholder="公司代码">
			    <button type="submit" class="btn" id="search_btn">查询</button>
				<button type="reset" class="btn" id="search_btn">重置</button>
		    </form>
	    </div>
	</div>	
<div class="btn-toolbar text-right">  
  <div class="btn-group">  
     <a  class="btn btn-primary" href="${ctx}/infomanage/company/create">创建</a>
  </div>  
  <div class="btn-group">  
    <a class="btn btn-success" id="updatebt" href="#" >修改</a>
  </div>  
  <div class="btn-group">  
    <a class="btn btn-inverse" id="deletebt" href="#">删除</a>
  </div>  
</div>  
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
		<tr>
			<th>序号</th>
			<th>公司名称</th>
			<th>公司代码</th>
			<th>传真</th>
			<th>电话</th>
			<th>开户银行</th>
			<th>账号</th>
			<th>税号</th>
			<th>注册地址</th>
			<th>联系地址</th>
			<th>法人</th>
			<th>邮编</th>
			<th>公司Logo</th>
			<th>公司footer</th>
		</tr>
		</thead>
		<tbody>
		<c:set var="rownum" value="1"/>
		<c:forEach items="${companys.content}" var="com">
			<tr id="${com.id}">
				<td><input type="radio" name="comid" value="${com.id}">${rownum}</td>
				<td>${com.companyName}&nbsp;</td>
				<td>${com.companyCode}&nbsp;</td>
				<td>${com.fax}&nbsp;</td>
				<td>${com.phone}&nbsp;</td>
				<td>${com.bank}&nbsp;</td>
				<td>${com.accountNumber}&nbsp;</td>
				<td>${com.taxCode}&nbsp;</td>
				<td>${com.regAddress}&nbsp;</td>
				<td>${com.companyAddress}&nbsp;</td>
				<td>${com.contactPerson}&nbsp;</td>
				<td>${com.postcode}&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>				
			</tr>
			<c:set var="rownum" value="${rownum+1}"/>
		</c:forEach>
		</tbody>		
	</table>
	<tags:pagination page="${companys}" paginationSize="5"/>

<script>
	$(document).ready(function() {
		$("#account-tab").addClass("active");
		$("#updatebt").click(function(){
			var v = $("input[name=comid]:checked").val();
			if(!v){
			    return ;
			}
		    document.location.href = '${ctx}/infomanage/company/update/' + v;
		});
		$("#deletebt").click(function(){
			var v = $("input[name=comid]:checked").val();
			if(!v){
			    return ;
			}
		    document.location.href = '${ctx}/infomanage/company/delete/' + v;
		});
	});
</script>
</body>
</html>
