<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="col-md-2">
    <ul class="nav nav-pills nav-stacked" id="nav">
        <li><a href="${pageContext.request.contextPath}/admin/showCourse">Courses<span class="badge pull-right">8</span></a></li>
        <li><a href="${pageContext.request.contextPath}/admin/showStudent">Students<span class="badge pull-right">59</span></a></li>
        <li><a href="${pageContext.request.contextPath}/admin/showTeacher">Faculty<span class="badge pull-right">10</span></a></li>
        <li><a href="${pageContext.request.contextPath}/admin/userPasswordRest">Accounts<sapn class="glyphicon glyphicon-repeat pull-right" /></a></li>
        <li><a href="${pageContext.request.contextPath}/admin/passwordRest">Reset Password<sapn class="glyphicon glyphicon-pencil pull-right" /></a></li>
        <li><a href="${pageContext.request.contextPath}/logout">Log out<sapn class="glyphicon glyphicon-log-out pull-right" /></a></li>
        <li class="disabled"><a href="##">Responsive</a></li>
    </ul>
</div>