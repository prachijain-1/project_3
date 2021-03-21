<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="in.co.rays.proj3.ctl.ForgetPasswordCtl"%>
<%@page import="in.co.rays.proj3.util.DataUtility"%>
<%@page import="in.co.rays.proj3.util.ServletUtility"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
<title>Login</title>
<style>
body {
	background-image: url("image/l.jpg");
	background-size: cover;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
}
.panel-default{
background:white;}
</style>
</head>

<body>
	<%@ include file="Header.jsp"%>
	
		<form action="<%=ORSView.FORGET_PASSWORD_CTL%>" method="post">
		
		<jsp:useBean id="dto" class="in.co.rays.proj3.dto.UserDTO"
			scope="request">
		</jsp:useBean>
	

	<div class="container">

		<div align="center">
			<div class="alert alert-success" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 133% ; margin-bottom: 5px;"
				<%=ServletUtility.getSuccessMessage(request).equals("") ? "hidden" : ""%>>
				<b> <%=ServletUtility.getSuccessMessage(request)%></b>
			</div>
			<div class="alert alert-danger" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 135%; margin-bottom: 5px;"
				<%=ServletUtility.getErrorMessage(request).equals("") ? "hidden" : ""%>>
				<b><%=ServletUtility.getErrorMessage(request)%></b>
			</div>

			<%
				String message = (String) request.getAttribute("message");

				if (message != null) {
			%>

			<div class="alert alert-danger" role="alert"
				style="width: 35%; margin-left: 0%; font-size: 150%;"
				<%=message.equals("") ? "hidden" : ""%>>
				<b><%=message%></b>
			</div>


		</div>
		<%
			}
		%>
		<br>
		
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                                <div class="panel-default">

                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                              
                              <form class="form">
                                <fieldset>
                                  <div class="form-group">
                                    <div class="input-group">
                                      <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                      
<input placeholder="Enter LoginId" type="text" class="form-control"
								name="login"
								value="<%=DataUtility.getStringData(dto.getLogin())%>">
						</div>
						<font color="red"><%=ServletUtility.getErrorMessage("login", request)%></font>
					</div>                                  
					  </div>
                                  </div>
                                 	<div class="form-group text-center">
						<input type="submit" class="btn btn-success" name="operation"
							value="<%=ForgetPasswordCtl.OP_GO%>">
							

					<button class="btn btn-danger btn-cancel-action" name="operation"
							value="<%=ForgetPasswordCtl.OP_RESET%>">Reset</button>

					</div>
                                </fieldset>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
	</form>

</body>
<%@ include file="Footer.jsp"%>
</html>
