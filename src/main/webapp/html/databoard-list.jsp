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
            <h2>자료실</h2>
            <form method="get">
              <fieldset>
                <legend>게시물 검색</legend>
                <div class="board_search">
                  <div class="select_wrap">
                    <select name="searchField">
                      <option value="title">제 목</option>
                      <option value="content">내 용</option>
                      <option value="name">작성자</option>
                    </select>
                  </div>
                  <div class="search_wrap">
                    <input type="text" name="searchWord">
                    <button class="search_btn" type="submit">
                      <span class="blind">검색</span>
                    </button> 
                  </div>
                </div>
              </fieldset>
            </form>
            <div class="board_list">
              <table>
                <caption>
                  보도자료 테이블
                </caption>
                <thead>
                  <tr>
                    <th class="col1" width="100%">No</th>
                    <th class="col2" >제목</th>
                    <th  width="10%">작성자</th>
                    <th  width="10%">등록일</th>
                    <th  width="8%">조회수</th>
                    <th class="col6" width="8%">첨부</th>                    
                  </tr>
                </thead>
<!--                 <tr>
                  <td>2</td>
                  <td class="tit">
                    <a href="board-view.html">두번째 글이네요...</a>
                  </td>
                  <td>글쓴이2</td>
                  <td class="date">2024-07-15</td>
                  <td>30</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td class="tit">
                    <a href="board-view.html">첫번째 글입니다</a>
                  </td>
                  <td>글쓴이1</td>
                  <td class="date">2024-07-15</td>
                  <td>30</td>
                </tr> -->
<c:choose>
	<c:when test="${ empty boardLists }">
		<tr>
			<td colspan="6" align="center">
			등록된 게시물이 없습니다.
			</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${ boardLists }" var="row" varStatus="loop">
			<tr align="center">
			  <td>
			  	${ map.totalCount -(((map.pageNum-1) * map.pageSize) + loop.index) }
			  </td>
              <td class="tit">
                <a href="../databoard/view.do?idx=${ row.idx }">${ row.title }</a>
              </td>
              <td>${ row.name }</td>
              <td>${ row.visitcount }</td>
              <td class="date">${ row.postdate }</td>
              <td>
	            <c:if test="${ not empty row.ofile }">
	            	<a href="../databoard/download.do?ofile=${ row.ofile }&sfile=${ row.sfile }&idx=${ row.idx }">[Down]</a>
	            </c:if>
              </td>
                </tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
              </table>
    		  <table border="1" width="90%">
              	<tr align="center">
              	  <td>
                  ${ map.pagingImg }
                  </td>
              </table>
              
                <button type="button" class="write_btn"
                onclick="location.href='../databoard/write.do';" style=";">글쓰기</button>
                
              <!-- <div class="board_pagination">
                <a class="first page_btn" href="#"><span class="blind">첫페이지</span></a>
                <a class="prev page_btn" href="#"><span class="blind">이전</span></a>
                <span class="num active">1</span>
                <a class="num" href="#">2</a>
                <a class="num" href="#">3</a>
                <a class="num" href="#">4</a>
                <a class="num" href="#">5</a>
                <a class="next page_btn" href="#">
                  <span class="blind">다음</span>
                </a>
                <a class="last page_btn" href="#"><span class="blind">마지막페이지</span></a>
              </div> -->
            </div>
          </div>
        </div>
      </main>
      	<%@ include file="../inc/common_footer.jsp" %>

    </div>
  </body>
</html>
