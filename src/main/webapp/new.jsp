<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="style.css" rel="stylesheet" type="text/css">
<link href="style3.css" rel="stylesheet" type="text/css">
<title>Create Account</title>
<SCRIPT>
function dil(form)
{
 
        if(!isNaN(form.elements[0].value))
		{
		   alert("This Field must be Char's")
		   form.elements[0].value=""	
		   form.elements[0].focus()
		   return false
		}
    
    if(document.F1.password.value!=document.F1.repassword.value)
    {
	   alert("Check Confirm PWD"); 
	   document.F1.repassword.value=""
	   document.F1.repassword.focus()	
	   return false
	}
	
	
	if(!isNaN(document.F1.phone.value))
   {
	   if(document.F1.phone.value >9999999999||document.F1.phone.value <=999999999 )
	   {
		 alert("ye kabhi nhi aayegi")
		 document.F1.phone.value=""
		 document.F1.phone.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.phone.value=""
	   return false
   }
	
	
	

   if(!isNaN(document.F1.amount.value))
   {
	   if(document.F1.amount.value < 500)
	   {
		 alert("Minimum Balance should be 500 /-")
		 document.F1.amount.value=""
		 document.F1.amount.focus()
         return false   
	   }
   }
   else
   {
       alert("This  field  must  be  number")
	   document.F1.amount.value=""
	   return false
   }
   
   

   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

   

   return true   
   }
</SCRIPT>
<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");

}
</script>


</head>
<body>
<nav id="navbar">
        <div id="logo">
        <img src="img/logo1.jpg" alt ="public bank.com"> 
        </div>
        <ul>
        <li class="item"><a href="#home">home</a></li>
        <li class="item"><a href="#services-container">services</a></li>
        <li class="item"><a href="#client-section">about us</a></li>
        <li class="item"><a href="#contact">contact us</a></li>
      
        </ul>
        </nav>
        <section id="home">

            <h1 class="h-primary">welcome to public bank</h1>
            <p>Lorem i doloremque sequi tenetur molestias, distinctio voluptates quam blanditiis aspernatur voluptatum laborum aliquam maiores! Maiores, incidunt deleniti.</p>
       <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Esse nisi perspiciatis consequatur ducimus atque saepe iusto, minus corrupti quae, optio dicta laudantium officiis ipsa excepturi. Explicabo praesentium pariatur sapiente officia.
       Porro placeat adipisci illo </p>
        </section>
        <section id="contain">
         <h1 class="h-primary center">Create Account</h1>
        <div id="input">
                  <form name=F1 onSubmit="return dil(this)" action="St" method="post">
				  <table >	
<!-- 				<tr><td>FIRST NAME:</td><td> <input type="text" name="fname"/></td></tr> -->
<!-- 				<tr><td>LAST NAME:</td><td> <input type="text" name="lname"/></td></tr> -->
					<tr><td>USER NAME:</td><td> <input type="text" name="username"/></td></tr>
					<tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>
					<tr><td>RE-PASSWORD:</td><td> <input type="password" name="repassword"/></td></tr>
					<tr><td>AMOUNT:</td><td> <input type="text" name="amount"/></td></tr>
<!-- 					Gender:<br/><br/> -->
<!-- 					Male<input type="radio" name="gender" value="male"> Female<input type="radio" name="gender" value="female"/><br/><br/> -->
					<tr><td>ADDRESS:</td><td> <input type="text" name="adderess"/></td></tr>
					<tr><td>PHONE:</td><td> <input type="text" name="phone"/></td></tr>
					<tr><td></td><td><input type="submit" value="Submit"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
               		</form>
               		</div>
               		</section>
        <section id="client-section">
            <h1 class="h-primary center">Our Clients</h1>
            <div id="clients">
                <div class="client-item">
                    <img src="img/twitter.png" alt="Our Client">
                </div>
                <div class="client-item">
                    <img src="img/youtube.png" alt="Our Client">
                </div>
              
                <div class="client-item">
                    <img src="img/facebook.png" alt="Our Client">
                </div>
                <div class="client-item">
                    <img src="img/insta.jpg" alt="Our Client">
                </div>
            </div>
    
        </section>
    
        <section id="contact">
            <h1 class="h-primary center">Contact Us</h1>
            <div id="contact-box">
                <form action="">
                    <div class="form-group">
                        <label for="name">Name: </label>
                        <input type="text" name="name" id="name" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email: </label>
                        <input type="email" name="name" id="email" placeholder="Enter your email">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number: </label>
                        <input type="number" name="name" id="phone" placeholder="Enter your phone">
                    </div>
                    <div class="form-group">
                        <label for="message">Message: </label>
                        <textarea name="message" id="message" cols="30" rows="10"></textarea>
                    </div>
                </form>
            </div>
        </section>
    
        <footer>
            <div class="center">
                Copyright &copy; www.publicbank.com. All rights reserved!
            </div>
        </footer>
</body>
</html>