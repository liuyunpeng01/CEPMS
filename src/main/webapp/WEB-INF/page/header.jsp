<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://shiro.apache.org/tags" prefix="shiro" %>
<%String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>个人UI</title>
</head>
<body>
<div class="side">
    <div class="overlay">



    </div>
    <header class="content">
        <a href="${pageContext.request.contextPath }/user/avatar">
            <shiro:hasRole name="教师">
                <img class="avatar" src='<%=basePath%>${user.teacher.headshot}' onerror="this.src='${pageContext.request.contextPath }/imgs/default.jpg'"
                     title="">
            </shiro:hasRole>
            <shiro:hasRole name="学生">
                <img class="avatar" src='<%=basePath%>${user.student.headshot}' onerror="this.src='${pageContext.request.contextPath }/imgs/default.jpg'"
                     title="">
            </shiro:hasRole>
            <shiro:hasRole name="超级管理员">
                <img class="avatar" src='${pageContext.request.contextPath }/imgs/default.jpg'
                     title="">
            </shiro:hasRole>
        </a>
        <hgroup>
            <h3 class="overflow">
                <a href="${pageContext.request.contextPath}/index">
                    <shiro:hasRole name="教师">
                        ${user.teacher.name }
                    </shiro:hasRole>
                    <shiro:hasRole name="学生">
                        ${user.student.name }
                    </shiro:hasRole>
                    <shiro:hasRole name="超级管理员">
                        超级管理员
                    </shiro:hasRole>
                </a>
            </h3>
        </hgroup>
        <!-- Split button -->
        <div class="btn-group help-block list-div">
            <%--                <button type="button" id="dLabel1" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
            <%--                    个人管理--%>
            <%--                    <span class="caret"></span>--%>
            <%--                </button>--%>
            <%--                <ul class="dropdown-menu" aria-labelledby="dLabel1">--%>
            <shiro:hasAnyRoles name="学生,教师">
                <li><a href="${pageContext.request.contextPath }/user/ui-info">个人信息</a></li>
            </shiro:hasAnyRoles>
            <shiro:authenticated>
                <li><a href="${pageContext.request.contextPath }/user/ui-passwd">修改密码</a></li>
            </shiro:authenticated>
            <%--		        <li role="separator" class="divider"></li>--%>
            <%--	            <li><a href="${pageContext.request.contextPath }/logout">退出登录</a></li>--%>
            <%--                </ul>--%>
        </div>
        <shiro:hasAnyRoles name="学生,教师">
            <div class="btn-group help-block list-div">
                    <%--                <button type="button" id="dLabel1" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                    <%--                    实验管理--%>
                    <%--                    <span class="caret"></span>--%>
                    <%--                </button>--%>
                    <%--                <ul class="dropdown-menu" aria-labelledby="dLabel1">--%>
                <shiro:hasRole name="学生">
                    <li><a href="${pageContext.request.contextPath }/work/ui-unends">未完实验</a></li>
                    <li><a href="${pageContext.request.contextPath }/work/ui-overs">已完实验</a></li>
                </shiro:hasRole>
                <shiro:hasRole name="教师">
                    <li><a href="${pageContext.request.contextPath }/work/ui-publish">发布实验</a></li>
                    <li><a href="${pageContext.request.contextPath }/work/ui-recoders">实验管理</a></li>
                </shiro:hasRole>
                    <%--                </ul>--%>
            </div>
            <div class="btn-group help-block list-div">

                    <%--                <li role="separator" class="divider"></li>--%>
                <li><a href="${pageContext.request.contextPath }/logout" class="text-danger right">退出登录</a></li>

            </div>
        </shiro:hasAnyRoles>
        <shiro:hasRole name="超级管理员">
            <div class="btn-group help-block list-div" >
                    <%--                <button type="button" id="dLabel1" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
                    <%--                    高级管理--%>
                    <%--                    <span class="caret"></span>--%>
                    <%--                </button>--%>
                    <%--                <ul class="dropdown-menu" aria-labelledby="dLabel1">--%>
                <li><a href="${pageContext.request.contextPath }/admin/ui-student">学生管理</a></li>
                <li><a href="${pageContext.request.contextPath }/admin/ui-teacher">教师管理</a></li>
                    <%--                    <li role="separator" class="divider"></li>--%>
                <br>
                <li><a href="${pageContext.request.contextPath }/admin/ui-teaching">授课管理</a></li>
                <li><a href="${pageContext.request.contextPath }/admin/ui-lession">课程管理</a></li>
                <li><a href="${pageContext.request.contextPath }/admin/ui-class">班级管理</a></li>
                <li><a href="${pageContext.request.contextPath }/admin/ui-major">专业管理</a></li>
                <li><a href="${pageContext.request.contextPath }/admin/ui-faculty">院系管理</a></li>
                    <%--                    <li role="separator" class="divider"></li>--%>
                <br>
                <li><a href="${pageContext.request.contextPath }/admin/ui-role">角色管理</a></li>
                <li><a href="${pageContext.request.contextPath }/admin/ui-permission">权限管理</a></li>
                    <%--                </ul>--%>
                <br>
                <li><a href="${pageContext.request.contextPath }/logout" class="text-danger right">退出登录</a></li>
            </div>
        </shiro:hasRole>
    </header>
</div>
</body>
</html>