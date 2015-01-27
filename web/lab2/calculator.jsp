<%-- 
    Document   : calculatorinput
    Created on : Jan 26, 2015, 8:54:28 PM
    Author     : wsuetholz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Simple Area Calculator</title>
    </head>
    <body>
	<%String length = ""; 
	  Object obj = request.getAttribute("length");
	    if (obj != null) {
		length = obj.toString();
	    }
	%>

	<%String width = ""; 
	    obj = request.getAttribute("width");
	    if (obj != null) {
		width = obj.toString();
	    }	
	%>
	<%String area = "";
	    obj = request.getAttribute("area");
	    if (obj != null) {
		area = obj.toString();
	    }	
	%>
	<%String errorMessage = "";
	    obj = request.getAttribute("errorMessage");
	    if (obj != null) {
		errorMessage = obj.toString();
	    }	
	%>


	<h1>Simple Area Calculator</h1>
	<form id="dimensions" name="dimensions" action="<%= request.getContextPath() %>/calculate2.area" method="post">
	    Length:
	    <input type="text" name="length" value="<%= length %>" placeholder="eg 15.67" />
	    Width:
	    <input type="text" name="width" value="<%=width %>" placeholder="eg 9.4" />
	    Area: <%= area %>
	    <p> </p>
	    <input type="submit" name="submit" value="Calculate Area" />
	</form>
	    <p> <%= errorMessage %> </p>
     </body>
</html>
