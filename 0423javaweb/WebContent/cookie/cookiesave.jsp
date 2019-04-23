<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 저장하기</title>
</head>
<body>
<!-- 쿠키를 이용해서 팝업 창 출력하기
쿠키가 있으면 팝업 창을 출격하지 않고 쿠키가 없으면 팝업창을 출력
쿠키의 이름은 popup	 -->
	<%
	//쿠키 생성
	Cookie cookie = new Cookie("id","ggangpae1");
	//쿠키 저장
	response.addCookie(cookie);
	//모든 쿠키를 가져옵니다.
	Cookie [] cookies = request.getCookies();
	//모든 쿠키들을 순회해서 popup 이라는 쿠키가 있는지 확인
	boolean flag = false;
	if(cookies!=null){
	for(Cookie imsi : cookies){
		if(imsi.getName().equals("popup")){
			flag=true;
			break;
			}
		}
	}
	//popup 이라는 쿠키가 없다면
	if(flag == false){
		//쿠키를 만들어서 저장하고 팝업창을 출력
		//쿠키 생성
		Cookie cookie1 = new Cookie("popup","data");
		//쿠키의 수명 설정 - 1분으로 설정
		cookie1.setMaxAge(60);
		
		//쿠키 저장
		response.addCookie(cookie1);
		//팝업창을 출력하는 자바스크립트 코드 작성
		out.print("<script>");
		out.print("window.open('http://www.google.com', 'google', 'width=400, height=400')");
		out.print("</script>");
		
	}

	%>
	<a href="cookiedisplay.jsp">쿠키 출력</a>
	
	<script>
	//세션 스토리에 저장 : 브라우저를 종료하면 삭제
	sessionStorage["popup"] ="data";
	//브라우저를 종료해도 내용이 남아있습니다.
	//쿠키처럼 사용하려면 저장시간도 같이 저장해야 한다.
	localStorage["popup"] ="data";
	
	</script>
	
	
	
	
	
</body>
</html>