<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  	
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>${title }</title>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'
	rel='stylesheet'>
<script type='text/javascript'
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'>

</script>

<style>
body {
	background: #eee
}

.ratings i {
	font-size: 16px;
	color: red
}

.strike-text {
	color: red;
	text-decoration: line-through
}

.product-image {
	width: 100%
}

.dot {
	height: 7px;
	width: 7px;
	margin-left: 6px;
	margin-right: 6px;
	margin-top: 3px;
	background-color: blue;
	border-radius: 50%;
	display: inline-block
}

.spec-1 {
	color: #938787;
	font-size: 15px
}

h5 {
	font-weight: 400
}

.para {
	font-size: 16px
}

.masthead {
  margin-top: 20px;
}
</style>

</head>
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<body oncontextmenu='return false' class='snippet-body'>
<header class="masthead">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-12 text-center">
          <h1 class="fw-light">Products Available Today</h1>          
          <p class="lead">Never Limit Where Running Can Take You</p>
        </div>
      </div>
    </div>
  </header>
	<div class="container mt-5 mb-5">
		<div class="d-flex justify-content-center row">
			<div class="col-md-10">
				<div class="row p-2 bg-white border rounded">
				<c:forEach var="p" items="${products }">
					<div class="col-md-3 mt-1">
						<img class="img-fluid img-responsive rounded product-image"
							src="commons/assets/img/portfolio/${p.img}">
					</div>
					
					
					<div class="col-md-6 mt-1">
						<h5>${p.name }</h5>
						<div class="d-flex flex-row">
							<div class="ratings mr-2">
								<i class="fa fa-star"></i><i class="fa fa-star"></i><i
									class="fa fa-star"></i><i class="fa fa-star"></i>
							</div>
							<span>310</span>
						</div>
						<div class="mt-1 mb-1 spec-1">
							<span>100% original</span><span class="dot"></span><span>Light
								weight</span><span class="dot"></span><span>Best finish<br></span>
						</div>
						<div class="mt-1 mb-1 spec-1">
							<span>Unique design</span><span class="dot"></span><span>For
								men</span><span class="dot"></span><span>Casual<br></span>
						</div>
						<p class="text-justify text-truncate para mb-0">
							Not Available Right Now<br>
							<br>
						</p>
					</div>
					
					<div
						class="align-items-center align-content-center col-md-3 border-left mt-1">
						<div class="d-flex flex-row align-items-center">
							<h4 class="mr-1">$${p.price }</h4>
							<span class="strike-text">$20.99</span>
						</div>
						<h6 class="text-success">Free shipping</h6>
						<div class="d-flex flex-column mt-4">
							
							<button class="btn btn-outline-primary btn-sm mt-2" type="button">Add
								to Cart</button>
						</div>
					</div>
					</c:forEach>
				</div>		
			</div>
		</div>
	</div>
	<script type='text/javascript'
		src='https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js'></script>
	<script type='text/javascript' src=''></script>
	<script type='text/javascript' src=''></script>
	<script type='text/Javascript'></script>
</body>
</html>