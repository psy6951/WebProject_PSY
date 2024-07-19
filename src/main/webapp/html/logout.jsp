<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//로그아웃 처리1: session 영역의 속성명을 지정해서 삭제
session.removeAttribute("UserId");
session.removeAttribute("UserName");

/*로그아웃 처리2: session 영역 전체의 속성을 한꺼번에 삭제한다.
만약 회원인증 이외에 데이터가 있다면 조심해야 한다.*/
session.invalidate();


//로그아웃 처리 후 로그인페이지로 '이동'한다.
response.sendRedirect("login.jsp");


%>
<!-- 여기는 로그아웃 입니다.

<a href='../member/newRequest.tjoeun'>새로운 요청 처리하기</a> -->