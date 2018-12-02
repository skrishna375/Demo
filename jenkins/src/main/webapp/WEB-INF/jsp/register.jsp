<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>Login Page</title></head>
<body>

<h1>Spring Application Sign up</h1>

<form method="post">
           
            <table border="1" >
                <tbody>
                    <tr>
                        <td>User Id</td>
                        <td><input type="text" name="userId" required/></td>
                    </tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userName" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city" required/></td>
                    </tr>
                    <tr>
                        <td>E-mail Id</td>
                        <td><input type="text" name="email" required/></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input type="text" name="phone" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Register" />
                            &nbsp;&nbsp;
                            <input type="reset" value="Reset" />
                        </td>                        
                    </tr>                    
                </tbody>
            </table>        
</form>
</body>
</html>