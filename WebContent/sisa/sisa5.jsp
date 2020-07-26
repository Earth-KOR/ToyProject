
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
  
   Map<String, String> solution = new HashMap<>();
   solution.put("박원순은 킹동권 성추행범이다?", "O" );
   solution.put("광주는 민주화 운동이다?", "X" );
   solution.put("이명박은 옳았다?", "O" );
   solution.put("박정희는 우리나라 최고의 대통령이였다 ?", "O" );
   solution.put("18대 대선의 선두주자는 홍준표다 ?", "O" );
   solution.put("문재인은 주사파 빨갱이 이다?", "O" );
   solution.put("노무현은 피아제 때문에 운지했다 ?", "O" );
   solution.put("4대강 사업은 성공한 사업이다", "O" );
   solution.put("문재인의 3년간 행보는 옳다", "X" );
   solution.put("킹동권 사람들은 기본사상이 쓰레기 이다?", "O" );
   solution.put("노무현은 정치를 제일 잘한다 ?", "X" );
   solution.put("노무현의 직업은 가수이다?", "O" );
   solution.put("노무현은 잘생겼다?", "X" );
   solution.put("노무현은 귀엽다?", "O" );
   solution.put("코로나 극복은 의료진이 아닌 문재인 떄문이다?", "X" );
   solution.put("세월호는 정치적으로 이용당하지 않았다?", "X" );
    
 List<String> list = new ArrayList<String>();
 	list.add("박원순은 킹동권 성추행범이다?");  
 	list.add("광주는 민주화 운동이다?");  
 	list.add("이명박은 옳았다?");  
 	list.add("박정희는 우리나라 최고의 대통령이였다 ?");
 	list.add("18대 대선의 선두주자는 홍준표다 ?");
 	list.add("문재인은 주사파 빨갱이 이다?");
 	list.add("노무현은 피아제 때문에 운지했다 ?");
 	list.add("4대강 사업은 성공한 사업이다");
 	list.add("문재인의 3년간 행보는 옳다");
 	list.add("킹동권 사람들은 기본사상이 쓰레기 이다?");
 	list.add("노무현은 정치를 제일 잘한다 ?");
 	list.add("노무현의 직업은 가수이다?");
 	list.add("노무현은 잘생겼다?");
 	list.add("코로나 극복은 의료진이 아닌 문재인 떄문이다?");
 	list.add("세월호는 정치적으로 이용당하지 않았다?");
	
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