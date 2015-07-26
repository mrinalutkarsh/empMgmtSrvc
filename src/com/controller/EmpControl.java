package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.EmployeeDAO;
import com.model.EmployeeVO;



public class EmpControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpControl() {
	}
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside EmpControlServlet!");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();


		int emp_id = Integer.parseInt(request.getParameter("EID"));
		String emp_password = request.getParameter("pwd");
		String emp_dob = request.getParameter("DOB");
		String emp_fname = request.getParameter("fName");
		String emp_doj = request.getParameter("DOJ");
		String emp_mname = request.getParameter("mName");
		String emp_status = request.getParameter("status");
		String emp_lname = request.getParameter("lName");



		EmployeeVO empV=new EmployeeVO();

		empV.setEmp_id(emp_id);
		empV.setEmp_pwd(emp_password);
		empV.setEmp_fname(emp_fname);
		empV.setEmp_mname(emp_mname);
		empV.setEmp_lname(emp_lname);
		empV.setEmp_dob(emp_dob);
		empV.setEmp_doj(emp_doj);
		empV.setEmp_status(emp_status);
		System.out.println("EmployeeVO updated!");
		EmployeeDAO empD=new EmployeeDAO();
		/*boolean res0=empD.employeePresent(empV);

//calling DAO methods based on the button clicked. (Here update and submit)	
		if (request.getParameter("submit1") != null) {
            myClass.function1();
        } else(request.getParameter("button2") != null) {
            myClass.function2();*/
		boolean res0=empD.employeePresent(empV);
		System.out.println("returned value of employeePresent method "+res0);
		if(res0){
			System.out.println("calling the updateEmployee method!");
			boolean res2=empD.updateEmployee(empV);
			System.out.println("The value returned from the updateEmployee method is "+res2);
			if(res2){
				out.print("<p style=\"color:green\">Successfully updated in the database!</p>");
				request.getRequestDispatcher("Employee.jsp").forward(request, response);
			}else{
				out.print("<p style=\"color:red\">Failed to update! Please try again. </p>");
				request.getRequestDispatcher("Employee.jsp").forward(request, response);
			}
		}else{
			System.out.println("calling the addEmployee method!");
			boolean res=empD.addEmployee(empV);
			System.out.println("The value returned from the addEmployee method is "+res);
			if(res){
				out.print("<p style=\"color:green\">Successfully added in the database!</p>");
				request.getRequestDispatcher("Employee.jsp").forward(request, response);
			}else{
				out.print("<p style=\"color:red\">Failed to add! Please try again. </p>");
				request.getRequestDispatcher("Employee.jsp").forward(request, response);
			}
		}

	}

}
