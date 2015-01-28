<%-- 
    Document   : calculatorinput
    Created on : Jan 26, 2015, 8:54:28 PM
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
	<title>Simple Area Calculator (Multi-Shape)</title>
    </head>
    <body>
	<h1>Simple Area Calculator</h1>
	<div name="rectangle">
	    <img src="lab3/rectangle.jpeg" alt="Rectangle"/>
	    <form id="rareacalc" name="rareacalc" action="<%= request.getContextPath() %>/calculate4.area?f=rectangle" method="post">
		Length:
		<input type="text" name="length" value="${length}" placeholder="eg 15.67" />
		Width:
		<input type="text" name="width" value="${width}" placeholder="eg 9.4" />
		Area: <c:out value="${rectanglearea}" />
		<p> </p>
		<input type="submit" name="rsubmit" value="Calculate Area" />
	    </form>
	</div>
	<div name="circle">
	    <img src="lab3/circle.jpeg" alt="Circle"/>
	    <form id="careacalc" name="careacalc" action="<%= request.getContextPath() %>/calculate4.area?f=circle" method="post">
		Radius:
		<input type="text" name="radius" value="${radius}" placeholder="eg 15.67" />
		Area: <c:out value="${circlearea}" />
		<p> </p>
		<input type="submit" name="csubmit" value="Calculate Area" />
	    </form>
	</div>
	<div name="triangle">
	    <img src="lab3/righttriangle.jpeg" alt="Triangle"/>
	    <form id="tareacalc" name="tareacalc" action="<%= request.getContextPath() %>/calculate4.area?f=triangle" method="post">
		Height:
		<input type="text" name="height" value="${height}" placeholder="eg 15.67" />
		Base Length:
		<input type="text" name="baselength" value="${baselength}" placeholder="eg 9.4" />
		Area: <c:out value="${trianglearea}" />
		<p> </p>
		<input type="submit" name="tsubmit" value="Calculate Area" />
	    </form>
	</div>
	<p> <c:out value="${errorMessage}" /> </p>
     </body>
</html>
