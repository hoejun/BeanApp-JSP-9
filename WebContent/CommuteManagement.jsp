<%@page import="mybean.index.EmployeeDto"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>출퇴근 관리 프로그램</h1>

<%--순서2. 출근 또는 퇴근 사원에 대한 사원(EmployeeDto자바빈)객체 생성 --%>
<jsp:useBean id="dto" class="mybean.index.EmployeeDto" scope="page"/>

<%--순서3. 출,퇴근 사원 관리를 위한 객체생성 --%>
<jsp:useBean id="dao" class="mybean.index.CommuteDao" scope="application"/>

<%--순서4. --%>
<%--
	dao객체의 setEnter(String no) 호출시 <form>태그에서 입력받은 출근 한 사원번호를 요청받아,
	출근 한 사원객체를 백터(회사)에 추가 시키는 setter메소드 호출
 --%>
<jsp:setProperty property="enter" name="dao" param="enter"/>

<%--순서5. --%>
<%--
	dao객체의 setExit(String no) 호출시 <form>태그에서 입력받은 퇴근할 사원번호를 요청받아,
	퇴근할 사원객체를 백터(회사)에서 제거 시키는 setter메소드 호출
 --%>
<jsp:setProperty property="exit" name="dao" param="exit"/>
 
<%--순서1. 출근하는 사원번호를 입력받고 "출근"버튼을 클릭하여 입력받은 출근 사원번호 요청 --%> 
<form action="CommuteManagement.jsp" method="post" >
	출근한 사원의 사번 : <input type="text" name="enter"/>&nbsp;&nbsp;
	<input type="submit" value="출근"/>
</form> 

<%--순서1. 퇴근하는 사원번호를 입력받고 "퇴근"버튼을 클릭하여 입력받은 퇴근 사원번호 요청 --%>
<form action="CommuteManagement.jsp" method="post">
	퇴근한 사원의 사번 : <input type="text" name="exit"/>&nbsp;&nbsp;
	<input type="submit" value="퇴근"/>
</form>

<hr>

회사내에 있는 직원 리스트 목록 뿌려주기 <p>
<table border="1">
	<tr>
		<th>사번</th><th>출근 시간</th>
	</tr>
<%
	//회사(백터)내에 현재 출근한 모든 직원들을 담아온다.
	Vector v = dao.getemployeeDto();

	//회사(백터)내에 현재 남아있는 직원수 만큼,
	for(int cnt=0; cnt<v.size(); cnt++){
	    
	    //현재 남아있는 직원을 꺼내어
	    EmployeeDto e = (EmployeeDto)v.get(cnt);
	    //page영역의 EmployeeDto dto객체에 담는다.
	    pageContext.setAttribute("dto", e);
%>
	<%--회사내에 있는 사원의 사원번호, 출근시간을 뿌려준다. --%>
	<tr>
		<td><jsp:getProperty property="empNo" name="dto"/></td>
		<td><jsp:getProperty property="enterTime" name="dto"/></td>
	</tr>
<%
	}
%>
</table>
<p> 
총 직원수 : <jsp:getProperty property="total" name="dao"/>명
</body>
</html>