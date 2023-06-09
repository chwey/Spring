<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for</title>
</head>
<body>
	<% request.setAttribute("contents", "<font color='red'>test</font>"); %>
	${contents}<br>
	${fn:escapeXml(contents)}<br>
	
	<c:forEach begin="0" end="10" var="num" varStatus="st">
		${num} ${st.index} ${st.count} <br>
	</c:forEach>
	<% request.setAttribute("list", Arrays.asList("해금","노래","영화")); %>
	전체갯수: ${fn:length(list)}<br>
	<c:forEach items="${list}" var="item" varStatus="st">
		${st.count} ${item} <br>
	</c:forEach>
</body>
</html>