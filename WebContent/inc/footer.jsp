<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="req" class="mybean.scope.RequestScopeBean" scope="request"/>
<jsp:getProperty property="gooter" name="req"/>
