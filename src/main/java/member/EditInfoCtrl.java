package member;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import membership.MemberDAO;
import membership.MemberDTO;

@WebServlet("/member/editInfo.do")
public class EditInfoCtrl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/html/editInfo.jsp").forward(req, resp);

    	// 현재 로그인된 사용자 정보를 세션이나 다른 방법으로 가져온다고 가정
//        String userId = (String) req.getSession().getAttribute("userId");
//
//        if (userId != null) {
//            ServletContext application = getServletContext();
//            MemberDAO memberDAO = new MemberDAO(application);
//            MemberDTO memberDTO = memberDAO.getMemberById(userId);
//
//            if (memberDTO != null) {
//                req.setAttribute("member", memberDTO);
//                req.getRequestDispatcher("/html/editInfo.jsp").forward(req, resp);
//            } else {
//                resp.sendRedirect("../member/login.do");
//            }
//        } else {
//            resp.sendRedirect("../member/login.do");
//        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 폼값 받기
        String id = req.getParameter("id");
        String pass = req.getParameter("pass");
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");

        // memberDTO 객체 생성 및 폼값 저장
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setId(id);
        memberDTO.setPass(pass);
        memberDTO.setName(name);
        memberDTO.setPhone(phone);
        memberDTO.setEmail(email);

        // application 내장객체를 서블릿 클래스에서 직접 얻어오기
        ServletContext application = getServletContext();
        // DAO 객체 생성 및 입력처리
        MemberDAO memberDAO = new MemberDAO(application);
        // 수정
        int result = memberDAO.updateMemberInfo(memberDTO);

        if (result == 1) {
            // 회원정보 수정 성공하면 성공 메시지와 함께 페이지로 이동
            resp.sendRedirect("../member/logout.do");
            
        } else {
            // 회원정보 수정 실패하면 실패 메시지와 함께 페이지로 재이동
            resp.getWriter().println("<script>alert('회원정보 수정 실패'); location.href='../member/login.do';</script>");
        }
    }
}
