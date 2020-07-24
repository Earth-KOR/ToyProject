<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시사 문제 1단계</title>

	
<%String a = (String) session.getAttribute("id");
String b = (String) request.getParameter("stage");
String c = (String) session.getAttribute("asd");
%>	

	<script language="JavaScript">
	
		var SetTime = 10;		// 최초 설정 시간(기본 : 초)

		function msg_time() {	// 1초씩 카운트
			
			m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
			
			var msg = "현재 남은 시간은 <font color='red'>" + m + "</font> 입니다.";
			
			document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
					
			SetTime--;					// 1초씩 감소
			
			if (SetTime < 0) {			// 시간이 종료 되었으면..
				
				clearInterval(tid);		// 타이머 해제
				alert("다시 도전 해주세요");
				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>";
			}
			
		}

		window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };
		
	</script>

	
</head>


<body>

<div id="ViewTimer"></div>

<%=a%>님 <br>

현재 Stage : <%=b%> 



 <h1 align="center">삼풍 백화점이 무너질 때, 그 당시 대한민국 대통령은 누구였습니까 ?</h1>
<div id="time"></div>
<div id="Quiz">
 <span class="a"> 
 <a href="../good.jsp?stage=<%=b%>&asd=<%=c%>"><img alt="김영삼" src="img/kim.jpg"></a> <br>
  <a href="../good.jsp?stage=<%=b%>&asd=<%=c%>">김영삼</a>
 </span>
 <span class="b">
 <a href="../end.jsp?stage=<%=b%>&asd=<%=c%>"><img alt="김대중" src="img/kim2.jpg"></a><br>
  <a href="../end.jsp?stage=<%=b%>&asd=<%=c%>">김대중</a>
  </span>
 </div>
</body>
</html>