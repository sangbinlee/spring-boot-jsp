<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%>
<%-- <%@ page import="java.util.Date"%> --%>
<%-- <%@ page import="java.util.Calendar"%> --%>
<%-- <%@ page import="java.util.Calendar, java.util.Date"%> --%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%
String REQUEST_SET_REQ1 = "request_set_req1";
String requestSetReq1 = (String) request.getAttribute(REQUEST_SET_REQ1);

Date now = new Date();

String SESSION_START = "session_start";
String MEM_ID = "mem_id";

Date now2 = (Date) session.getAttribute(SESSION_START);
String mem_id = (String) session.getAttribute(MEM_ID);

session.setAttribute(SESSION_START, now);
session.setAttribute(MEM_ID, "member1");

String mode = request.getParameter("mode");
if ("local".equals(mode)) {
	// 	response.sendRedirect("/");
	// 	response.sendRedirect("/?mode=local");
	// 	response.sendRedirect("index");
}
%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sub.jsp</title>
</head>
<body>


	<h2>sub.jsp</h2>

	<h2>
		now
		<%=now%></h2>







</body>
</html>