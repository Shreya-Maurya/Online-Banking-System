<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
		<tr>
			<td align="center" valign="middle" bgcolor="red"><h4>Account Info</h4></td>
		</tr>
		<tr>
			<td>
			<%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			out.print(request.getAttribute("totaldataamount"));
			}
			
			 %>
				</td>
		</tr>

 

    		</table>
</body>
</html>