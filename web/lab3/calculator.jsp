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
	<title>Simple Area Calculator (Multi-Shape)</title>
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

	<%String rectanglearea = "";
	    obj = request.getAttribute("rectanglearea");
	    if (obj != null) {
		rectanglearea = obj.toString();
	    }	
	%>
	
	<%String radius = ""; 
	    obj = request.getAttribute("radius");
	    if (obj != null) {
		radius = obj.toString();
	    }
	%>

	<%String circlearea = "";
	    obj = request.getAttribute("circlearea");
	    if (obj != null) {
		circlearea = obj.toString();
	    }	
	%>
	
	<%String height = ""; 
	    obj = request.getAttribute("height");
	    if (obj != null) {
		height = obj.toString();
	    }
	%>

	<%String baselength = ""; 
	    obj = request.getAttribute("baselength");
	    if (obj != null) {
		baselength = obj.toString();
	    }
	%>

	<%String trianglearea = "";
	    obj = request.getAttribute("trianglearea");
	    if (obj != null) {
		trianglearea = obj.toString();
	    }	
	%>
	
	<%String errorMessage = "";
	    obj = request.getAttribute("errorMessage");
	    if (obj != null) {
		errorMessage = obj.toString();
	    }	
	%>


	<h1>Simple Area Calculator</h1>
	<div name="rectangle">
	    <img src="<%= request.getContextPath() %>/images/rectangle.jpeg" alt="Rectangle"/>
	    <form id="rareacalc" name="rareacalc" action="<%= request.getContextPath() %>/calculate3.area?f=rectangle" method="post">
		Length:
		<input type="text" name="length" value="<%= length %>" placeholder="eg 15.67" />
		Width:
		<input type="text" name="width" value="<%=width %>" placeholder="eg 9.4" />
		Area: <%= rectanglearea %>
		<p> </p>
		<input type="submit" name="rsubmit" value="Calculate Area" />
	    </form>
	</div>
	<div name="circle">
	    <img src="<%= request.getContextPath() %>/images/circle.jpeg" alt="Circle"/>
	    <form id="careacalc" name="careacalc" action="<%= request.getContextPath() %>/calculate3.area?f=circle" method="post">
		Radius:
		<input type="text" name="radius" value="<%= radius %>" placeholder="eg 15.67" />
		Area: <%= circlearea %>
		<p> </p>
		<input type="submit" name="csubmit" value="Calculate Area" />
	    </form>
	</div>
	<div name="triangle">
	    <img src="<%= request.getContextPath() %>/images/righttriangle.jpeg" alt="Triangle"/>
	    <form id="tareacalc" name="tareacalc" action="<%= request.getContextPath() %>/calculate3.area?f=triangle" method="post">
		Height:
		<input type="text" name="height" value="<%= height %>" placeholder="eg 15.67" />
		Base Length:
		<input type="text" name="baselength" value="<%=baselength %>" placeholder="eg 9.4" />
		Area: <%= trianglearea %>
		<p> </p>
		<input type="submit" name="tsubmit" value="Calculate Area" />
	    </form>
	</div>
	<p> <%= errorMessage %> </p>
     </body>
</html>
