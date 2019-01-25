<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<div id="member-update">
<h1>비밀번호 수정</h1>
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
		<td>
		현재 비밀번호 <input type="text" name ="corrPass" />
		수정할 비밀번호 <input type="text" name="changePass"/>
		</td>
	</tr>
	<tr>
		<td>주민번호</td>
		<td>${member.ssn}</td>
	</tr>
</table>
</div>