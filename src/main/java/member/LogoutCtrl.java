package member;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/member/logout.do")
public class LogoutCtrl extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//서블릿에서 session 내장객체 얻어옴
		HttpSession session = req.getSession();
		
		//세션 영역의 속성을 이름을 지정해서 삭제
		session.removeAttribute("SessionId");
		session.removeAttribute("SessionName");
		
		//세션 영역의 모든 속성을 한꺼번에 삭제
		session.invalidate();
		
		//로그아웃 이후에는 메인으로 이동
		resp.sendRedirect("../main/index.do");
		
		//req.getRequestDispatcher("/html/logout.jsp").forward(req, resp);
	}

}

