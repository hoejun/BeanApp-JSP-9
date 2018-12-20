<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원 가입 페이지</h1>

<!-- 순서1 -->
<form action="register_proc.jsp" method="post">
	아이디 : <input type="text" name="mem_id"/><p>
	패스워드 : <input type="text" name="mem_pw"/><p>
	패스워드 확인 : <input type="text" name="mem_pwre"/><p>
	이름 : <input type="text" name="mem_name"/><p>
	이메일 : <input type="text" name="mem_email"/><p>
	전화번호 : <input type="text" name="mem_tel"/><p>
	<input type="submit" value="가입">&nbsp;&nbsp;&nbsp;
	<input type="reset" value="다시작성">
</form>

<!-- 
	순서2.
	회원가입 페이지 register.jsp에서 요청할 값들을 자바빈 클래스에 저장하기 위해,
	mybean.tip 패키지에 RegisterBean.java 자바빈 클래스 만들기.
 -->

</body>
</html>