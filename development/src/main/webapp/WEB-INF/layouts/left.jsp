<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="leftbar">
	<h1>信息管理</h1>
	<div class="submenu">
		<a id="account-tab"href="${ctx}/infomanage/company">企业信息</a>
		<a id="account-tab"href="${ctx}/account/user/">客户信息</a>
		<a id="account-tab"href="${ctx}/account/user/">供应商信息</a>
		<a id="account-tab"href="${ctx}/account/user/">销售价格</a>
		<a id="account-tab"href="${ctx}/account/user/">采购价格</a>
		<a id="account-tab"href="${ctx}/account/user/">库存信息</a>

		<a id="account-tab"href="${ctx}/account/user/">汇率信息</a>
		<a id="account-tab"href="${ctx}/account/user/">编号定义</a>
		<a id="account-tab"href="${ctx}/account/user/">税率定义</a>
		<a id="account-tab"href="${ctx}/account/user/">客户等级</a>

		<a id="account-tab"href="${ctx}/account/user/">产品组别</a>
		<a id="account-tab"href="${ctx}/account/user/">产品信息</a>
		<a id="account-tab"href="${ctx}/account/user/">品牌管理</a>
	</div>
	<h1>报价管理</h1>
	<div class="submenu">
		<a id="web-tab" href="${ctx}/story/web">普通报价</a>
		<a id="web-tab" href="${ctx}/story/web">项目报价</a>
		<a id="web-tab" href="${ctx}/story/web">预定报价</a>
		<a id="web-tab" href="${ctx}/story/web">试刀报价</a>
	</div>
	<h1>合同管理</h1>
	<div class="submenu">
		<a id="persistence-tab" href="${ctx}/story/persistence">合同管理</a>
	</div>
	<h1>订单管理</h1>
	<div class="submenu">
		<a id="web-tab" href="${ctx}/story/web">合同采购订单</a>
		<a id="web-tab" href="${ctx}/story/web">预定采购订单</a>
		<a id="web-tab" href="${ctx}/story/web">试刀采购订单</a>
		<a id="web-tab" href="${ctx}/story/web">材料采购订单</a>
		<a id="web-tab" href="${ctx}/story/web">产品储备订单</a>
	</div>
	<h1>生产制造</h1>
	<div class="submenu">
		<a id="web-tab" href="${ctx}/story/web">合同加工订单</a>
		<a id="web-tab" href="${ctx}/story/web">预定加工订单</a>
		<a id="web-tab" href="${ctx}/story/web">试刀加工订单</a>
		<a id="web-tab" href="${ctx}/story/web">订单组件申请</a>
		<a id="web-tab" href="${ctx}/story/web">生产物资申请</a>
	</div>
</div>