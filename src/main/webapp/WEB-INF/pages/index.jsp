<jsp:include page="/WEB-INF/pages/commons/header.jsp" />
<jsp:include page="/WEB-INF/pages/commons/master.jsp" />
<jsp:include page="/WEB-INF/pages/commons/service.jsp" /> 
<jsp:include page="/WEB-INF/pages/commons/footer.jsp" />            
<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
%>    
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="/commons/js/scripts.js"></script>        
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>

</body>        
</html>