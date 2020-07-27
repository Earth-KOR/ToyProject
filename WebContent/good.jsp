<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게임 종료</title>
</head>
<body>
<%
String a = (String) session.getAttribute("id");
String stage = request.getParameter("stage");
String b = (String) session.getAttribute("asd");
%>
모든 문제를 푸셨습니다 ! 
<%=a%>님의 <%=b%>분야 점수는 <%=stage%>점 입니다 ! <br><br>
<input type="button" value="순위 보러가기" onclick="location.href='rank.jsp?id=<%=a%>&score=<%=stage%>&type="<%=b%>'"/>
<input type="button" value="다시하기"/>

</body>
</html>
