<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="cb" class="test.CalcBean"/>
<%-- 자바의 bean을 그대로 데려올 수 있게 됨 --%>
   
<jsp:setProperty property="*" name="cb"/>    
<%-- cb라는 이름을 가진 객체의 setter메서드 자동매핑 호출 --%>
<%-- cb의 속성을 모두 set시켜줌 --%>
    
<%-- 이름이 다르면 자동매핑이 안되기 때문에 name의 변수명 잘 맞춰야함!!! --%>    
 
<% cb.calc(); %>  
<%-- cb에서 계산을 한 calc메서드를 호출한거임 --%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 - 2</title>
</head>
<body>

<h1>계산기</h1>
<hr>
<form method="post"> <!-- 내가 부탁하는 입장이라 post -->
	<input type="text" name="num1">
	<select name="op">
		<option>+</option>
		<option>-</option>
		<option>*</option>
		<option>/</option>
	</select>
	<input type="text" name="num2">
	<input type="submit" name="계산 결과보기">
</form>
<hr>
<h2>계산결과: <jsp:getProperty property="result" name="cb"/></h2>
<%-- cb에서 result값을 가져옴 --%>
</body>
</html>