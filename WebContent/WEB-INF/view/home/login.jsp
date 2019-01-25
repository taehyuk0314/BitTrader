<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그룹웨어</title>
<link rel="stylesheet" href="resources/css/style.css" />
</head>
<body>
<div style="width: 100%">
<section>
<article>
	<h1 id="title">회원 전용 시스템</h1>
	<table id ="login-outer-tab">
		<tr>
			<td colspan="5">
				<form id="login-form">

					<table id="login-inner-tab">
						<tr>
							<td><input id="uid" name="uid"
									type ="text"  placeholder="ID" tabindex="1" />
							</td>
							<td rowspan="2">
								<button id="login-btn">LOGIN</button>
							</td>
						</tr>
						<tr>
							<td><input id="upass" name="upass"
								type="password"  placeholder="PASSWORD" tabindex="2"/>
								<input type="hidden" name="cmd" value="login" />
								<input type="hidden" name="dir" value="home" />
								<input type="hidden" name="dest" value="welcome" />
							</td>
						</tr>
					</table>
				
				</form>
				<a id="admin-link" href="#">관리자</a>
				<a id="join-link" href="#">회원가입</a>
			</td>
		</tr>
	</table>
</article>
</section>
	<button onclick="move()">테스트</button>
</div>
<script>
	var submit = document.getElementById("login-btn");
	submit.addEventListener('click',function(){
	var uid = document.getElementById("uid");
	var upass = document.getElementById("upass");
	
	if(uid.value===""&&upass.value===""){
		alert('아이디 입력값이 없어요');
	}else{
		alert('아이디 입력값이 있어요');
		var form = document.getElementById("login-form");
		form.action ="home.do";
		form.method ="post";
		form.submit();
	}
	})
 	document.getElementById('join-link')
	.addEventListener('click',function(){       
		alert('회원가입 클릭');
		location.assign('home.do?dest=join-form');
	});  
	//클릭이벤트(move())이면 즉시실행됨   move이면 클릭이벤트가 리스닝된다
		 //'click',function(){} 하면 콜백함수가 호출된다
</script>
</body>
</html>
