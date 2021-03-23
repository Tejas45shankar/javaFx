<%-- 
    Document   : reg
    Created on : 22 Mar, 2021, 9:20:58 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 <script >
     function validpas()
     {
         
         var pass=document.reg.password.value;
         var cpass=document.reg.cpassword.value;
         
         if(pass.length<6)
         {
             alert("password must contain 6 characters");
             return false;
         }
         if(pass==cpass)
         {
             return true;
         }
         else
         {
             alert("password and conform password must be same");
             return false;
         }
         
     }
     </script>
    <body>
        <form name="reg" method="post" onsubmit="return validpas()" action="servletdemo">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="Name" value="" required="" pattern="[A-Z][a-z]{2,}" title="First letter should contain captial letter"  /></td>
                </tr>
                <tr>
                    <td>UserNAme</td>
                    <td><input type="text" name="username" value=""  /></td>
                </tr>
                <tr>
                    <td>password</td>
                    <td><input type="password" name="password" value="" size="20" required="" /></td>
                </tr>
                <tr>
                    <td>cpassword</td>
                    <td><input type="password" name="cpassword" value="" size="20" required="" /></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="radio" name="Gender" value="Male" required=""/>Male<input type="radio" name="Gender" value="FeMale" required="" />Female</td>
                    
                </tr>
                <tr>
                    <td>Hobbies</td>
                    <td><input type="checkbox" name="hob" value="playingfootball" required=""/>Playingfootball<input type="checkbox" name="hob" value="cricket" required=""/>cricket</td>
                    
                </tr>
                
                <tr>
                    <td>Age</td>
                    <td><select name="age">
                            <% for(int i=1;i<=100;i++)
                            {%>
                            <option value="<%=i%>"><%=i%></option>
                                   <% }%>
                        </select></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="Email" name="Email" value="" size="20" /></td>
                </tr>
                <tr>
                    <td>MobileNumber</td>
                    <td><input type="text" name="Mobilenum" value="" size="10" required="" pattern="[6789]{0-9}" title="Please enter 10 digit number" /></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><textarea name="Address" rows="4" cols="20">
                        </textarea></td>
                </tr>
                <tr>
                    <td><input type="submit" value="submit" name="Register" /></td>
                    <td><input type="reset" value="reset" name="clear" /></td>
                </tr>
            
        </table>

    </body>
</html>
