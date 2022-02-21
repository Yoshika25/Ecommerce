<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>

<meta charset="utf-8">
<title>${title }</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link href="commons/css/login.css" rel="stylesheet" />
</head>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<body>

	<header>
		<!--Amazon Image Logo-->
		<div class="d-flex flex-row justify-content-center">
			<div class="row">
				<div class="col-md">
					<img id="amazon-img"src="commons/assets/img/logos/logo.jpg" height="200px" width="300px" alt="Amazon Image">
				</div>
				
			</div>
			
		</div>
		
	</header>

	<!--Form-->
	<div class="d-flex flex-row justify-content-center">
		<div class="row">
			<div class="col-md">
				<form action="${pageContext.request.contextPath}/signuphandle" method="post">
					<div class="sign-in">Signup</div>
					
					<div class="form-group">
						<label id="words_1" for="exampleInputEmail1">Email</label> <input type="email"
						 class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp"
						 placeholder="Enter email"> <small id="emailHelp" class="form-text text-muted"></small>
					</div>
					
					<div class="form-group">
						<label id="words_2" for="exampleInputPassword1">Password
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
							&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp Forgot your password? </label>
						<input type="password" class="form-control" name="password"	id="exampleInputPassword1" placeholder="Password">
						
						<div class="form-group">
						
							<button type="submit" class="btn btn-warning" id="sign-in">Signup</button>
														
							
						
						</div>
					
					</div>
					
					<div class="form-check"></div>
					<a href="${pageContext.request.contextPath}/login"><button type="button" class="btn btn-warning" id="grey-button">Login with your SportyShoes account</button></a>

				</form>
			</div>
			
		</div>
		
	</div>
	
</body>
</html>



	