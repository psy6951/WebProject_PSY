<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="../inc/common_head.jsp" %>
    

  <body>
    <div id="skip_navi">
      <a href="#container">본문바로가기</a>
    </div>
    <div id="wrap">
      <header id="header" class="sub_header">
        <div class="inner">
          <h1 class="logo">
            <a href="../main/index.do"><span class="blind">한국콜마</span></a>
          </h1>
          <nav class="gnb_wrap">
            <ul class="gnb">
              <li>
                <a href="#">COMPANY</a>
                <ul class="depth2">
                  <li><a href="#"><span>회사개요</span></a></li>
                  <li><a href="#"><span>인사말</span></a></li>
                  <li><a href="#"><span>연혁</span></a></li>
                  <li><a href="#"><span>경영철학</span></a></li>
                  <li><a href="#"><span>CI</span></a></li>
                  <li><a href="#"><span>오시는 길</span></a></li>
                </ul>
              </li>
              <li>
                <a href="#">BUSINESS</a>
                <ul class="depth2">
                  <li><a href="#">사업안내</a></li>
                  <li><a href="#">사업장 소개</a></li>
                  <li><a href="#">사업문의</a></li>
                  <li><a href="#">견학문의</a></li>
                  <li><a href="freeboard-list.html">자유게시판</a></li>
                  <li><a href="qnaboard-list.html">Q&A</a></li>
                  <li><a href="../databoard/list.do">자료실</a></li>                   
                </ul>
              </li>
              <li>
                <a href="#">R&amp;D</a>
                <ul class="depth2">
                  <li><a href="#">종합기술원</a></li>
                  <li><a href="#">연구성과</a></li>
                </ul>
              </li>
              <li>
                <a href="#">ESG</a>
                <ul class="depth2">
                  <li><a href="#">ESG</a></li>
                  <li><a href="#">환경경영</a></li>
                  <li><a href="#">사회공헌</a></li>
                  <li><a href="#">윤리경영</a></li>
                  <li><a href="#">인권경영</a></li>
                  <li><a href="#">컴플라이언스</a></li>
                  <li><a href="#">지배구조</a></li>
                  <li><a href="#">이니셔티브</a></li>
                  <li><a href="#">제보하기</a></li>
                </ul>
              </li>
              <li>
                <a href="release-list.html">PR</a>
                <ul class="depth2">
                  <li><a href="release-list.html">보도자료</a></li>
                  <li><a href="#">홍보영상</a></li>
                  <li><a href="#">광고</a></li>
                  <li><a href="#">콜마사랑</a></li>
                </ul>
              </li>
              <li>
                <a href="#">IR</a>
                <ul class="depth2">
                  <li><a href="#">재무정보</a></li>
                  <li><a href="#">주식정보</a></li>
                  <li><a href="#">공시정보</a></li>
                  <li><a href="#">보고서</a></li>
                  <li><a href="#">공고사항</a></li>
                </ul>
              </li>
            </ul>
          </nav>
          <div class="lang_wrap">
            <button class="lang_btn" type="button">KR</button>
            <ul class="lang">
              <li><a href="#">Korean</a></li>
              <li><a href="#">English</a></li>
              <li><a href="#">Chinese</a></li>
            </ul>
          </div>
<c:choose>
	<c:when test="${ not empty SessionId }">
	<!-- 세션영역에 속성이 있다면 로그인 상태임 -->
		<a href="../member/logout.do" 
			class="login" href="#" onclick="logout()">로그아웃</a>
	</c:when>
	<c:otherwise>
		<!-- 세션영역에 속성이 없다면 로그아웃인 상태임 -->
		<a href="../member/login.do" 
			class="login" href="../member/login.do">로그인</a>
	</c:otherwise>
</c:choose>
          <button type="button" class="open_btn">
            <span class="blind">메뉴열기</span>
          </button>
          <aside class="m_gnb_wrap">
            <div class="inner">
              <ul class="m_gnb">
                <li class="active">
                  <a href="#">COMPANY</a>
                  <ul class="depth2">
                    <li><a href="#"><span>회사개요</span></a></li>
                    <li><a href="#"><span>인사말</span></a></li>
                    <li><a href="#"><span>연혁</span></a></li>
                    <li><a href="#"><span>경영철학</span></a></li>
                    <li><a href="#"><span>CI</span></a></li>
                    <li><a href="#"><span>오시는 길</span></a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">BUSINESS</a>
                  <ul class="depth2">
                    <li><a href="#">사업안내</a></li>
                    <li><a href="#">사업장 소개</a></li>
                    <li><a href="#">사업문의</a></li>
                    <li><a href="#">견학문의</a></li>
                    <li><a href="freeboard-list.html">자유게시판</a></li>
                    <li><a href="qnaboard-list.html">Q&A</a></li>
                    <li><a href="../databoard/list.do">자료실</a></li>                     
                  </ul>
                </li>
                <li>
                  <a href="#">R&amp;D</a>
                  <ul class="depth2">
                    <li><a href="#">종합기술원</a></li>
                    <li><a href="#">연구성과</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">ESG</a>
                  <ul class="depth2">
                    <li><a href="#">ESG</a></li>
                    <li><a href="#">환경경영</a></li>
                    <li><a href="#">사회공헌</a></li>
                    <li><a href="#">윤리경영</a></li>
                    <li><a href="#">인권경영</a></li>
                    <li><a href="#">컴플라이언스</a></li>
                    <li><a href="#">지배구조</a></li>
                    <li><a href="#">이니셔티브</a></li>
                    <li><a href="#">제보하기</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">PR</a>
                  <ul class="depth2">
                    <li><a href="release-list.html">보도자료</a></li>
                    <li><a href="#">홍보영상</a></li>
                    <li><a href="#">광고</a></li>
                    <li><a href="#">콜마사랑</a></li>
                  </ul>
                </li>
                <li>
                  <a href="#">IR</a>
                  <ul class="depth2">
                    <li><a href="#">재무정보</a></li>
                    <li><a href="#">주식정보</a></li>
                    <li><a href="#">공시정보</a></li>
                    <li><a href="#">보고서</a></li>
                    <li><a href="#">공고사항</a></li>
                  </ul>
                </li>
              </ul>
            </div>
          </aside>
          <div class="dimmed_bg"></div>
        </div>
      </header>
      <main id="container" class="login_page sub_container">
        <div class="contents">
          <div class="inner">
          
<c:choose>
	<c:when test="${ empty SessionId }">
		<div class="login_area">    
			<h2>ID 로그인</h2>              
			<script>
			function validateForm(form) {
				if(!form.id.value){
					alert("아이디를 입력하세요.");
					form.id.focus();
					return false;
				}
				if (form.pass.value == "") {
					alert("패스워드를 입력하세요.");
					form.pass.focus();
					return false;
				}
			}
			</script>
							
			<form name="loginForm" method="post" onsubmit="return validateForm(this);">
			  <fieldset>
			    <legend>로그인</legend>
			    <div class="row input_wrap1">
			<input type="text" placeholder="아이디" name="id" >
			                  </div>
			                  <div class="row input_wrap2">
			<input type="password" placeholder="비밀번호" name="pass">
			                  </div>
			<input type="submit" class="login_btn" value="로그인" >
			                </fieldset>
			</form>
		</div>
	</c:when>
	<c:otherwise>
		<div class="login_area">
	        <h2 style="font-size: 25px;">🎉로그인 성공🎉</h2><br/>
	        <span> ${ SessionName } 회원님, 로그인하셨습니다.</span><br/><br/>
			<div style="display: flex; gap: 0 20px; justify-content: center ;">
				<a href="../member/editInfo.do" style="color: #276ef1; font-weight: 500;">[회원정보수정]</a>					
				<a href="logout.do" style="color: #276ef1; font-weight: 500;">[로그아웃]</a>
			</div>
		</div>
	</c:otherwise>
</c:choose>        
			<ul class="link_wrap">
              <li><a href="#">비밀번호 찾기</a></li>
              <li><a href="#">아이디 찾기</a></li>
              <li><a href="../member/signup.do">회원가입</a></li>
            </ul>  
            
              
            
            
          </div>
        </div>
      </main>
      
     <%@ include file="../inc/common_footer.jsp" %>
      

  
    </div>
  </body>
</html>
