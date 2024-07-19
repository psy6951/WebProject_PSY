package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import membership.MemberDAO;
import membership.MemberDTO;

@WebServlet("/member/login.do")
public class LoginCtrl extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/html/login.jsp").forward(req, resp);
	}
		
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//로그인 페이지에서 전송한 폼값 받기
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		
		MemberDAO memberDAO = new MemberDAO(getServletContext());
		MemberDTO dto = memberDAO.memberAuth(id, pass);
		
		if(dto.getId().equals("")) {
			//로그인 실패한 경우
			resp.sendRedirect("../member/login.do");
		}
		else {//로그인 성공한 경우 
			//서블릿에서 request 내장객체를 통해 session 내장객체를 얻어온다.
			HttpSession session = req.getSession();
			//세션 영역에 회원정보 저장
			session.setAttribute("SessionId", dto.getId());
			session.setAttribute("SessionName", dto.getName());
			session.setAttribute("SessionPass", dto.getPass());
			session.setAttribute("SessionPhone", dto.getPhone());
			session.setAttribute("SessionEmail", dto.getEmail());

			//메인화면으로 이동
			resp.sendRedirect("../member/login.do");
		}
	}

}
