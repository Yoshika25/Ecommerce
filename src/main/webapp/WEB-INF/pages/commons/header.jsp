<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>${title }</title>
        
        <link rel="icon" type="image/x-icon" href="commons/assets/favicon.ico" />       
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>        
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        
        <link href="commons/css/styles.css" rel="stylesheet" />
    </head>   
     
    <%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
	%>    
 <script type="text/javascript"> 
 
 
 
 
 
 </script>      
    
    <body id="page-top">
        
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">@SportYShoes</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu<i class="fas fa-bars ms-1"></i>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#portfolio">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout" 
                        
                        <%
                        if(session.getAttribute("user")==null){%>
                        	hidden
                        <%}else { %>
         					
      					<% } %>
                        >Logout</a></li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/product">Products</a></li>                       
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login">
                        <%
                        if(session.getAttribute("user")==null){%>
                        	Login
                        <%}else { %>
         				<%=session.getAttribute("user") %>	
      					<% } %>  
                        
                        </a></li>
                    </ul>
                    
                </div>
            </div>
        </nav>