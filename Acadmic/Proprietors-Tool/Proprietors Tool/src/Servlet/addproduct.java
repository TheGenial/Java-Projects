package Servlet;
import javax.print.DocFlavor;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.nimbus.State;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "addproduct",urlPatterns = "/addproduct")
public class addproduct extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    {
        //String id=request.getParameter("id");
        String flat_no=request.getParameter("flat_no");
        String tenant_name=request.getParameter("tenant_name");
        String occupation=request.getParameter("occupation");
        String address=request.getParameter("address");
        String rental_info=request.getParameter("rental_info");
        String bill_info=request.getParameter("bill_info");

        System.out.println(flat_no+tenant_name+occupation+address+rental_info+bill_info);

        String host="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/test?useSSL=false";
        String user="root";
        String pass="1234";

        try
        {
            Class.forName(host);
            Connection connection=DriverManager.getConnection(url,user,pass);
            Statement statement=connection.createStatement();

            String query="insert into tenant_info (flat_no, tenant_name, occupation, address, rental_info, bill_info) values ('"+flat_no+"','"+tenant_name+"','"+occupation+"','"+address+"','"+rental_info+"','"+bill_info+"')";
            int i =statement.executeUpdate(query);
            if(i>0){
                response.sendRedirect("Products.jsp");
            }
            else{
                response.sendRedirect("addproduct.jsp");
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
    }
}

