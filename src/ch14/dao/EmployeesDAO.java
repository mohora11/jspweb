package ch14.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ch14.bean.Employee;

public class EmployeesDAO {
	public Employee getEmployee(String id) {

		Employee employee = null; // 리턴할 객체

		String sql = "SELECT EmployeeID,"
				+ "          LastName,"
				+ " 		 FirstName,"
				+ " 		 Notes"
				+ " FROM Employees "
				+ " WHERE EmployeeID = ?";
		
		String url = "jdbc:mysql://3.34.139.64/test";
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);// 외워야함 중요

			// preparedstatement 생성
			stmt = con.prepareStatement(sql);

			// ? (파라미터)에 값 할당
			stmt.setString(1, id);
			

			// 쿼리 실행, 결과
			rs = stmt.executeQuery(); // 쿼리 실행 과 결과 탐색만 잘 복사해서 쓰면됨

			if (rs.next()) {
				employee = new Employee();
				employee.setId(id);
				employee.setLastName(rs.getString(2));
				employee.setFirstName(rs.getString(3));
				employee.setNotes(rs.getString(4));
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
			if(rs != null) {
				try {
					
				} catch (Exception e2) {
					// TODO: handle exception
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
		
		return employee;
	}
	public void deleteEmployee(String id) {
		String sql = "DELETE FROM Employees WHERE EmployeeID = ?";
		
		String url = "jdbc:mysql://3.34.139.64/test"; // 본인 ip
		String user = "root";
		String password = "wnddkdwjdqhcjfl1";

		Connection con = null;
		PreparedStatement stmt = null;

		try {
			// 클래스 로딩
			Class.forName("com.mysql.cj.jdbc.Driver");

			// 연결
			con = DriverManager.getConnection(url, user, password);

			// preparedStatement 생성
			stmt = con.prepareStatement(sql);
			
			// ? (파라미터)에 값 할당
			stmt.setString(1, id);

			// 쿼리 실행, 결과(ResultSet) 리턴
			int cnt = stmt.executeUpdate();

			if (cnt == 1) {
				System.out.println("삭제 성공");
			} else {
				System.out.println("삭제 실패");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 연결 닫기
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
		
	}
}
