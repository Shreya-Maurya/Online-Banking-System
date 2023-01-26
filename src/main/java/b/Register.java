package b;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	public static int register(String username,String password,String repassword,double amount,String adderess,double phone ) {
		// TODO Auto-generated method stub
		Connection con=Gcon.getCon();
		PreparedStatement ps;
		int status=0;
		try {
			ps = con.prepareStatement("Insert into NEWACCOUNT(USERNAME,PASSWORD,REPASSWORD,AMOUNT,ADDRESS,PHONE) values(?,?,?,?,?,?)");
			
		
			/*
			 * ps.setString(1,fname); ps.setString(2,lname);
			 */
			
			  ps.setString(1,username); ps.setString(2,password);
			  ps.setString(3,repassword); ps.setDouble(4,amount); ps.setString(5,adderess);
			  ps.setDouble(6,phone);
			 
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
		
	}

}
