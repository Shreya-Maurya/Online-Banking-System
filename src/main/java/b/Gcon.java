package b;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class Gcon
 */
@WebServlet("/Gcon")

	public class Gcon {
		private Gcon(){}

		public static Connection con;
		static{
			try {
				Class.forName(Db.DRIVER);
				con=DriverManager.getConnection(Db.CON_STRING,Db.USERNAME,Db.PASSWORD);
			} catch (ClassNotFoundException e) {
				
				e.printStackTrace();
			} catch (SQLException e) {
			
				System.out.println("Exception in GetCon");
			}
			
		}
		public static Connection getCon(){
			return con;
		}}


