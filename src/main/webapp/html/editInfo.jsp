<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.JDBConnect"%>
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
            <a href="index.jsp"><span class="blind">한국콜마</span></a>
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
                  <li><a href="databoard-list.html">자료실</a></li>                   
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
                    <li><a href="databoard-list.html">자료실</a></li>                     
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
            <div class="login_area">
            <h2>회원정보 수정</h2>
            <script>
		 	function validateForm(form) {
				if(false){
					alert("아이디를 입력하세요.");
					form.id.focus();
					return false;
				}
				if (false) {
					alert("패스워드를 입력하세요.");
					form.pass.focus();
					return false;
				}
			} 
			</script>
            <form action="" method="post" name="editInfo" onsubmit="return validateForm(this);">
            <label for="id">아이디:&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="id" name="id" required value="${ SessionId }" readonly style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;"><br><br> 
            <label for="name">이름:&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="name" name="name" required value="${ SessionName }" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;"><br><br>
            <label for="pass">비밀번호:&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="pass" name="pass" required value="${ SessionPass }" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;"> <br><br> 
            <label for="phone">전화번호:&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="phone" name="phone" required value="${ SessionPhone }" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;"> <br><br>   
            <label for="email">이메일:&nbsp;&nbsp;&nbsp;</label>
            <input type="email" id="email" name="email" required value="${ SessionEmail }" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;"> <br><br>
            
            <input class="login_btn" type="submit" value="수정하기" >
            </form>
              
            
  

<%-- 
            
            
             <%
	        // 로그인 여부 확인
	        String userId = (String) session.getAttribute("UserId");
	        if (userId == null) {
	            response.sendRedirect("login.jsp");
	            return;
	        }
	
	        // 데이터베이스에서 사용자 정보 가져오기
	        String name = "", phone = "", email = "";
	        try (JDBConnect jdbc = new JDBConnect();
	             Connection conn = jdbc.getConnection();
	             PreparedStatement psmt = conn.prepareStatement("SELECT name, phone, email FROM member WHERE id = ?")) {
	
	            psmt.setString(1, userId);
	            try (ResultSet rs = psmt.executeQuery()) {
	                if (rs.next()) {
	                    name = rs.getString("name");
	                    phone = rs.getString("phone");
	                    email = rs.getString("email");
	                }
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        %> --%>
	   <%--  <form action="editProfileProcess.jsp" method="post">
	        <label for="name">이름:</label>
	        <input type="text" id="name" name="name" value="<%= name %>" required><br><br>
	        
	        <label for="phone">전화번호:</label>
	        <input type="text" id="phone" name="phone" value="<%= phone %>" required><br><br>
	        
	        <label for="email">이메일:</label>
	        <input type="email" id="email" name="email" value="<%= email %>" required><br><br>
	        
	        <button type="submit">수정하기</button>
	    </form> --%>
          <%--   
<form action="editInfoProcess.jsp" method="post">
		    	<label for="id">아이디:&nbsp;&nbsp;&nbsp;</label>
		    	<input type="id" id="id" name="id" value="<%= id %>" style="border: none; padding: 0 20px; height: 35px;" readonly required><br><br>
		    	
		        <label for="name">이름:&nbsp;&nbsp;&nbsp;</label>
		    	<input type="name" id="name" name="name" value="<%= name %>" style="border: none; padding: 0 20px; height: 35px;" readonly required><br><br>
		    	
		    	<label for="password">비밀번호:&nbsp;&nbsp;&nbsp;</label>
		        <input type="password" id="password" name="password" value="<%= pass %>" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;" required><br><br>
		    
		        <label for="phone">전화번호:&nbsp;&nbsp;&nbsp;</label>
		        <input type="tel" id="phone" name="phone" value="<%= phone %>" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 70%; height: 35px;" required><br><br>
		        
		        <label for="email">이메일:&nbsp;&nbsp;&nbsp;</label>
		        <input type="email" id="email" name="email" value="<%= email %>" style="border: 2px solid #c6c6c6; padding: 0 20px; width: 75%; height: 35px;" required><br><br>
		        
		        <input class="login_btn" type="submit" value="수정하기" />
		    </form>            
             --%>
            
            
            
            </div>
            
          </div>
        </div>
      </main>

      	<%@ include file="../inc/common_footer.jsp" %>

    </div>
  </body>
</html>
