<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="../inc/common_head.jsp" %>
    
    

<body>
  <div id="skip_navi">
    <a href="#container">본문바로가기</a>
  </div>
  <div id="wrap">
    <header id="header">
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
    <main id="container">
      <section class="main_video">
        <div class="inner">
          <h2 class="blind">메인비디오</h2>
          <video src="../asset/video/main3.mp4" autoplay muted loop playsinline></video>
      </div>
      </section>  
      <section class="main_company">
        <div class="inner">
          <div class="main_tit_wrap tit_wrap_company">
            <strong>Company</strong>
            <h2>No.1 Platform Service Provider</h2>
            <p>우수한 기술력과 품질수준을 바탕으로 체계적인 토털 서비스를 제공합니다.</p>
            <button class="more_btn" type="button">view more</button>
          </div>
          <div class="img_wrap">
            <a href="#"><img src="../asset/images/model.jpg" alt="모델"></a>
          </div>
          <div class="txt_wrap">
            <em><img src="../asset/images/com_ico1.jpg" alt="odm"><span>ODM</span></em>
            <p>국내 최초 화장품 ODM 기업</p>
            <em><img src="../asset/images/com_ico2.jpg" alt="cgmp" class="cgmp"><span>CGMP</span></em>
            <p>국내 1·2호 CGMP 적합업소 지정</p>
            <em><img src="../asset/images/com_ico3.jpg" alt="first"><span>First</span></em>
            <p>세계 최초 화장품 융합연구센터 설립</p>
          </div>
        </div>
      </section>
      <section class="main_inquiry">
        <h2 class="blind">메인문의</h2>
        <div class="inner">
          <ul class="inquiry_list">
            <li class="li1">
              <a href="#">
                <span>사업문의</span>
                <p>view more +</p>
              </a>
            </li>
            <li class="li2">
              <a href="#">
                <span>견학문의</span>
                <p>view more +</p>
              </a>
            </li>
          </ul>
        </div>
      </section>
      <section class="main_business">
        <h2 class="blind">메인비즈니스</h2>
        <div class="inner">
          <div class="main_tit_wrap tit_wrap_business">
            <strong>Business/R&D</strong>
            <h2>기술력은 한국콜마가 30년간 지속 성장한 핵심 동력입니다.</h2>
            <p>최첨단 설비로 이루어진 연구공간에서 세상에 없던 새로운 기술을 선보입니다.</p>
            <button class="more_btn" type="button">view more</button>
          </div>
          <div class="swiper_wrap">
            <div class="swiper">
              <div class="swiper-wrapper">
                <div class="swiper-slide slide1">
                    <div class="img_wrap"><img src="../asset/images/m3_2_1.jpg" alt="스킨케어 연구소"></div>
                    <div class="txt_wrap">
                      <strong>스킨케어 연구소</strong>
                      <p>국내외 수많은 화장품 브랜드의 근간이 되는 한국콜마의 기술력은 스킨케어 연구소에서 출발합니다.</p>
                    </div>
                </div>
                <div class="swiper-slide slide2">
                  <div class="img_wrap"><img src="../asset/images/m3_2_2.jpg" alt="메이크업 연구소"></div>
                  <div class="txt_wrap">
                    <strong>메이크업 연구소</strong>
                    <p>한국을 넘어 세계로 뻗어가고 있는 메이크업 연구소는 탁월한 품질의 화장품을 개발하고 있습니다.</p>
                  </div>
                </div>
                <div class="swiper-slide slide3">
                  <div class="img_wrap"><img src="../asset/images/m3_2_3.jpg" alt="퍼스널케어 연구소"></div>
                  <div class="txt_wrap">
                    <strong>퍼스널케어 연구소</strong>
                    <p>헤어부터 바디까지 소비자의 퍼스널케어를 위한 제품을  깐깐하게 연구하고 실험하며 소비자의 라이프스타일을  업그레이드하고 있습니다.</p>
                  </div>
                </div>
                <div class="swiper-slide slide4">
                  <div class="img_wrap"><img src="../asset/images/m3_2_4.jpg" alt="유브이테크이노베이션 연구소"></div>
                  <div class="txt_wrap">
                    <strong>유브이테크이노베이션 연구소</strong>
                    <p>유브이테크이노베이션연구소는 선케어 제품의 혁신을 이끌어온 기술력을 바탕으로 자외선 차단 성능이 우수한 독자적인 소재를 개발하는 등 국내 선케어 시장을 리딩하는 미래기술 개발에 박차를 가하고 있습니다.</p>
                  </div>
                </div>      
                <div class="swiper-slide slide5">
                  <div class="img_wrap"><img src="../asset/images/m3_2_5.jpg" alt="융합기술 연구소"></div>
                  <div class="txt_wrap">
                    <strong>융합기술 연구소</strong>
                    <p>탁월한 창의성과 전문성을 지닌 각 분야의 연구원들이 다양한 기술 시너지를 통해 기술적 혁신을 추구합니다.</p>
                  </div>
                </div>    
                <div class="swiper-slide slide6">
                  <div class="img_wrap"><img src="../asset/images/m3_2_6.jpg" alt="피부천연물 연구소"></div>
                  <div class="txt_wrap">
                    <strong>피부천연물 연구소</strong>
                    <p>고부가가치 소재를 개발하며, 소비자가 믿고 사용할 수 있도록 피부임상 및 각종 시험을 통해 제품의 안전성을 확보합니다.</p>
                  </div>
                </div>     
                <div class="swiper-slide slide7">
                  <div class="img_wrap"><img src="../asset/images/m3_2_7.jpg" alt="바이옴 연구소"></div>
                  <div class="txt_wrap">
                    <strong>바이옴 연구소</strong>
                    <p>혁신 생명소재 발굴과 플랫폼기술을 구축하여 그룹 내 화장품, 건강기능식품 및 의약품 개발에 적용할 수 있는 미래원천기술을 연구합니다.</p>
                  </div>
                </div>  
                <div class="swiper-slide slide8">
                  <div class="img_wrap"><img src="../asset/images/m3_2_8.jpg" alt="식품과학 연구소"></div>
                  <div class="txt_wrap">
                    <strong>식품과학 연구소</strong>
                    <p>식품과학연구소는 고도화된 제형기술과 포장기술을 원천기술로 보유하여 고객맞춤형 제품을 개발합니다.</p>
                  </div>
                </div>  
                <div class="swiper-slide slide9">
                  <div class="img_wrap"><img src="../asset/images/m3_2_9.jpg" alt="향료 연구센터"></div>
                  <div class="txt_wrap">
                    <strong>향료 연구센터</strong>
                    <p>최고의 향료연구원들이 화장품뿐만 아니라 의약품, 건강기능식품까지 고객의 감성을 터치할 수 있는 향기를 개발하고 연구합니다.</p>
                  </div>
                </div>           
                <div class="swiper-slide slide10">
                  <div class="img_wrap"><img src="../asset/images/m3_2_10.jpg" alt="분석센터"></div>
                  <div class="txt_wrap">
                    <strong>분석센터</strong>
                    <p>최고의 기술력이 담겨진 제품의 완성을 위한 품질요소를 검증하고 분석하는 연구전문 조직입니다. 산업에서 요구하는 규제사항의 극복과 잠재적인 위해요소 관리, 그리고 제품 실증 연구를 수행함으로써 제품의 품질 무결점을 추구하고 있습니다.</p>
                  </div>
                </div>     
              </div>
              <div class="swiper-button-prev arrow_btn"></div>
              <div class="swiper-button-next arrow_btn"></div>
            </div>
          </div>
        </div>
      </section>
      <section class="main_banner">
        <h2 class="blind">메인배너</h2>
        <div class="inner">
          <span>“Delivering happiness with healthy beauty”</span>
        </div>
      </section>
      <section class="main_esg">
        <div class="inner">
          <div class="main_tit_wrap tit_wrap_esg">
            <strong>ESG</strong>
            <h2>지속가능한 경영을 통해 사회에 <br>공헌하는 기업이 되겠습니다.</h2>
            <p>사회의 한 구성원으로 함께 성장해 나가야 한다는 굳은 신념을 바탕으로 최선의 노력을 다합니다.</p>
            <button class="more_btn" type="button">view more</button>
          </div>
          <div class="esg esg1">

            <div class="txt_wrap">
              <h3>환경경영</h3>
              <em>Environmental Management</em>
              <p>World First Class R&D · 제조 전문기업을 지향하기 위한 환경 및 안전보건 경영 시스템을 준수합니다.</p>
            </div>
          </div>
          <div class="esg esg2">
            
            <div class="txt_wrap">
              <h3>사회공헌</h3>
              <em>Social Contribution</em>
              <p>우리사회 곳곳을 온정의 손길로 어루만져 따뜻한 기운이 움틀 수 있도록 돕고 있습니다.</p>
            </div>

          </div>
          <div class="esg esg3">
             
            <div class="txt_wrap">
              <h3>지배구조</h3>
              <em>Corporate Governance</em>
              <p>이사회와 전문 경영진 간의 견제와 균형이 조화를 이루는 선진형 지배구조 구축을 위해 지속적으로 노력하고 있습니다.</p>
            </div>
          </div>
        </div>
      </section>
      <section class="main_news">
        <div class="inner">
          <h2 class="blind">news</h2>
          <div class="news_left news">
            <h3><a href="release-list.html">공고사항</a></h3>
            <ul class="news_list">
              <li>
                <a href="release-view.html">
                  <p class="tit">한국콜마 제12기 정기주주총회 소집공고(위임장 첨부)</p>
                  <p class="txt">제12기 정기주주총회 소집통지서<br>삼가 주주 여러분의 건승과 일익 번창하심을 기원합니다.</p>
                  <span class="date">2024-03-12</span>                
                </a>
              </li>
              <li>
                <a href="release-view.html">
                  <p class="tit">한국콜마 제12기 정기주주총회 주주확정 기준일 공고</p>
                  <p class="txt">상법 제354조 및 당사 정관 제13조에 의거, 한국콜마 제12기(2023.01.01~2023.12.31) 정기주주총회의 주주확정 기준일을 아래와 같이 공고합니다.</p>
                  <span class="date">2023-12-12</span>               
                </a>
              </li>
            </ul>
          </div>
          <div class="news_right news">
            <h3><a href="release-list.html">보도자료</a></h3>
            <ul class="news_list">
              <li>
                <a href="release-view.html">
                  <p class="tit">한국콜마, 獨더마테스트와 화장품 효능 평가법 개발한다</p>
                  <p class="txt">한국콜마, 獨더마테스트와 화장품 효능 평가법 개발한다 -‘더마테스트 인증마크’ 시험 평가법 개발하기 위한 업무협약 체결</p>
                  <span class="date">2024-03-18</span>                
                </a>
              </li>
              <li>
                <a href="release-view.html">
                  <p class="tit">한국콜마, 종이스틱 디자인 빛났다…iF디자인 어워드 수상</p>
                  <p class="txt">한국콜마, 종이스틱 디자인 빛났다…iF디자인 어워드 수상 -용기 전체 친환경 소재로 구성…심미성·지속가능성에 높은 평가</p>
                  <span class="date">2024-03-15</span>                
                </a>
              </li>
            </ul>
          </div>
      </div>
      </section>


    </main>
    
	<%@ include file="../inc/common_footer.jsp" %>
    
  </div>
</body>
</html>