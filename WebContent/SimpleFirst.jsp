<%@page import="mybean.test.SimpleBean"%>
<%@page import="sun.java2d.pipe.SpanShapeRenderer.Simple"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>첫번째 Bean예제</h1>
<!-- 주제 : 날짜 관련 클래스 Calendar를 이용하여 날짜를 출력  -->
<%
	//1.날짜 객체 생성하는 부분
	Calendar calendar = Calendar.getInstance();

%>
	<!-- 2.날짜를 표현하는 부분 -->
	<%=calendar.get(Calendar.YEAR) %>년
	<%=calendar.get(Calendar.HOUR) %>시
	<%=calendar.get(Calendar.MINUTE) %>분

<hr>

<%--
	<jsp:useBean id = "참조변수 이름" class = "생성할 객체에 대한 클래스 경로 이름"/>
	1. 자바빈 SimpleBean클래스에 대한 객체 생성 역할.
	2. 생성된 자바빈 SimpleBean객체를 참조변수 cal로 참조하는 역할.
 --%>	
<%-- scop = "만들어진 객체를 어느 영역까지 사용하게 할건지"  --%>	
<jsp:useBean id="cal" class="mybean.test.SimpleBean" scope="page"/>

<%--
	<jsp:getProperty property="year" name="cal"/>년
	설명 : getter메소드 호출 역할과 같음
 --%>
SimpleBean cal 객체의 getYear() 메소드 호출하여 년도를 리턴 받는다.
오늘의 날짜는
<jsp:getProperty property="year" name="cal"/>년
<jsp:getProperty property="hour" name="cal"/>시
<jsp:getProperty property="minute" name="cal"/>분 입니다.
 
<hr>

<%--SimpleBean simple 객체 생성 --%>
<jsp:useBean id="simple" class="mybean.test.SimpleBean"/>

<%--해석 : simple객체의 setMessage(매개변수) 메소드를 호출할때 value값을 저장 --%>
<jsp:setProperty property="message" name="simple" value="처음으로 해보는 Bean예제"/>

<%--해석 : simple객체의 getMessage() 메소드를 호출하여 message변수 값을 리턴받는다. --%>
<jsp:getProperty property="message" name="simple"/>

<hr>

<%
	SimpleBean sb = new SimpleBean();
	sb.setMessage("스크립틀릿에서 action tag를 사용한 예제");
%>

<%=sb.getMessage() %>

</body>
</html>