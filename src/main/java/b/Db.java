package b;

import javax.servlet.annotation.WebServlet;

/**
 * Servlet implementation class Db
 */
@WebServlet("/Db")

	public interface Db {
		String DRIVER="com.mysql.jdbc.Driver";
		String CON_STRING="jdbc:mysql://localhost:3306/ONLINEBNK";
		String USERNAME="root";
		String PASSWORD="Shreya123#";
		}



