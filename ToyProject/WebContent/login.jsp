<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<script type="text/javascript">


$(document).ready(function(){
		 	
	$("#ibtn2").click(function(){
			
			alert("asd")
		});
		
	});

</script>


</head>
<body>

<form action="index.jsp?stage=1" id="join" method="post">
		<legend>유저 정보</legend>
		<fieldset>
			<br>
			<label>User ID :</label>
			<input type="text" name="id" required="required"><br><br>
			<label>Nation :</label>
			<input type="text" name="Nation" required="required"><br><br>
		</fieldset>
		<br>
		<div id="buttons">
			<input type="button" value="시작하기!" id="ibtn2"/>
			<input type="reset" value="다시작성" class="cancel">
		</div>
	</form>
</form>
</body>
</html>