<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>page Scope에 대한 예제</h1>
<h2>주사위 게임</h2>

<jsp:useBean id="dice" class="mybean.scope.PageScopeBean" scope="page"/>
<jsp:setProperty property="minNumber" name="dice" value="1"/>
<jsp:setProperty property="maxNumber" name="dice" value="6"/>

주사위 눈금은 <jsp:getProperty property="diceNumber" name="dice"/>입니다.

<%--주사위 굴리기 위헤 폼 태그로 pageScope.jsp 페이지 요청, 요청방식 post --%>
<form action="PageScope.jsp" method="post">
	<input type="submit" value="주사위 굴리기">
</form>
</body>
</html>