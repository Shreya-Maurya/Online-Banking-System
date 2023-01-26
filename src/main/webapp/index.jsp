<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="b.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css">
<link href="style3.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>

<nav id="navbar">
        <div id="logo">
        <img src="img/logo1.jpg" alt ="public bank.com"> 
        </div>
        <ul>
        <li class="item"><a href="index.html">home</a></li>
        <li class="item"><a href="index.html">services</a></li>
        <li class="item"><a href="index.html">about us</a></li>
        <li class="item"><a href="index.html">contact us</a></li>
      
        </ul>
        </nav>
        <h1>WELCOME! YOUR ACCOUNT HAS OPENED</h1>
<%
try {
		    Connection con1=Gcon.getCon();
			//PreparedStatement ps1=con1.prepareStatement("Select max(accountno) from newaccount");
			PreparedStatement ps1=con1.prepareStatement("Select max(accountno) from newaccount");
           
            ResultSet rs1=ps1.executeQuery();
            while(rs1.next()){
				int  accountno=rs1.getInt(1);
				request.setAttribute("accountno",accountno);
				}
		    Integer accountno=(Integer)request.getAttribute("accountno");
			 Connection con=Gcon.getCon(); 
			PreparedStatement ps=con.prepareStatement("Select * from NEWACCOUNT where accountno='"+accountno+"'");
           // ps.setInt(1,accountno);
			ResultSet rs=ps.executeQuery();
			
			out.print("<table align='left'  cellspacing='5' cellpadding='5'>");
			out.print("<tr><th>ACCOUNT NO</th><th>USERNAME</th><th>AMOUNT</th><th>ADDRESS</th><th>PHONE</th></tr>");
			while(rs.next()){
				
				session.setAttribute("accountno",accountno);
				
				System.out.print(accountno);
				out.print("<tr>");
				out.print("<td>" + rs.getInt(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
			//	out.print("<td>" + rs.getString(3) + "</td>");
				out.print("<td>" + rs.getInt(5) + "</td>");
				
				out.print("<td>" + rs.getString(6) + "</td>");
				out.print("<td>" + rs.getLong(7) + "</td>");
				
				
				//out.print("<td><a href='DeleteServlet' >Delete</a></td>");
			    
				out.print("</tr>");
			    
			}
			out.print("</table>");
			
			/*out.print("<table align='right'width='40%'>");
			out.print("<tr><td><a href='Compose.html'>COMPOSE</a></td></tr>");
			out.print("<tr><td><a href='InboxServlet'>INBOX</a></td></tr>");
			out.print("<tr><td><a href='LogoutServlet'>LOGOUT</a></td></tr>");
			//out.print("<tr><td><a href='DeleteServlet'>Delete</a></td></tr>");
			
			out.print("</table>");*/
		} catch (SQLException e) {
			e.printStackTrace();
		}
   
			%>
</body>
</html>