<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>

<head>
    <link href="style1.css" type="text/css" rel="stylesheet">
    <title>Welcome Page</title>
    <style>
        H1 {
            text-align: right;
        }

        jack {
            padding: 30px;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            font-style: normal;
        }
    </style>
    <meta charset="UTF-8">

    <script>
        function validateform(){
            var fname=document.reg.first_name.value;
            var lname=document.reg.last_name.value;
            var uname=document.reg.user_name.value;

            var email=document.reg.email.value;
            var atposition=email.indexOf("@");
            var dotposition=email.lastIndexOf(".");

            var password=document.reg.password.value;

            if (fname==null || fname==""){
                alert("First Name can't be blank");
                return false;
            }
            else if (lname==null || lname==""){
                alert("Last Name can't be blank");
                return false;
            }
            else if (uname==null || uname==""){
                alert("User Name can't be blank");
                return false;
            }
            else if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){
                alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);
                return false;
            }
            else if(password.length<3){
                alert("Password must be at least 3 characters long.");
                return false;
            }
        }
    </script>
</head>

<body>

<div id="header">
    Proprietors Tool
</div>


<div id="navbar">

    <form name="reg" action="registration" method="post" onsubmit="return validateform()">
        <center>
            <table border="1" width="30%" cellpadding="3" >
                <thead>
                <tr>
                    <th colspan="2">Registration Here</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>First Name</td>
                    <td><input type="text" name="first_name" value=""></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><input type="text" name="last_name" value=""></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><input type="text" name="user_name" value=""></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value=""></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" value=""></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Register" style="color: blueviolet; font-size: large; background-color: #ffcef4">
                    </td>
                </tr>
                </tbody>
            </table>
        </center>
    </form>

</div>
</body>

</html>
