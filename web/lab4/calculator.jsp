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
	<c:set var="baseURL" value="${pageContext.request.contextPath}" />
	
	<div name="rectangle">
	    <img src="${baseURL}/images/rectangle.jpeg" alt="Rectangle"/>
	    <form id="rareacalc" name="rareacalc" action="${baseURL}//calculate4.area?f=rectangle" method="post">
		Length:
		<input type="text" name="length" value="${length}" placeholder="eg 15.67" />
		Width:
		<input type="text" name="width" value="${width}" placeholder="eg 9.4" />
		Area: <fmt:formatNumber type="number" maxFractionDigits="2" value="${rectanglearea}" />
		<p> </p>
		<input type="submit" name="rsubmit" value="Calculate Area" />
	    </form>
	</div>
		
	<div name="circle">
	    <img src="${baseURL}/images/circle.jpeg" alt="Circle"/>
	    <form id="careacalc" name="careacalc" action="${baseURL}/calculate4.area?f=circle" method="post">
		Radius:
		<input type="text" name="radius" value="${radius}" placeholder="eg 15.67" />
		Area: <fmt:formatNumber type="number" maxFractionDigits="2"  value="${circlearea}" />
		<p> </p>
		<input type="submit" name="csubmit" value="Calculate Area" />
	    </form>
	</div>
		
	<div name="triangle">
	    <img src="${baseURL}/images/righttriangle.jpeg" alt="Triangle"/>
	    <form id="tareacalc" name="tareacalc" action="${baseURL}//calculate4.area?f=triangle" method="post">
		Height:
		<input type="text" name="height" value="${height}" placeholder="eg 15.67" />
		Base Length:
		<input type="text" name="baselength" value="${baselength}" placeholder="eg 9.4" />
		Area: <fmt:formatNumber type="number" maxFractionDigits="2"  value="${trianglearea}" />
		<p> </p>
		<input type="submit" name="tsubmit" value="Calculate Area" />
	    </form>
	</div>
	<p> <c:out value="${errorMessage}" /> </p>

	<p> </p>
	<table border="1" width="539">
	  <tr>
	    <td colspan="2" width="529" bgcolor="#0000FF">
	      <b>
		<font color="#FFFFFF" size="4">HTTP
		Request(pageContext.request.)</font>
	      </b>
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Access Method</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.method}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Authentication Type</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.authType}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Context Path</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.contextPath}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Path Information</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.pathInfo}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Path Translated</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.pathTranslated}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Query String</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.queryString}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">Request URI</td>

	    <td width="313">&#160; 
	    <c:out value="${pageContext.request.requestURI}" />
	    </td>
	  </tr>

	  <tr>
	    <td width="210">baseURL</td>

	    <td width="313">&#160; 
	    <c:out value="${baseURL}" />
	    </td>
	  </tr>
	</table>
	
     </body>
</html>
