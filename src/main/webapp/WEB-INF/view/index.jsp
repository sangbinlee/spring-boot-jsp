<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/webapp/WEB-INF/jsp/index.jsp</title>
</head>
<body>



	<h3>${name}</h3>
	<h3>/webapp/WEB-INF/jsp/index.jsp</h3>
	<div>JSP List Test</div>
	<c:forEach var="item" items="${list}" varStatus="idx">
        ${idx.index}, ${item} <br />
	</c:forEach>





</body>
</html>