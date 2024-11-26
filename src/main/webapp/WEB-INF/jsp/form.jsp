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
<%!public int 곱셈(int a, int b) {
		int c = a * b;
		return c;
	}%>
<%
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>form demo</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>


	<jsp:include page="include/header.jsp"></jsp:include>

	<h2>
		now
		<%=application.getServerInfo()%></h2>
	<h2>
		now
		<%=application.getServletContextName()%></h2>
	<h2>
		now
		<%=application.getSessionTimeout()%></h2>
	<h2>
		test
		<%=test%></h2>
	<h2>
		<%=cal.get(Calendar.YEAR)%>년
		<%=cal.get(Calendar.MONTH) + 1%>월
		<%=cal.get(Calendar.DATE)%>일
	</h2>
	<h2>
		sum
		<%=sum%></h2>
	<h2>
		sum
		<%=100 + 200%></h2>
	<h2>
		곱셈(10, 7)
		<%=곱셈(10, 7)%></h2>

	<br> :
	<%
	out.println("out.println test");
	out.newLine();
	out.println("out.println test2");
	%>
	<br> : http://localhost:8080/college/form.do
	<br> :
	<a href="http://localhost:8080/college/form.do?mode=local">http://localhost:8080/college/form.do?mode=local</a>
	<br> :
	<%=request.getParameter("mode")%>
	<br> :
	<%=request.getRequestURL()%>
	<br> :
	<%=request.getLocalName()%>
	<br> :
	<%=request.getLocalAddr()%>
	<br> :
	<%=request.getServletContext()%>
	<br> :
	<%=request.getRemoteAddr()%>
	<br> :
	<%=request.getContentLength()%>
	<br> :
	<%=request.getCharacterEncoding()%>
	<br> :
	<%=request.getContentType()%>
	<br> :
	<%=request.getProtocol()%>
	<br> :
	<%=request.getMethod()%>
	<br> :
	<%=request.getRequestURI()%>
	<br> :
	<%=request.getContextPath()%>
	<br> :
	<%=request.getServerName()%>
	<br> :
	<%=request.getServerPort()%>
	<br>












	<hr>








	<%-- 	<jsp:forward page="/college/form2.do"></jsp:forward> --%>





	<h2>Hello JSP!</h2>
	<h2>/spring-boot-jsp/src/main/webapp/WEB-INF/jsp/form.jsp</h2>
	<h3>${name}</h3>
	<div>JSP List Test</div>
	<c:forEach var="item" items="${list}" varStatus="idx">
        ${idx.index}, ${item} <br />
	</c:forEach>




	<h2>회원가입</h2>
	<!-- 상대경로 사용, [현재 URL이 속한 계층 경로 + /save] -->
	<p>*표시가 있을경우 필수 입력입니다.</p>
	<form action="save.jsp" method="post">
		*이메일: <input type="text" name="email" /> *비밀번호: <input type="text" name="password" /> *닉네임: <input type="text" name="nickName" /> <br> 나이: <input type="text" name="age" /> 거주지: <input type="text"
			name="liveRegion" /> <br>
		<button type="submit">전송</button>

	</form>
	<br>
	<a href="/index.html">메인으로 이동</a>















	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>






</body>
</html>