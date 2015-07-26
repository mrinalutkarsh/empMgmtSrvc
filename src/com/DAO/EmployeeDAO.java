package com.DAO;

//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//import java.io.PrintWriter;
import com.model.EmployeeVO;
import com.util.DBUtil;

public class EmployeeDAO {
	public boolean employeePresent(EmployeeVO emp){
		System.out.println("Inside employeePresent method");
		Connection con=DBUtil.getConnection();
		
		
		PreparedStatement pstmt;
		try {
			pstmt = con.prepareStatement("select Emp_fname from Employee where Emp_id=?");
			pstmt.setInt(1, emp.getEmp_id());
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}return false;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}return false;
	}
	/*public String getEmployee(EmployeeVO emp){
		try{
			Connection con=DBUtil.getConnection();
			PreparedStatement pstmt = con.prepareStatement("select Emp_password,Emp_fname from Employee where Emp_id=?");

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				pwd = rs.getString(1);
				firstName=rs.getString(2);
				System.out.println(pwd);

				System.out.println(firstName);
				//pageContext.setAttribute("fname",fname,pageContext.APPLICATION_SCOPE);
				//request.setAttribute("fname", firstName);


			//PreparedStatement pstmt2=con.prepareStatement("select Emp_id from Employee where )
			}

		}catch (SQLException e) {
			e.printStackTrace();
		}
		return "something";
	}*/
	public boolean addEmployee(EmployeeVO emp){
		System.out.println("Inside addEmployee method");
		try{
			
			Connection con=DBUtil.getConnection();
			System.out.println("Connection established!");
			PreparedStatement ps=con.prepareStatement("insert into Employee values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1,emp.getEmp_id());
			ps.setString(2,emp.getEmp_fname());
			ps.setString(3,emp.getEmp_mname());
			ps.setString(4,emp.getEmp_lname());
			ps.setString(5,emp.getEmp_dob());
			ps.setString(6,emp.getEmp_doj());
			ps.setString(7,emp.getEmp_status());
			ps.setString(8, emp.getEmp_pwd());
			
			
			int i=ps.executeUpdate();
			System.out.println("Values updated in the database.");
			if(i>0){
				return true;
			}
			return false;
		}catch (Exception e) { 
			e.printStackTrace();
			
		}return false;
	}
	public boolean updateEmployee(EmployeeVO emp){
		System.out.println("Inside updateEmployee method");
		try{
			Connection con=DBUtil.getConnection();
			System.out.println("Connection established!");
			PreparedStatement ps=con.prepareStatement("update Employee set Emp_id=?,Emp_fname=?,Emp_mname=?,Emp_lname=?,Emp_dob=?,Emp_doj=?,Emp_status=?,Emp_password=? where Emp_id=?;");
			ps.setInt(1,emp.getEmp_id());
			ps.setString(2,emp.getEmp_fname());
			ps.setString(3,emp.getEmp_mname());
			ps.setString(4,emp.getEmp_lname());
			ps.setString(5,emp.getEmp_dob());
			ps.setString(6,emp.getEmp_doj());
			ps.setString(7,emp.getEmp_status());
			ps.setString(8, emp.getEmp_pwd());
			ps.setInt(9,emp.getEmp_id());
			System.out.println("Setting values");
			int i=ps.executeUpdate();
			System.out.println("Values updated in the database.");
			if(i>0){
				System.out.println("done");
				return true;
			}
			return false;
		}catch (Exception e) { 
			e.printStackTrace();
			
		}return false;
		
	}
}
