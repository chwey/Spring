<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jstl.jsp</title>
</head>
<body>
<img src="<%=request.getContextPath() %>/ing/a.jpg">
<img src="${pageContext.request.contextPath}/ing/a.jpg">
${cookie.hobby.value }
<br>
<%=request.getHeader("User-Agent") %>
<br>
${header["User-Agent"]}
<br>
<%
	session.setAttribute("name","session홍길동");
	request.setAttribute("name","req홍길동");
	Cookie cookie = new Cookie("hobby","해금");
	response.addCookie(cookie);
%>

<br>
<%=request.getParameter("name") %>
 : ${param.name}
 <br>
 <%=session.getAttribute("name") %> : ${name} : ${sessionScope.name}
 
</body>
</html>