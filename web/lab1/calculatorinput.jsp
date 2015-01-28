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
	<title>Simple Area Calculator (Dual Pages)</title>
    </head>
    <body>
	<h1>Simple Area Calculator</h1>
	<form id="dimensions" name="dimensions" action="<%= request.getContextPath() %>/calculate.area" method="post">
	    Length:
	    <input type="text" name="length" value="" placeholder="eg 15.67" />
	    Width:
	    <input type="text" name="width" value="" placeholder="eg 9.4" />
	    <p> </p>
	    <input type="submit" name="submit" value="Calculate Area" />
	</form>
     </body>
</html>
