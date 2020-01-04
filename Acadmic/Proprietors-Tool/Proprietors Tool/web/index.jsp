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
          var name=document.loginform.user_name.value;
          var password=document.loginform.password.value;

          if (name==null || name==""){
              alert("Name can't be blank");
              return false;
          }else if(password.length<3){
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

  <form name="loginform" action="login" method="post" onsubmit="return validateform()">
    <center>
      <table border="1" width="30%" cellpadding="3" >
        <thead>
        <tr>
          <th colspan="2">Login Here</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <td>User Name</td>
          <td><input type="text" name="user_name" value=""></td>
        </tr>
        <tr>
          <td>Password</td>
          <td><input type="password" name="password" value=""></td>
        </tr>
        <tr>
          <td>
            <input type="submit"  value="Login"  style="color: blueviolet; font-size: large; background-color: #ffcef4">
           </td>
          <td>
            <a href="reg.jsp">Register</a>
          </td>
        </tr>
        </tbody>
      </table>
    </center>
  </form>

</div>




</body>

</html>
