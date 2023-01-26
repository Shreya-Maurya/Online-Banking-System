<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Withdraw Money</h1>
<div><%if(request.getAttribute("balance")!=null)
			{
			out.print(request.getAttribute("balance"));
			}
			
			 %></div>
				<form name=F1 onSubmit="return dil(this)" action="withdraw.jsp" method="post">
				   <table >	
				   <tr><td> ACCOUNT NO: </td><td><input type="text" name="accountno"/></td></tr>
					<tr><td>USER NAME: </td><td><input type="text" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td>AMOUNT:</td><td> <input type="text" name="amount"/></td></tr>
				
						<tr><td></td><td><input type="submit" value="Submit"/>
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
					</form>
</body>
</html>