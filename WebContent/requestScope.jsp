<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한글처리
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<%--
	RequestScopeBean 자바빈 객체 생성하여 자바빈 객체에 요청 정보를 setter 메소드를 이용하여 저장
	
	중요!!
	scope = "request"로 두면 생성한 requestScopeBean 자바빈 객체는 request객체 영역을 다른 페이지내에서 사용 가능함. 
 --%>
 <jsp:useBean id="req" class="mybean.scope.RequestScopeBean" scope="request">
 <%--
 	req객체의 setHeader(매개변수) 메소드를 호출할때 param속성을 이용하여 실행중에 입력된 값을 전달함.
  --%>
 <jsp:setProperty property="header" name="req" param="header"/>
 <jsp:setProperty property="footer" name="req" param="footer"/>
 </jsp:useBean>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 머릿말에 들어갈 부분 따로 만들기 -->
<jsp:include page="inc/header.jsp"/>

<hr>

<h1>머릿말과 꼬릿말을 직접 입력을 해서 설정</h1>
<form action="requestScope.jsp" method="post">
머릿말에 들어갈 부분<br>
<textarea rows="2" cols="60" name="header"></textarea>
<p>
꼬릿말에 들어갈 부분<br>
<textarea rows="2" cols="60" name="footer"></textarea>
<p>
<input type="submit" value="새로고침">
</form>

<hr>

<!-- 꼬릿말이 들어갈 부분 따로 만들기 -->
<jsp:include page="inc/footer.jsp"/>

</body>
</html>