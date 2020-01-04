<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>


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

        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }


    </style>
    <meta charset="UTF-8">
</head>

<body>


<div id="header">
    Proprietors Tool
</div>


<div id="navbar">
    <a href="home.jsp">Home</a> | <a href="addproduct.jsp">Add Tenant</a> | <a href="index.jsp">Logout</a>

    <h3 style="text-align: center;">Tenant List</h3>

    <table>
        <tr>
            <th>ID</th>
            <th>Flat No</th>
            <th>Tenant Name</th>
            <th>Occupation</th>
            <th>Address</th>
            <th>Rental Info</th>
            <th>Bill Info</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>

        <%
            String host="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/test";
            String user="root";
            String pass="1234";
            String qry1,qry2;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection=DriverManager.getConnection(url,user,pass);
                Statement statement=connection.createStatement();
                ResultSet resultSet=statement.executeQuery("select * from tenant_info");

                while(resultSet.next())
                {

            %>

            <tr>
                <td><%=resultSet.getString("id")%></td>
                <td><%=resultSet.getString("flat_no")%></td>
                <td><%=resultSet.getString("tenant_name")%></td>
                <td><%=resultSet.getString("occupation")%></td>
                <td><%=resultSet.getString("address")%></td>
                <td><%=resultSet.getString("rental_info")%></td>
                <td><%=resultSet.getString("bill_info")%></td>
                <td><a href="edit.jsp?id=<%= resultSet.getString("id")%>" style="background-color: #ff28be">  Edit</a> </td>
                <td><a href="delete.jsp?id= <%= resultSet.getString("id")%> " style="background-color: #e21430">Delete</a></td>

            </tr>
            <%
                }
            }
            catch (Exception e)
            {
                e.printStackTrace();
            }
        %>
    </table>
</div>



</body>

</html>