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

    <script>
        function validateform(){
            var tname=document.add.tenant_name.value;
            var occupation=document.add.occupation.value;
            var address=document.add.address.value

            if (tname==null || tname==""){
                alert("Name can't be blank");
                return false;
            }
            else if (occupation==null || occupation==""){
                alert("Occupation can't be blank");
                return false;
            }
            else if (address==null || address==""){
                alert("Address can't be blank");
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
    <a href="home.jsp">Home</a> | <a href="addproduct.jsp">Add Tenant</a> | <a href="Products.jsp">Tenant List</a> | <a href="index.jsp">Logout</a>
    <h3 style="text-align: center;">Edit Tenant Info</h3><br>

    <table>

        <%
            String id=request.getParameter("id");
            System.out.println(id);

        %>
        <form name="add" action="editproduct" method="post" onsubmit=" return validateform()">
            <tr>
                <td>ID</td>
                <td><input type="text" value="<%=id%>" name="id"></td>
            <tr/>
            <tr>
                <td>Flat No</td>
                <td> <select name="flat_no">
                    <option value="1/A">1/A</option>
                    <option value="1/B">1/B</option>
                    <option value="2/A">2/A</option>
                    <option value="2/B">2/B</option>
                    <option value="3/A">3/A</option>
                    <option value="3/B">3/B</option>
                    <option value="4/A">4/A</option>
                    <option value="4/B">4/B</option>
                </select>
                </td>
            <tr/>
            <tr>
                <td>Tenant Name</td>
                <td><input type="text" value="" name="tenant_name"></td>
            <tr/>
            <tr>
                <td>Occupation</td>
                <td><input type="text" value="" name="occupation"></td>
            <tr/>
            <tr>
                <td>Address</td>
                <td><input type="text" value="" name="address"></td>
            <tr/>
            <tr>
                <td>Rental Info</td>
                <td><select name="rental_info">
                    <option value="Paid">Paid</option>
                    <option value="Unpaid">Unpaid</option>
                </select>
                </td>
            </tr>
            <tr>
                <td>Bill Info</td>
                <td><select name="bill_info">
                    <option value="Paid">Paid</option>
                    <option value="Unpaid">Unpaid</option>
                </select>
                </td>
            <tr/>

            <tr>
                <td>
                    <a href="Products.jsp" style="background-color: aquamarine">Back</a>
                </td>
                <td>
                    <input type="submit" value="Edit" style="color: blueviolet; font-size: large; background-color: #ffcef4">
                </td>
            </tr>
        </form>
        </table>
</div>



</body>

</html>