<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
main {
	width: 1100px;
	margin: 80px auto;
	display: flex;
	justify-content: space-between;
}

aside {
	width: 200px;
	height:100%;
}

section {
	width: 880px;
	min-height: 800px;
	border: 1px solid #ccc;
}

.aboutUser {
	border-top: 2px solid #000;
	border-bottom: 2px solid #000;
}

.userInfo{
	
}

.myPage{
	text-align:center;
}
.myPage a {
	width: 187px;
	height: 40px;
	background: #0091DB;
	text-align: center;
	border-radius: 5px;
	align-content: center;
	display: inline-block;
	color: #fff;
	font-size: 14px;
}

.sendDm{
	text-align:center;
}

.sendDm a {
	width: 187px;
	height: 40px;
	background: #EEEEEE;
	border: 1px solid #ccc;
	text-align: center;
	border-radius: 5px;
	align-content: center;
	display: inline-block;
	color: #000;
	font-size: 14px;
	margin:15px 0;
}

.searchBox{
	text-align:center;
}

.boardList{
	padding:20px;
}
.boardList ul li{
	margin-bottom:20px;
}
</style>
</head>
<body>

	<header>
		<%@include file="./about/header.jsp"%>
	</header>

	<main>
		<aside>
			<div class="aboutUser">
				<div class="userInfo">
					<p>
						<a href="joinForm">회원가입</a>
					</p>
					<p>
						<a href="loginForm">로그인</a>
					</p>
				</div>
				<div class="funcInfo">
					<p class="myPage">
						<a href="">마이 페이지</a>
					</p>
					<p class="sendDm">
						<a href="#" onclick="return openDmWindow();">쪽지 보내기</a>
					</p>
					<p class="searchBox">
						<input type="search">
					</p>
				</div>
			</div>
			
			<div class="boardList">
				<ul>
					<li><a herf="#">자유게시판</a></li>
					<li><a herf="#">취업/면접 후기</a></li>
					<li><a herf="#">직장 후기</a></li>
					<li><a herf="#">꿀팁 게시판</a></li>
				</ul>
			</div>
		</aside>

		<section>
			<p>메인 컨텐츠</p>
		</section>
	</main>

	<footer>
		<%@include file="./about/footer.jsp"%>
	</footer>



	<script>
		function openDmWindow() {
			// 새 창을 엽니다. 'dmWindow'는 창의 이름입니다.
			// 'width=400,height=600'는 창의 크기를 지정합니다. 필요에 따라 조절하세요.
			window.open('dmWindow', 'dmWindow',
					'width=416,height=600,resizable=yes,scrollbars=yes');
			return false; // 기본 링크 동작을 방지합니다.
		}
	</script>
</body>
</html>