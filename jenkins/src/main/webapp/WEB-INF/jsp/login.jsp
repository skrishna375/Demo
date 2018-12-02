<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>Login Page</title></head>
<body>

<h1>Spring Application Login</h1>

<form method="post">
           <font color="red">${errorMessage}</font>
            <table border="1" >
               
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Login" />
                            &nbsp;&nbsp;
                            <input type="reset" value="Reset" />
                        </td>                        
                    </tr>                    
                </tbody>
            </table>        
</form>
</body>
</html>