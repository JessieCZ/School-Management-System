<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="/js/jquery-3.2.1.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 顶栏 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
	<div class="container" id="content">
		<div class="row">
			<jsp:include page="menu.jsp"></jsp:include>
			<div class="col-md-10">
				<div class="panel panel-default">
				    <div class="panel-heading">
						<div class="row">
					    	<h1 style="text-align: center;">Reset Password</h1>
						</div>
				    </div>
				    <div class="panel-body">
						<form name="reset" class="form-horizontal" role="form" action="${pageContext.request.contextPath}/passwordRest" id="editfrom" method="post" onsubmit="return check()">
							  <div class="form-group">
							    <label for="inputEmail3" class="col-sm-2 control-label">Old Password</label>
							    <div class="col-sm-10">
							      <input type="text" class="form-control" name="oldPassword" id="inputEmail3" placeholder="Enter your old password" >
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">New Password</label>
							    <div class="col-sm-10">
							      <input type="password" name="password1" class="form-control" id="inputPassword3" placeholder="Please Enter Password">
							    </div>
							  </div>
							  <div class="form-group">
							    <label for="inputPassword3" class="col-sm-2 control-label">Confirm New Password</label>
							    <div class="col-sm-10">
							      <input type="password" name="password2" class="form-control" id="inputPassword3" placeholder="请再次输入密码">
							    </div>
							  </div>
							  <div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="submit">Submit</button>
								<button class="btn btn-default">Reset</button>
							  </div>
						</form>
				    </div>
				    
				</div>

			</div>
		</div>
	</div>
	<div class="container" id="footer">
	<div class="row">
		<div class="col-md-12"></div>
	</div>
	</div>
</body>
<script>
    $("#nav li:nth-child(5)").addClass("active")
    function check() {
        if(reset.oldPassword.value==""||reset.oldPassword.value==null)
        {alert("Enter old password");return false;}
        if(reset.password1.value==""||reset.password1.value==null)
        {alert("Enter new password");return false;}
        if(reset.password2.value==""||reset.password2.value==null)
        {alert("Confirm new password");return false;}
        if(reset.password1.value != reset.password2.value)
        {alert("Passwords don't match");return false;}
    }
</script>
</html>