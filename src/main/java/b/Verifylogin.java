package b;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * Servlet implementation class Verifylogin
 */
@WebServlet("/Verifylogin")
public class Verifylogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Verifylogin() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static boolean checkLogin(int accountno,String username,String password){
    	boolean status=false;
    	Connection con=Gcon.getCon();
    	try {
    		//PreparedStatement ps=con.prepareStatement("Select * from MAILCASTINGUSER where EMAILADD = ? and PASSWORD =?");
    		PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno=? and username = ? and password =?");
    		ps.setInt(1,accountno);
    		ps.setString(2,username);
    		ps.setString(3,password);
    		
    		ResultSet rs=ps.executeQuery();
    		status=rs.next();
    		
    	} catch (SQLException e) {
    		e.printStackTrace();
    	}
    	return status;
}}
