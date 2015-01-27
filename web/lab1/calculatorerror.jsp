<%-- 
    Document   : calculatorerror
    Created on : Jan 26, 2015, 9:09:26 PM
    Author     : wsuetholz
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Error</title>
    </head>
    <body>
	<p>
	    Problem Calculating Area!
	</p><c:out value="${errorMessage}" />

	<p><a href="<%= request.getContextPath() %>/lab1/calculatorinput.jsp">Back

    </body>
</html>
