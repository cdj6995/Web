<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	
</script>
</head>
<body>
<%--
	http://localhost:9999/jsp/el/exam02.jsp?id=aaa&name=bbb 요청을 했다는 가정하에...
	el은 조회 목적으로만!! 사용!
 --%>
 
 <%
 	String id = request.getParameter("id");
 	String name = request.getParameter("name");
 	String[] hobby = request.getParameterValues("hobby");
 	if(hobby == null){
 		hobby = new String[]{"파라미터 없음"};
 	}
 %>
 	id : <%= id %><br>
 	id : <%= request.getParameter("id") %><br>
 	el id : ${ param.id }<br>
 	
 	name : <%= name %><br>
 	name : <%= request.getParameter("name") %><br>
 	el name : ${ param.name }<br>

<%--
	http://localhost:9999/jsp/el/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=reading 요청을 했다는 가정하에...
 --%>
 	hobby[0] : <%= hobby[0] %><br>
 	el hobby[0] : ${ paramValues.hobby[0] }<br>
 	empty hobby[0] : ${ empty paramValues.hobby[0] }<br>
 	
</body>
</html>