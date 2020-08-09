
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
<title>역사 문제 3단계</title>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
	
<%String a = (String) session.getAttribute("id");
  String b = (String) request.getParameter("stage");
  String c = (String) session.getAttribute("asd");
  
   Map<String, String> solution = new HashMap<>();
  
   solution.put("두산 베어스의 원년 우승은 82년도이다?", "O" );
   solution.put("롯데자이언츠의 첫 외국인 감독은 2006년이다?", "X" );
   solution.put("김태형 감독의 포지션은 포수이다?", "O" );
   solution.put("SK왕조를 이끌었던 감독은 김성근 감독이다?", "O" );
   solution.put("kbo 단일시즌 최대홈런의 주인공은 이승엽이다?", "O" );
   solution.put("이승엽의 최대홈런 갯수는 56개이다?", "O" );
   solution.put("김태균은 일본 지바롯데에서 MVP를 달성하였다?", "O" );
   solution.put("강정호의 첫 메이저리그 팀은 피츠버그이다?", "O" );
   solution.put("두산은 총 4번의 우승을 차지했다?", "X" );
   solution.put("삼성의 왕조를 이끌었던 감독은 류중일 감독이다?", "O" );
   solution.put("김현수는 신인 드래프트 2라운드로 지명되었다 ?", "X" );
   solution.put("홍성흔의 첫 데뷔 프로팀은 OB베어스 이다?", "O" );
   solution.put("가르시아는 롯데 자이언츠에서만 활약했다?", "X" );
   solution.put("송승준은 3연속 완봉승을 거둔적이 있다?", "O" );
   solution.put("kbo 최대 우승팀은 삼성 라이언즈 이다?", "X" );
   solution.put("김원중의 고향은 부산이다?", "X" );
    
 List<String> list = new ArrayList<String>();
 	list.add("두산 베어스의 원년 우승은 82년도이다?");  
 	list.add("롯데자이언츠의 첫 외국인 감독은 2006년이다?");  
 	list.add("김태형 감독의 포지션은 포수이다?");  
 	list.add("SK왕조를 이끌었던 감독은 김성근 감독이다?");
 	list.add("kbo 단일시즌 최대홈런의 주인공은 이승엽이다?");
 	list.add("이승엽의 최대홈런 갯수는 56개이다?");
 	list.add("김태균은 일본 지바롯데에서 MVP를 달성하였다?");
 	list.add("강정호의 첫 메이저리그 팀은 피츠버그이다?");
 	list.add("두산은 총 4번의 우승을 차지했다?");
 	list.add("삼성의 왕조를 이끌었던 감독은 류중일 감독이다?");
 	list.add("김현수는 신인 드래프트 2라운드로 지명되었다 ?");
 	list.add("홍성흔의 첫 데뷔 프로팀은 OB베어스 이다?");
 	list.add("가르시아는 롯데 자이언츠에서만 활약했다?");
 	list.add("송승준은 3연속 완봉승을 거둔적이 있다?");
 	list.add("kbo 최대 우승팀은 삼성 라이언즈 이다?");
 	list.add("김원중의 고향은 부산이다?");
 	
 	double randam = Math.random();
 	int num = (int)(randam*16);
	String answp = list.get(num);
	 
	String ekq = solution.get(answp);
	
%>	

	<script type="text/javascript">
	
	
	
	$(document).ready(function(){
		var ekq = "<%=ekq%>"
		
 		$('#ibtn').click(function(){
 		
 			var aunwer = $('#ibtn2').attr('value');
				
 			if(aunwer == ekq) {
 				alert("정답입니다!")
 				location.href="baseball2.jsp?stage=2"
 			}else{
 				alert("오답입니다!")
 				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>"
 			}
 			
 		});

 	});
 	
	
	</script>



	<script language="JavaScript">

		var SetTime = 100;		

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

정답 : <input type="text" id="ibtn2"/><input type="button" id="ibtn" value="확인"></button>
</center>
</body>
</html>