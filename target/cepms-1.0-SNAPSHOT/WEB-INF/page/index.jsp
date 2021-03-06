<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>首页</title>
	<meta name="viewport"
		  content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" type="text/css"
		  href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css"
		  href="${pageContext.request.contextPath}/bwx/css/base.css" />
</head>
<body>
<jsp:include page="/WEB-INF/page/header.jsp" ></jsp:include>
<div class="main">
	<div class="page-header">
		<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=2" width="770" height="70" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
	</div>
	<div class="row">
		<div class="col-md-8 col-md-offset-2">

			<shiro:hasRole name="教师">
				<article class="show">
					<h4 align="center">实验列表</h4>
					<footer class="tags">
						<table class="table table-hover">
							<thead>
							<tr>
								<td>实验名称</td>
								<!-- <td >ID</td> -->
								<td>班级名称</td>
								<td>课程名称</td>
								<td>状态</td>
								<td>操作</td>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${datas.works }" var="work">
								<tr>
									<td>${work.name }</td>
									<td>${work.className }</td>
									<td>${work.lessionName }</td>
									<td>
										<c:if test="${work.status == 0 }">
											未结束
										</c:if>
										<c:if test="${work.status == 1 }">
											待验收
										</c:if>
										<c:if test="${work.status == 2 }">
											已完成
										</c:if></td>
									<td>
											<a target="_blank" href="${pageContext.request.contextPath }/work/republish/${work.id }?cname=${work.className}-${work.lessionName}" class="btn btn-info pull-right" style="line-height: 0.428571;">查看</a>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</footer>
					<p class="text-danger" align="center">总记录数：${count }</p>
				</article>
			</shiro:hasRole>

			<shiro:hasRole name="学生">
				<article class="show">
					<h4 align="center">实验列表</h4>
					<footer class="tags">
						<table class="table table-hover">
							<thead>
							<tr>
								<td>实验名称</td>
								<!-- <td >ID</td> -->
								<td>课程名称</td>
								<td>状态</td>
								<td>操作</td>
							</tr>
							</thead>
							<tbody>
							<c:forEach items="${datas.works }" var="work">
								<tr>
									<td>${work.name }</td>
									<td>${work.lessionName }</td>
									<td>
										<c:if test="${work.status == 0 }">
											未完成
										</c:if>
										<c:if test="${work.status == 1 }">
											待验收
										</c:if>
										<c:if test="${work.status == 2 }">
											已完成
										</c:if></td>
									<td>
										<a target="_blank" href="${pageContext.request.contextPath }/work/ui-submit/${work.id }" class="btn btn-info pull-right" style="line-height: 0.428571;">查看</a>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</footer>
					<p class="text-danger" align="center">总记录数：${count }</p>
				</article>
			</shiro:hasRole>

			<shiro:hasRole name="超级管理员">
				<script> window.setInterval("location='/cepms/admin/ui-teaching'",500); </script>
			</shiro:hasRole>
		</div>
	</div>
</div>
</body>
<script src="${pageContext.request.contextPath}/bwx/js/jquery-3.3.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/layer/layer.js" type="text/javascript" charset="utf-8"></script>
</html>