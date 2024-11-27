<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>board9/form2</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<%=request.getContextPath()%>
	<br> :
	<h2>Hello JSP!</h2>
	<h2>http://localhost:8080/college/board9/form2</h2>
	<h2>/spring-boot-jsp/src/main/webapp/WEB-INF/jsp/board9/form2.jsp</h2>
	<h3>${name}</h3>
	<h3>${name}</h3>
	<h3>${name}</h3>
	<h3>${name}</h3>
	<h3>${name}</h3>
	<div>JSP List Test</div>
	<c:forEach var="item" items="${list}" varStatus="idx">
        ${idx.index}, ${item} <br />
	</c:forEach>




<h2>회원가입</h2>
<!-- 상대경로 사용, [현재 URL이 속한 계층 경로 + /save] -->
<p>*표시가 있을경우 필수 입력입니다.</p>
<form action="save.jsp" method="post">
    *이메일: <input type="text" name="email" />
    *비밀번호: <input type="text" name="password" />
    *닉네임: <input type="text" name="nickName" />
    <br>
    나이: <input type="text" name="age" />
    거주지: <input type="text" name="liveRegion" />
    <br>
    <button type="submit">전송</button>

</form>
<br>
<a href="/index.html">메인으로 이동</a>















	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>






</body>
</html>