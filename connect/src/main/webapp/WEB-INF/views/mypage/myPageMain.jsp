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
	gap: 15px;
	padding: 20px;
	border-bottom:1px solid #eee;
}

.userInfo .userIcon {
	width: 50px;
	height: 50px;
	background: #d9d9d9;
	border-radius: 50%;
}
.userInfo .nameBirth h3{
	font-size:16px;
	font-weight:300;
	padding-bottom:2px;
}
.userInfo .nameBirth p{
	font-size:12px;
	color:#9d9d9d;
	font-weight:300;
}

.userState{
	padding:15px;
}
.userState p{
	display:flex;
	justify-content:space-between;
	font-size:12px;
	margin-bottom:8px;
}
.userState p span{
	color:#a7a7a7;
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
		<%@include file="../about/header.jsp"%>
	</header>

	<main>
		<aside>
			<div class="aboutUser">
				<div class="userInfo">
					<p class="userIcon">
						<img src="">
					</p>
					<div class="nameBirth">
						<h3>변지은</h3>
						<p>1994.09.21</p>
					</div>
				</div>
				<div class="userState">
					<p>
						새싹<img src="">
					</p>
					<p>
						방문<span>0</span>
					</p>
					<p>
						내가 쓴 게시글<span>0</span>
					</p>
					<p>
						내가 쓴 댓글<span>0</span>
					</p>
				</div>
				<div class="funcInfo">
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