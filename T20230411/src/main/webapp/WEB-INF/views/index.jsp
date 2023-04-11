<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시작화면</title>
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
            <p>도서대여관리 프로그램</p>
        </div>
        <div>
            <p>국제 대여점의 도서등록, 대여정보 데이터베이스를 구축하고, 도서, DVD 대여관리를 위한 프로그램이다.</p>
        </div>
        <div>
            <p>1. 도서정보 테이블을 생성한다.</p>
            <p>2. 대여정보 테이블을 생성한다.</p>
            <p>3. 도서정보,대여정보 테이블에 제시된 문제지의 참조데이터를 추가 생성한다.</p>
            <p>4. 도서정보 입력 화면프로그램을 작성한다.</p>
            <p>5. 도서정보 조회 프로그램을 작성한다.</p>
            <p>6. 대여 정보 조회 프로그램을 작성한다.</p>
        </div>
    </div>
    <footer>
		<p>HRDKOREA Copyright&copy; 2016 All reserved. Human Resources Development Service of Korea.</p>
    </footer>
	
</body>
</html>