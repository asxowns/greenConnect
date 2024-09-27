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


.boardList{
	padding:20px;
}
.boardList ul li{
	margin-bottom:20px;
}

.searchBox{
	margin-bottom:20px;
}
.searchBox form{
	display:flex;
	justify-content:center;
	margin:0;
	padding:0;
}
.searchBox input[type="text"]{
	width:140px;
	height:35px;
	border:1px solid #ccc;
	border-radius:5px 0 0 5px;
	box-sizing:border-box;
	padding-left:5px;
}
.searchBox input[type="text"]:focus{
	outline:none;
	border:1px solid #0091DB;
}
.searchBox input[type="submit"]{
	width:47px;
	height:35px;
	border:none;
	border-radius:0 5px 5px 0;
	background:#0091DB;
	color:#fff;
	cursor:pointer;
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
					<div class="myPage">
						<a href="/my/myPageMain">마이 페이지</a>
					</div>
					<div class="sendDm">
						<a href="#" onclick="return openDmWindow();">쪽지 보내기</a>
					</div>
					<div class="searchBox">
						<form>
							<input type="text">
							<input type="submit" value="검색" id="submitBtn">
						</form>
					</div>
				</div>
			</div>
			
			<div class="boardList">
				<ul>
					<li><a href="#">자유게시판</a></li>
					<li><a href="#">취업/면접 후기</a></li>
					<li><a href="#">직장 후기</a></li>
					<li><a href="#">꿀팁 게시판</a></li>
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