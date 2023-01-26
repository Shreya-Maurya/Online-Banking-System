package b;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class St
 */
@WebServlet("/St")
public class St extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public St() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		
		
		  String username=request.getParameter("username"); 
		  String password=request.getParameter("password");
		  String  repassword=request.getParameter("repassword");
		  
		  String amoun=request.getParameter("amount"); 
		  double amount=Double.parseDouble(amoun);
		  
		  String adderess=request.getParameter("adderess");
		  
		  String ph=request.getParameter("phone"); double phone=Double.parseDouble(ph);
		 
		//double mname=Double.parseDouble(num);
		//String country=request.getParameter("country");
		
		int status = Register.register( username, password, repassword, amount, adderess,phone );
	   
	    
		if(status>0){
			out.print("WELCOME! YOUR ACCOUNT HAS OPENED");
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			//	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			//rd.include(request, response);
		}
		else{
			out.print("Sorry,Registration failed. please try later");
			RequestDispatcher rd=request.getRequestDispatcher("MyHtml.html");
			rd.include(request, response);
		}
		
	out.close();
	}



	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	/*
	 * protected void doPost(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub doGet(request, response); }
	 */

}
