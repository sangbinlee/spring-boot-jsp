<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page import="java.util.Date"%> --%>
<%-- <%@ page import="java.util.Calendar"%> --%>
<%-- <%@ page import="java.util.Calendar, java.util.Date"%> --%>
<%@ page import="java.util.*"%>
<%@ page import="java.net.*"%>
<%

String REQUEST_SET_REQ1 = "request_set_req1";

request.setAttribute(REQUEST_SET_REQ1, REQUEST_SET_REQ1);



Calendar cal = Calendar.getInstance();

String test = "test";

int sum = 0;
for (int i = 1; i <= 10; i++) {
	sum += i;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>

	<h2>index.jsp</h2>



	<jsp:include page="include2/header.jsp"></jsp:include>
	<jsp:include page="/include2/header.jsp"></jsp:include>
</body>
</html>