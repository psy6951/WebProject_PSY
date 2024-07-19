package membership;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class MemberDAO extends JDBConnect {

	//생성자1: 드라이버, 커넥션 URL 등 4개의 매개변수로 정의
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}

	//생성자2: application 내장객체를 매개변수로 정의
	public MemberDAO(ServletContext application) {
		super(application);
	}
	
	//회원가입을 위한 메서드 생성
	public int memberRegister(MemberDTO memberDTO) {
		String sql ="INSERT INTO member (id, pass, name, phone, email) "
				+ " VALUES (?, ?, ?, ?, ?)";
		
		int result =0; 
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, memberDTO.getId());
			psmt.setString(2, memberDTO.getPass());
			psmt.setString(3, memberDTO.getName());
			psmt.setString(4, memberDTO.getPhone());
			psmt.setString(5, memberDTO.getEmail());
			
			result = psmt.executeUpdate();
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//회원인증
	public MemberDTO memberAuth(String id, String pass) {
		String sql= "SELECT * FROM member WHERE id=? AND pass=?";
		MemberDTO dto = new MemberDTO();
		
		try {
			psmt = con.prepareStatement(sql);
			
			psmt.setString(1, id);
			psmt.setString(2, pass);
			
			rs= psmt.executeQuery();
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setPhone(rs.getString("phone"));
				dto.setEmail(rs.getString("email"));
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	
	
	
	public MemberDTO getMemberById(String id) {
	    MemberDTO member = null;
	    try {
	        String query = "SELECT * FROM member WHERE id=?";
	        PreparedStatement psmt = con.prepareStatement(query);
	        psmt.setString(1, id);
	        ResultSet rs = psmt.executeQuery();

	        if (rs.next()) {
	            member = new MemberDTO();
	            member.setId(rs.getString("id"));
	            member.setPass(rs.getString("pass"));
	            member.setName(rs.getString("name"));
	            member.setPhone(rs.getString("phone"));
	            member.setEmail(rs.getString("email"));
	        }

	        rs.close();
	        psmt.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return member;
	}
	
	 // 회원 정보를 업데이트하는 메서드 추가
    public int updateMemberInfo(MemberDTO memberDTO) {
        int result = 0;
        try {
            String query = "UPDATE member SET pass=?, name=?, phone=?, email=? WHERE id=?";
            PreparedStatement psmt = con.prepareStatement(query);
            psmt.setString(1, memberDTO.getPass());
            psmt.setString(2, memberDTO.getName());
            psmt.setString(3, memberDTO.getPhone());
            psmt.setString(4, memberDTO.getEmail());
            psmt.setString(5, memberDTO.getId());
            result = psmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }	

}
