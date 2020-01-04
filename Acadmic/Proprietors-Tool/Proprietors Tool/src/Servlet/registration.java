package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

@WebServlet(name = "registration",urlPatterns = "/registration")
public class registration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id=request.getParameter("id");
        String first_name=request.getParameter("first_name");
        String last_name=request.getParameter("last_name");
        String user_name=request.getParameter("user_name");
        String email=request.getParameter("email");
        String password=request.getParameter("password");

        System.out.println(id+first_name+last_name+user_name+email+password);

        String host="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/test?useSSL=false";
        String user="root";
        String pass="1234";

        try
        {
            Class.forName(host);
            Connection connection= DriverManager.getConnection(url,user,pass);
            Statement statement=connection.createStatement();

            int i=statement.executeUpdate("insert into user(first_name,last_name,user_name,email,password)values('"+first_name+"','"+last_name+"','"+user_name+"','"+email+"','"+password+"')");
            if(i>0) {
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("reg.jsp"); }
        }
        catch (Exception e)
        {
            System.out.println(e);
            e.printStackTrace();
        }
    }
}
