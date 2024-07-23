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
                  <li>
                    <a href="/about/summary.php"><span>회사개요</span></a>
                  </li>
                  <li>
                    <a href="/about/ceo.php"><span>인사말</span></a>
                  </li>
                  <li>
                    <a href="/about/history.php"><span>연혁</span></a>
                  </li>
                  <li>
                    <a href="/about/philosophy.php"><span>경영철학</span></a>
                  </li>
                  <li>
                    <a href="/about/ci.php"
                      ><span class="eng_Roboto">CI</span></a>
                  </li>
                  <li>
                    <a href="/about/location.php"><span>오시는 길</span></a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#">BUSINESS</a>
                <ul class="depth2">
                  <li><a href="/businessinfo/info.php">사업안내</a></li>
                  <li><a href="/businessinfo/korea.php">사업장 소개</a></li>
                  <li><a href="/businessinfo/business.php">사업문의</a></li>
                  <li><a href="/businessinfo/inquiry2.php">견학문의</a></li>
                  <li><a href="freeboard-list.html">자유게시판</a></li>
                  <li><a href="qnaboard-list.html">Q&A</a></li>
                  <li><a href="../databoard/list.do">자료실</a></li>                
                </ul>
              </li>
              <li>
                <a href="#">R&amp;D</a>
                <ul class="depth2">
                  <li><a href="/rd/total.php">종합기술원</a></li>
                  <li><a href="/rd/result.php">연구성과</a></li>
                </ul>
              </li>
              <li>
                <a href="#">ESG</a>
                <ul class="depth2">
                  <li><a href="/esg/esg.php">ESG</a></li>
                  <li><a href="/esg/environment.php">환경경영</a></li>
                  <li><a href="/esg/contribution.php">사회공헌</a></li>
                  <li><a href="/esg/ethics.php">윤리경영</a></li>
                  <li><a href="/esg/ethics2.php">인권경영</a></li>
                  <li><a href="/esg/compliance.php">컴플라이언스</a></li>
                  <li><a href="/esg/governance.php">지배구조</a></li>
                  <li><a href="/esg/initiative.php">이니셔티브</a></li>
                  <li><a href="#">제보하기</a></li>
                </ul>
              </li>
              <li>
                <a href="release-list.html">PR</a>
                <ul class="depth2">
                  <li><a href="release-list.html">보도자료</a></li>
                  <li><a href="/pr/prmovie.php">홍보영상</a></li>
                  <li><a href="/pr/ad.php">광고</a></li>
                  <li><a href="/pr/kolmarlove.php">콜마사랑</a></li>
                </ul>
              </li>
              <li>
                <a href="#">IR</a>
                <ul class="depth2">
                  <li><a href="/ir/finance.php">재무정보</a></li>
                  <li><a href="/ir/stock.php">주식정보</a></li>
                  <li><a href="/ir/disclosure.php">공시정보</a></li>
                  <li><a href="/ir/inquiry.php">보고서</a></li>
                  <li><a href="/ir/directorate.php">공고사항</a></li>
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
			class="login" href="../member/logout.do">로그아웃</a>
	</c:when>
	<c:otherwise>
		<!-- 세션영역에 속성이 없다면 로그아웃인 상태임 -->
		<a href="../member/login.do" 
			class="login" href="../member/login.do ">로그인</a>
			
	</c:otherwise>	
</c:choose>  
          <button type="button" class="open_btn">
            <span class="blind">메뉴열기</span>
          </button>
          <aside class="m_gnb_wrap">
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
          </aside>
        </div>
      </header>
      <main id="sub_container" class="release sub_container">
        <div class="sub_visual">
          <div class="inner">
            <h2>BUSINESS</h2>
            <p>
              제품 기획과 개발, 그리고 마케팅 솔루션까지. 
              <br>한국콜마가 그 연결의 플랫폼이 되겠습니다.
            </p>
          </div>
        </div>
        <div class="sub_lnb">
          <ul class="lnb lnb_pr">
            <li><a href="#""><span>사업안내</span></a>
            </li>
            <li><a href="#"><span>사업장 소개</span></a></li>
            <li><a href="#"><span>사업문의</span></a></li>
            <li><a href="#"><span>견학문의</span></a></li>
            <li><a href="freeboard-list.html"><span>자유게시판</span></a></li>
            <li><a href="qnaboard-list.html"><span>Q&A</span></a></li>
            <li class="active"><a href="../databoard/list.do"><span>자료실</span></a></li>         
          </ul>
        </div>
        <div class="board contents">
          <div class="inner">
            <div class="board_view">
              <div class="view_tit">
                <h3>${ dto.title }</h3>
                <span>${ dto.name }</span>
                <span>${ dto.postdate }</span>
                <span>${ dto.visitcount }</span>
              </div>
              <div class="view_con">
              ${ dto.content }
              
<c:if test="${ not empty dto.ofile }">
	<br/>
	<c:choose>
		<c:when test="${ mimeType eq 'img' }">
			<img src="../Uploads/${ dto.sfile }" style="max-width:600px;" />
		</c:when>
		<c:when test="${ mimeType eq 'audio' }">
			<audio controls ="controls">
			<source="../Uploads/${ dto.sfile }" type="audio/mp3" />
			</audio>
		</c:when>
		<c:when test="${ mimeType eq 'video' }">
			<video src="../Uploads/${ dto.sfile }" controls /></video>
		</c:when>
	</c:choose>
</c:if>
              
              
              </div>
              <div class="correctdelete">
                <button class="correct" type="button" onclick="../databoard/edit.do""><span>수정</span></button>
                <button class="delete" type="button"><span>삭제</span></button>
              </div>
              <div class="view_paging">
                <button class="next" type="button"><span>다음글</span></button>
                <button class="list" type="button"><a href="../databoard/list.do"><span>목록</span></a></button>
              </div>
            </div>
          </div>
        </div>
      </main>
           	<%@ include file="../inc/common_footer.jsp" %>
     
    </div>
  </body>
</html>
