<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- 
	입력한 머릿말 정보를 RequestScopeBean 자바빈 객체에 저장되어 있으므로,
	입력한 머릿말 정보를 가지고 있는 자바빈 객체.

	중요!
	requestScope.jsp 페이지에서 생성한 자바빈 객체는 scope = "request"이므로,
	현재 header.jsp에서는 <form>태그에서 요청한 값을 저장하고 있는,
	requestScope.jsp에서 생성한 자바빈 객체를 가져와서 사용한다.
--%>

<jsp:useBean id="req" class="mybean.scope.RequestScopeBean" scope="request"/>

<%-- 
	RequestScopeBean req자바빈 객체의 getHeader()메소드를 이용하여,
	자바빈 객체 안에 저장되어 있는 폼태그에 입력한 header 변수값 전달 받기
--%>

<jsp:getProperty property="header" name="req"/>