<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 화면 </title> <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="dist/css/addstyle.css?ver=1">
</head>

<body class="logoin">
	<c:if test="${not empty param.login}">
		<c:if test="${not param.login }">
			<script>
				alert("로그인에 실패하셨습니다!");
			</script>
		</c:if>
	</c:if>
	<form action="${pageContext.request.contextPath }/reservationAll.do">
	    <div class="container">
	        <div class="input-form-backgroud row">
	            <div class="input-form col-md-12 mx-auto">
	                <h4 class="mb-3">로그인</h4>
	                <form class="validation-form" novalidate>
	                    <div class="mb-3"><label for="email">이메일</label> <input type="email" class="form-control" name="user_email" placeholder="you@example.com" >
	                    </div>
	                    <div class="mb-3"> <label for="email">비밀번호</label> <input type="password" class="form-control" name="user_pw"  >
	                     </div>
	                    <div class="mb-4"></div> <button class="btn btn-primary btn-lg btn-block" type="submit">로그인 하기</button>
	                </form>
	            </div>
	        </div>
	        <footer class="my-3 text-center text-small">
	            <p class="mb-1">&copy; 2021 home3</p>
	        </footer>
	    </div>
	</form>
</body>

</html>
