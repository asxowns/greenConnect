<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
<style>
main {
	width: 1100px;
	margin: 80px auto;
	display: flex;
	justify-content:space-between;
}

aside {
	width: 200px;
	border: 1px solid #ccc;
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

.userInfo {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 15px;
	padding: 20px 0;
}

.userInfo .userIcon {
	width: 50px;
	height: 50px;
	background: #d9d9d9;
	border-radius: 50%;
}

.searchBox {
	text-align: center;
}

.boardList {
	padding: 20px;
}

.boardList ul li {
	margin-bottom: 20px;
}
.boardList ul li:nth-child(3) a{
	color:#0091DB;
}
</style>
</head>
<body>

	<header>
		<%@include file="../about/header.jsp"%>
	</header>

	<main>
		<aside>
			<div class="aboutUser">
				<div class="userInfo">
					<p class="userIcon">
						<img src="">
					</p>
					<p>관리자</p>
				</div>
				<div class="funcInfo">
					<p class="searchBox">
						<input type="search">
					</p>
				</div>
			</div>

			<div class="boardList">
				<ul>
					<li><a herf="#">대시보드</a></li>
					<li><a herf="#">회원 관리</a></li>
					<li><a herf="#">등급 관리</a></li>
					<li><a herf="#">공지 관리</a></li>
				</ul>
			</div>
		</aside>

		<section>
			<p>메인 컨텐츠</p>
		</section>
	</main>

	<footer>
		<%@include file="../about/footer.jsp"%>
	</footer>

</body>
</html>