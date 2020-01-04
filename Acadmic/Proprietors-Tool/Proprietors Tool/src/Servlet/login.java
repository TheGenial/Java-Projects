package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "login",urlPatterns = "/login")
public class login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user_name=request.getParameter("user_name");
        String password=request.getParameter("password");

        System.out.println(user_name+password);

        String host="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/test?useSSL=false";
        String user="root";
        String pass="1234";
        PrintWriter out = response.getWriter();

        try
        {
            Class.forName(host);
            Connection connection= DriverManager.getConnection(url,user,pass);
            Statement statement=connection.createStatement();

            ResultSet rs;
            rs=statement.executeQuery("select * from user where user_name='"+user_name+"'and password='"+password+"' ");
            if(rs.next()){
                response.sendRedirect("home.jsp");
            }
            else{
                response.sendRedirect("index.jsp");
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }


    }
}
