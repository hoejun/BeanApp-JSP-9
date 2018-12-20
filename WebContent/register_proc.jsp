<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	순서3.
	register.jsp의 폼 태그에서 요청한 값을 가져와서 RegisterBean 클래스에 저장 해야함.
	액션 태그로 자바빈 객체 생성
 --%>
<jsp:useBean id="reg" class="mybean.tip.RegisterBean"/>

<%--
	순서4.
	자바빈(RegisterBean)클래스의 setMem_id(매개변수) 메소드를 이용하여,
	폼 태그의 입력한 값을 자바빈 클래스에 저장
 --%>
 <jsp:setProperty property="mem_id" name="reg" param="mem_id"/>
 <jsp:setProperty property="mem_pw" name="reg" param="mem_pw"/>
 <jsp:setProperty property="mem_name" name="reg" param="mem_name"/>
 <jsp:setProperty property="mem_email" name="reg" param="mem_email"/>
 <jsp:setProperty property="mem_tel" name="reg" param="mem_tel"/>

<%--
	순서5.
	<form>태그의 모든 <input>태그에서 요청한 값을 모든 setter()메소드를 호출하여,
	자바빈(RegisterBean)클래스에 저장
 --%>
<jsp:setProperty property="*" name="reg"/>
 
<h1>회원가입 확인</h1>
회원님이 작성하신 내용은 다음과 같습니다. 다시 한번 확인해 주세요.<br>
<form action="register_complete.jsp" method="post">
	<ul>
		<li>아이디 : <jsp:getProperty property="mem_id" name="reg"/></li>
		<li>패스워드 : <jsp:getProperty property="mem_pw" name="reg"/></li>
		<li>이름 : <jsp:getProperty property="mem_name" name="reg"/></li>
		<li>이메일 : <jsp:getProperty property="mem_email" name="reg"/></li>
		<li>전화번호 : <jsp:getProperty property="mem_tel" name="reg"/></li>
	</ul>
	<input type="submit" value="완료">
</form>

</body>
</html>