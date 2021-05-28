package ch14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import ch14.bean.Employee;

/**
 * Servlet implementation class JDBC11Servlet
 */
@WebServlet("/JDBC11Servlet")
public class JDBC11Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC11Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("eid");
		Employee emp = executeJDBC(id);
		
		
		request.setAttribute("emp", emp);
		
		String path = "/ch14/jdbc11.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	private Employee executeJDBC(String id) {
		
		Employee emp = null;
		
		String sql = "SELECT * FROM Employees WHERE EmployeeID = " + id;
		
		String url = "jdbc:mysql://3.34.139.64/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";
		
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {	
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			// 연결
			con = DriverManager.getConnection(url, user, password);//외워야함 중요
		
			// statement 생성
			stmt = con.createStatement();
		
			//쿼리 실행, 결과
			rs = stmt.executeQuery(sql); //쿼리 실행 과 결과 탐색만 잘 복사해서 쓰면됨
		
			// 결과  탐색
			if (rs.next()) {    //커서를 이동
				
				String eid = rs.getString(1);
				String lastName = rs.getString(2);
				String firstName = rs.getString(3);
				
				
				
				emp = new Employee();
				emp.setId(eid);
				emp.setLastName(lastName);
				emp.setFirstName(firstName);
			}
				
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		return emp;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
