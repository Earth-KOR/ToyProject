
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시사 문제 1단계</title>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
	
<%String a = (String) session.getAttribute("id");
  String b = (String) request.getParameter("stage");
  String c = (String) session.getAttribute("asd");
  
 
	double randam = Math.random();
	int num = (int)(randam*15);
	String answp = list.get(num);
	 
	String ekq = solution.get(answp);
	
%>	

	<script type="text/javascript">
	
	
	
	$(document).ready(function(){
		var ekq = "<%=ekq%>"
		
 		$('#ibtn').click(function(){
 		
 			var aunwer = $(this).attr('value');
				
 			if(aunwer == ekq) {
 				alert("모든 문제를 푸셨습니다! 당신은 대단해요~")
 				location.href="../good.jsp?stage=<%=b%>&asd=<%=c%>"
 			}else{
 				alert("오답입니다!")
 				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>"
 			}
 			
 		});
 		
			$('#ibtn2').click(function(){
				
 			var aunwer = $(this).attr('value');
 			
 			
 		    if(aunwer == ekq) {
 		    	alert("정답입니다!")
 				location.href="../good.jsp?stage=<%=b%>&asd=<%=c%>"
 			}else{
 				alert("오답입니다!")
 				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>"
 			}
 			 
 			
 		});
 	});
 	
	
	</script>



	<script language="JavaScript">

		var SetTime = 6;		

		function msg_time() {	
			
			m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	
			
			var msg = "남은 시간 : <font color='red'>" + m + "</font>";
			
			document.all.ViewTimer.innerHTML = msg;		
					
			SetTime--;					
			
			if (SetTime < 0) {			
				
				clearInterval(tid);		
				alert("시간 오바! 바로바로 생각나는 답안으로 문제를 풀어주세요!");
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

 <h1 align="center"><%=answp%></h1>
<center>

<button type="button" id="ibtn" value="O" ><img src="../img/O.png" alt="O" width="200px" height="200px"></button>

<button type="button" id="ibtn2" value="X" ><img src="../img/X.png" alt="X" width="200px" height="200px"></button>
</center>
</body>
</html>
