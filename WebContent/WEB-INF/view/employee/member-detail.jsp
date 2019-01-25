<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="member-detail">
<h1>마이페이지</h1>

<table>
	<tr>
		<th>\</th>
		<th>내용</th>
	</tr>
	<tr>
		<td>ID</td>
		<td>${member.id}</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${member.name}</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>${member.pass}</td>
	</tr>
	<tr>
		<td>주민번호</td>
		<td>${member.ssn}</td>
	</tr>
</table>
</div>