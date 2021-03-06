package kr.ac.kopo.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.util.ConnectionFactory;

public class MemberDAO {

	/**
		모든 회원 정보 조회
	 */
	public List<MemberVO> showAll(){
		
		List<MemberVO> list = new ArrayList();
		
		StringBuilder sql = new StringBuilder();
		sql.append("select id, name, email_id||'@'||email_domain as email, type, to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
		sql.append(" from t_member ");
		
		try(
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String type = rs.getString("type");
				String regDate = rs.getString("reg_date");
				
				MemberVO member = new MemberVO();
				member.setId(id);
				member.setName(name);
				member.setEmail(email);
				member.setType(type);
				member.setRegDate(regDate);
				
				list.add(member);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
		해당 id 회원 정보 조회
	 */
	public MemberVO showById(String ID) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("select id, name, password, email_id||'@'||email_domain as email,  ");
		sql.append(" tel1||'-'||tel2||'-'||tel3 as tel , post, basic_addr||', '||detail_addr as addr, type, to_char(reg_date, 'yyyy-mm-dd') as reg_date  ");
		sql.append(" from t_member ");
		sql.append("  where id = ? ");
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			pstmt.setString(1, ID);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				String password = rs.getString("password");
				String email = rs.getString("email");
				String tel = rs.getString("tel");
				String post = rs.getString("post");
				String addr = rs.getString("addr");
				String type = rs.getString("type");
				String regDate = rs.getString("reg_date");
				
				MemberVO member = new MemberVO(id, name, password, email, tel, post, addr, type, regDate);
				return member;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
		새로운 멤버 추가
	 */
	public void insertMember(MemberVO member) {
		
		StringBuilder sql = new StringBuilder();
		sql.append("insert into t_member(id, name, password, email_id, email_domain, tel1, tel2, tel3,  ");
		sql.append("  post, basic_addr, detail_addr)  ");
		sql.append("  values(?,?,?,?,?,?,?,?,?,?,?) ");
		
		
		try(
				Connection conn = new ConnectionFactory().getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			
			// 합쳐놓은 이메일을 다시 db에 집어 넣어주기 위해 분리
			String[] email = member.getEmail().split("@");
			String email_id = email[0];
			String email_domain = email[1];
			// 합쳐놓은 전화번호를 다시 db에 집어 넣어주기 위해 분리			
			String[] tel = member.getTel().split("-");
			String tel1 = tel[0];
			String tel2 = tel[1];
			String tel3 = tel[2];
			// 합쳐놓은 주소를 다시 db에 집어 넣어주기 위해 분리
			String[] addr = member.getAddr().split(", ");
			String basic_addr = addr[0];
			String detail_addr = addr[1];
			
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPassword());
			pstmt.setString(4, email_id);
			pstmt.setString(5, email_domain);
			pstmt.setString(6, tel1);
			pstmt.setString(7, tel2);
			pstmt.setString(8, tel3);
			pstmt.setString(9, member.getPost());
			pstmt.setString(10, basic_addr);
			pstmt.setString(11, detail_addr);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 로그인 하기
	 */
	public MemberVO login(MemberVO member) {
		
		StringBuilder sql = new StringBuilder();
		sql.append(" select id, password, name, type ");
		sql.append(" from t_member ");
		sql.append(" where id = ? and password = ? ");
		
		try (
			Connection conn = new ConnectionFactory().getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		) {
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getPassword());
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				MemberVO userVO = new MemberVO();
				
				userVO.setId(rs.getString("id"));
				userVO.setPassword(rs.getString("password"));
				userVO.setName(rs.getString("name"));
				userVO.setType(rs.getString("type"));
				
				return userVO;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
