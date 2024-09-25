<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등급 수정 페이지</title>
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
		<form enctype="multipart/form-data" method="post" action="/updateLevelUp">
			<input type="text" name="levelno" value="${levelup.levelno }" readonly>
			<input type="text" name="levelName" value="${levelup.levelName }">
			
			<div>
                <label for="levelIcon">레벨 아이콘:</label>
                <input type="file" id="levelIcon" name="levelIconFile" accept="image/*">
                <img id="imagePreview" src="${pageContext.request.contextPath}/images/${levelup.levelIcon}" alt="현재 아이콘">
            </div>
			
			<input type="text" name="rank" value="${levelup.rank }">
			<input type="text" name="description" value="${levelup.description }">
			<input type="submit" value="수정">
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