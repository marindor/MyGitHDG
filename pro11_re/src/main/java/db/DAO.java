package db;

import java.sql.Connection; 
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DAO {
	private PreparedStatement pstmt;
	private Connection con;
	private DataSource dataFactory;
	
	//private static final String driver = "oracle.jdbc.driver.OracleDriver";
    //private static final String url = "jdbc:oracle:thin:@localhost:1521:orcl";
    //private static final String user = "scott";
    //private static final String pwd = "12341234";
	

	
	//private void connDB() {
		//try {
			//Class.forName(driver);
			//System.out.println("오라클 드라이버 로딩");
			//con = DriverManager.getConnection(url,user,pwd);
			//System.out.println("연결 생성");		
		//}
		//catch(Exception e) {
			//e.printStackTrace();
		//}
	//}
	
	public DAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context)ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
		//List<VO> list = new ArrayList<VO>();

			
			//connDB();
			//String query = "select*from t_member";
			//System.out.println("prepareStatement: " + query);
			//pstmt = con.prepareStatement(query);
			//ResultSet rs = pstmt.executeQuery();
			
			//while( rs.next() ) {
				//String id = rs.getString("id");
				//String pwd = rs.getString("pwd");
				//String name = rs.getString("name");
				//String email = rs.getString("email");
				//Date joinDate = rs.getDate("joinDate");
				//VO vo = new VO();
				//vo.setId(id);
				//vo.setPwd(pwd);
				//vo.setName(name);
				//vo.setEmail(email);
				//vo.setJoinDate(joinDate);
				//list.add(vo);
			//}
	
			//rs.close();
			//pstmt.close();
			//con.close();
			
		//}
		//catch(Exception e) {	
			//e.printStackTrace();
		//}
		
		//return list;
	public List listMembers(VO vo1) {
		List memberList = new ArrayList();
		String _name = vo1.getName();
		try {
			con = dataFactory.getConnection();
			String query = "select*from t_member";
			if((_name!=null && _name.length()!=0)) {
				query+=" where name=?";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, _name);
			}
			else {
				pstmt = con.prepareStatement(query);
			}
			
			System.out.println("preparedStatement: "+ query);
			ResultSet rs = pstmt.executeQuery();
			while( rs.next() ) {
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				Date joinDate = rs.getDate("joinDate");
				VO vo = new VO();
				vo.setId(id);
				vo.setPwd(pwd);
				vo.setName(name);
				vo.setEmail(email);
				vo.setJoinDate(joinDate);
				memberList.add(vo);
			}
		
			rs.close();
			pstmt.close();
			con.close();
		
		}
		catch(Exception e) {	
			e.printStackTrace();
		}
		return memberList;
	}
		
}	
