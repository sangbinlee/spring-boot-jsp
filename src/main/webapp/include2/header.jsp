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
String requestSetReq1 = (String)request.getAttribute(REQUEST_SET_REQ1);

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
%>

<div>
	<%=requestSetReq1 %>

</div>

<div>
	today is <b><tf:now /></b> ...

</div>

<div style="width: 100%; background-color: yellow">

	<h2>
		now
		<%=now%></h2>

	<div>
		<%
		out.println("out.println SESSION_START=" + SESSION_START);
		out.println("out.println MEM_ID=" + MEM_ID);
		out.println("out.println now2=" + now2);
		out.println("out.println mem_id=" + mem_id);

		String val = "로컬";
		String encodeVal = URLEncoder.encode(val);

		out.println("out.println test encodeVal=" + encodeVal);
		// response.sendRedirect("/?name="+ encodeVal);

		out.println("out.println test val=" + val);
		out.newLine();
		out.newLine();
		out.println("out.println test mode=" + mode);

		application.log("로그 시작 =============================================== val=" + val);
		log("로그 시작 =============================================== val=" + val);
		%>
	</div>











	<h1>include header 영역 ddd</h1>
	<%=request.getContextPath()%>
	<br> : /spring-boot-jsp/src/main/webapp/WEB-INF/jsp/include/header.jsp



	<h3>${name}</h3>
	<div>JSP List Test</div>
	<c:forEach var="item" items="${list}" varStatus="idx">
        ${idx.index}, ${item} <br />
	</c:forEach>
</div>






