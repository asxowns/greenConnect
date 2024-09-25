<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등급 등록 페이지</title>
<style>
	main {
	width: 1100px;
	margin: 80px auto;
	display: flex;
	justify-content: space-between;
}

aside {
	width: 200px;
	height: 100%;
}

section {
	width: 880px;
	min-height: 800px;
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

table, tr, th, td{
	border-collapse:collapse;
	border:1px solid #ccc;
}

table{
	width:100%;
	margin:0 auto;
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
		<div>
			<h1>등급 관리</h1>
		</div>
		<form enctype="multipart/form-data" method="post" action="/insertLevelUp">
			<table>
				<tr>
					<th>등급 이름</th>
					<td><input type="text" name="levelName" placeholder="등급 이름"></td>
				</tr>
				<tr>
					<th>등급 아이콘</th>
					<td>
		                <label for="levelIcon">레벨 아이콘:</label>
		                <input type="file" id="levelIcon" name="levelIconFile" accept="image/*">
		                <img id="imagePreview" src="">
					</td>
				</tr>
				<tr>
					<th>등급 번호</th>
					<td><input type="text" name="rank" placeholder="등급 번호"></td>
				</tr>
				<tr>
					<th>등급 설명</th>
					<td><input type="text" name="description" placeholder="등급 설명"></td>
				</tr>
				<tr>
					<th colspan="2"><input type="submit" value="등록"></th>
				</tr>
			</table>
		</form>
	</section>
	
	</main>
	
	<footer>
		<%@include file="../about/footer.jsp"%>
	</footer>
	
	
	<script>
	document.getElementById('levelIcon').addEventListener('change', function(event) {
        const file = event.target.files[0];
        const imagePreview = document.getElementById('imagePreview');

        if (file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                imagePreview.src = e.target.result;
            };
            reader.readAsDataURL(file);
        } else {
            imagePreview.src = "${levelup.levelIcon}";
        }
    });
	</script>
	
	
	
	
</body>
</html>