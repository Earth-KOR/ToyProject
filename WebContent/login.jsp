<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>환영합니다! 이상권의 스피드퀴즈</title>
	
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<% session.invalidate(); %>

</head>
<body>

<form action="index.jsp" id="join" method="post">
		<legend>유저 정보</legend>
		<fieldset>
			<br>
			<label>User ID :</label>
			<input type="text" name="id" required="required"><br><br>
		</fieldset>
		<br>
		<div id="buttons">
			<input type="submit" value="시작하기!" id="ibtn2"/>
			<input type="reset" value="다시작성" class="cancel">
		</div>
	</form>
</form>
</body>
</html>
