<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 출력 페이지</title>
</head>
<body>
	<!-- 포워딩시 // 결과:<%=request.getAttribute("result") %>  -->
	결과:<%=session.getAttribute("result") %>
</body>
</html>