package Servlet;

import com.sun.xml.internal.ws.server.DefaultResourceInjector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "editproduct",urlPatterns = "/editproduct")
public class editproduct extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String id=request.getParameter("id");
        String flat_no=request.getParameter("flat_no");
        String tenant_name=request.getParameter("tenant_name");
        String occupation=request.getParameter("occupation");
        String address=request.getParameter("address");
        String rental_info=request.getParameter("rental_info");
        String bill_info=request.getParameter("bill_info");

        System.out.println(id+flat_no+tenant_name+occupation+address+rental_info+bill_info);

        String host="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/test?useSSL=false";
        String user="root";
        String pass="1234";

        try
        {

            Class.forName(host);
            Connection connection=DriverManager.getConnection(url,user,pass);
            Statement statement=connection.createStatement();

            String query= "update tenant_info set flat_no='"+flat_no+"',tenant_name='"+tenant_name+"',occupation='"+occupation+"',address='"+address+"',rental_info='"+rental_info+"',bill_info='"+bill_info+"' where id="+id;

            int i =statement.executeUpdate(query);
            if(i>0){
                response.sendRedirect("Products.jsp");
            }
            else{
                response.sendRedirect("edit.jsp");
            }
            System.out.println(i);
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}

