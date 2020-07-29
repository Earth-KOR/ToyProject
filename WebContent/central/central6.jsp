
<%@page import="java.util.Collections"%>
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
<title>수도 문제 6단계</title>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
	
<%String a = (String) session.getAttribute("id");
String b = (String) request.getParameter("stage");
String c = (String) session.getAttribute("asd");
  
   Map<String, String> solution = new HashMap<>();
  
  solution.put("홍콩", "빅토리아" );
  solution.put("중국", "베이징" );
  solution.put("인도", "뉴델리" );
  solution.put("라오스", "비엔티안" );
  solution.put("이스라엘", "예루살렘" );
  solution.put("필리핀", "마닐라" );
  solution.put("말레이시아", "쿠알라룸푸르" );
  solution.put("인도네시아", "자카르타" );
  solution.put("요르단", "임만" );
  solution.put("오스트리아", "비엔나" );
  solution.put("러시아", "모스크바" );
  solution.put("이탈리아", "로마" );
  solution.put("싱가포르", "싱가포르" );
  solution.put("루마니아", "부쿠레슈티" );
  solution.put("그리스", "아테네" );
  solution.put("이란", "테헤란" );
   
List<String> list = new ArrayList<String>();
	list.add("홍콩");  
	list.add("중국");  
	list.add("인도");  
	list.add("라오스");
	list.add("이스라엘");
	list.add("필리핀");
	list.add("말레이시아");
	list.add("인도네시아");
	list.add("요르단");
	list.add("오스트리아");
	list.add("러시아");
	list.add("이탈리아");
	list.add("싱가포르");
	list.add("루마니아");
	list.add("그리스");
	list.add("이란");
	
	double randam = Math.random();
	double randam2 = Math.random();
	double randam3 = Math.random();
	double randam4 = Math.random();
	int num = (int)(randam*16);


	int num2 = 0;
	int num3 = 0;
	int num4 = 0;

while(true) {

	num2 = (int)(randam2*16);
	num3 = (int)(randam3*16);
	num4 = (int)(randam4*16);		
		
if(num != num2 && num != num3 && num != num4 && num2 != num3 && num2 != num4 && num3 != num4 ) {
 break;
}

}

String answp = list.get(num); 
String answp2 = list.get(num2); 
String answp3 = list.get(num3); 
String answp4 = list.get(num4);

List<String> list2 = new ArrayList<String>();

list2.add(answp);
list2.add(answp2);
list2.add(answp3);
list2.add(answp4);

answp =  list2.get(0);
String ekq1 = solution.get(list2.get(0));


Collections.shuffle(list2);


String ekq = solution.get(list2.get(0));
String ekq2 = solution.get(list2.get(1));
String ekq3 = solution.get(list2.get(2));
String ekq4 = solution.get(list2.get(3));




%>	

	<script type="text/javascript">
	
	
	
	$(document).ready(function(){
		var ekq = "<%=ekq1%>"
		
 		$('#ibtn').click(function(){
 		
 			var aunwer = $(this).attr('value');
				
 			if(aunwer == ekq) {
 				alert("정답입니다!")
 				location.href="central7.jsp?stage=7"
 			}else{
 				alert("오답입니다!")
 				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>"
 			}
 			
 		});
		
		$('#ibtn2').click(function(){
	 		
 			var aunwer = $(this).attr('value');
				
 			if(aunwer == ekq) {
 				alert("정답입니다!")
 				location.href="central7.jsp?stage=7"
 			}else{
 				alert("오답입니다!")
 				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>"
 			}
 			
 		});	
		
		$('#ibtn3').click(function(){
	 		
 			var aunwer = $(this).attr('value');
				
 			if(aunwer == ekq) {
 				alert("정답입니다!")
 				location.href="central7.jsp?stage=7"
 			}else{
 				alert("오답입니다!")
 				location.href="../end.jsp?stage=<%=b%>&asd=<%=c%>"
 			}
 			
 		});	
		
		$('#ibtn4').click(function(){
	 		
 			var aunwer = $(this).attr('value');
				
 			if(aunwer == ekq) {
 				alert("정답입니다!")
 				location.href="central7.jsp?stage=7"
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

<button type="button" id="ibtn" value="<%=ekq%>" ><%=ekq%></button> <br><br><br>
<button type="button" id="ibtn2" value="<%=ekq2%>" ><%=ekq2%></button> <br><br><br>
<button type="button" id="ibtn3" value="<%=ekq3%>" ><%=ekq3%></button> <br><br><br>
<button type="button" id="ibtn4" value="<%=ekq4%>" ><%=ekq4%></button>


</center>
</body>
</html>