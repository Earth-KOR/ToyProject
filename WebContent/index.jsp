<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스피드 퀴즈</title>
    <link href="../css/reset.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

<% String ab = request.getParameter("id");
	session.setAttribute("id", ab);

%>

    
    <script type="text/javascript">

			alert(<%=ab%>+"님 게임을 시작합니다 ! 만점을 기원할게여!")
			
    </script> 


</head>

<body>

${param.id} 님 <br>

현재 Stage : 문제 선택




<center>
<div id="center">
<a href="sisa/sisa.jsp?stage=1&name=시사"><h1>시사</h1></a> <br><br>
<a href="person/person.jsp"><h1>인물</h1></a> <br><br>
<a href="history/history.jsp"><h1>역사</h1></a> <br><br>
<a href="nation/nation.jsp"><h1>수도</h1></a> <br><br>
<a href="wjdcl/wjdcl.jsp"><h1>정치</h1></a>
</div>

</center>


</body>
</html>
