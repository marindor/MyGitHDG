package pro13_re;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class javaBeanDAO {
///////////////////////////////////////////////////	
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
///////////////////////////////////////////////////	
	public javaBeanDAO() { //기본 생성자로 DB 연결은 미리 함
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
///////////////////////////////////////////////////	
	public List read_guys_member() { //회원정보를 가져와서 guys에 저장하는 SQL 포함 메서드
		List guys = new ArrayList();
		try {
			con = dataFactory.getConnection();
			String query = "select*from t_member order by joinDate desc";
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				
				JavaBeanVO vo = new JavaBeanVO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				guys.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return guys;
	}
///////////////////////////////////////////////////	
	public void addGuys (JavaBeanVO vo) {
		try {
			Connection con = dataFactory.getConnection();
			String id = vo.getId();
			String pwd = vo.getPwd();
			String name = vo.getName();
			String email = vo.getEmail();
			Date joinDate = vo.getJoinDate();
			String query = "insert into t_member";
			query += " (id,pwd,name,email)";
			query += " values(?,?,?,?)";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.setString(2,pwd);
			pstmt.setString(3,name);
			pstmt.setString(4,email);
			//pstmt.setDate(5,joinDate);//DB에서 자체 처리하게 default처리함
			pstmt.executeUpdate();
			pstmt.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
/////////////////////////////////////////////////////
	
}
