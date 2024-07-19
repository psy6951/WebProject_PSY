package member;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import membership.MemberDAO;
import membership.MemberDTO;

@WebServlet("/member/signup.do")
public class SignupCtrl extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/html/signup.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//폼값 받기
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");

		//memberDTO 객체 생성 및 폼값 저장
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(id);
		memberDTO.setPass(pass);
		memberDTO.setName(name);
		memberDTO.setPhone(phone);
		memberDTO.setEmail(email);
		
		//application 내장객체를 섭르릿 클래스에서 직접 얻어오기
		ServletContext application = getServletContext();
		//DATO 객체 생성 및 입력처리
		MemberDAO memberDAO = new MemberDAO(application);
		
		
		//입력
		int result = memberDAO.memberRegister(memberDTO);
		if(result==1) {
			//회원가입 성공하면 로그인페이지로 이동
			resp.sendRedirect("../member/login.do");
		}
		else {
			//회원가입 실패하면 회원가입 페이지로 재이동
			resp.sendRedirect("../member/signup.do");

		}
		
		
		
		

		
	}
}


