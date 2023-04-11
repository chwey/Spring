<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<title>등록화면</title>
<style>
    header h2 {
        text-align: center;
        background-color: rgb(210, 210, 210);
        height: 50px;
        margin: 0;
    }
    header li {
        list-style-type: none;
        display: inline-block;
        margin-right: 25px;
        margin-top: 10px;
    }
    nav {
        background-color: black;
        color: white;
    }
    nav ul {
        height: 40px;
        margin: 0;
    }

    #container {
        padding: 20px;
    }

    #container .body_title {
        text-align: center;
        font-weight: 700;
    }
    #container .body_title p {
        font-size: 20px;
        font-weight: 700;
    }
    footer {
        background-color: rgb(210, 210, 210);
        color: white;
        text-align: center;
    }
</style>

</head>
<body>
	<header>
        <h2>도서대여관리</h2>
        <nav>
            <ul>
                <li>도서등록</li>
                <li>도서목록조회/수정</li>
                <li>대여현황조회</li>
                <li>홈으로</li>
            </ul>
        </nav>
    </header>
    <div id="container">
        <div class="body_title">
            <p>도서 등록</p>
        </div>
        <div>
          <form role="form" action="/register" method="post">
					<div class="form-group">
						<label>도서번호</label>
						<input class="form-control" type="text" readonly>
					</div>
					<div class="form-group">
						<label>도서명</label>
						<input class="form-control" type="text" name="bookName">
					</div>
					<div class="form-group">
						<label>도서표지</label>
						<input class="form-control" type="text" name="bookCoverimg">
					</div>
					<div class="form-group">
						<label>출판일자</label>
						<input class="form-control" type="date" name="bookDate">
					</div>
					<div class="form-group">
						<label>금액</label>
						<input class="form-control" type="text" name="bookPrice">
					</div>
					<div class="form-group">
						<label>출판사</label>
						<input class="form-control" type="text" name="bookPublisher">
					</div>
					<div class="form-group">
						<label>도서소개</label>
						<textarea class="form-control" name="bookInfo"></textarea>
					</div>
					<button type="submit" class="btn btn-default">등록</button>
					<button type="submit" class="btn btn-default">조회</button>
				</form>			  
        </div>
    </div>
    <footer>
		<p>HRDKOREA Copyright&copy; 2016 All reserved. Human Resources Development Service of Korea.</p>
    </footer>
	
</body>
</html>
