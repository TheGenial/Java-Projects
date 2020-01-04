<%@ page import="java.sql.Connection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>

<%

    String host="com.mysql.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/test?useSSL=false";
    String user="root";
    String pass="1234";
    String qry1,qry2;

    String id = request.getParameter("id");
    System.out.println("Id = "+id+" In delte");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url, user, pass);
        Statement statement = connection.createStatement();
        qry2="delete from tenant_info where id="+id;
        statement.executeUpdate(qry2);

        response.sendRedirect("Products.jsp");

    }
    catch (Exception e)
    {
        e.printStackTrace();
    }

%>