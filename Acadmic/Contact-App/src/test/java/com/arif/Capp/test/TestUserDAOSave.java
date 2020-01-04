package com.arif.Capp.test;

import com.arif.Capp.config.SpringRootConfig;
import com.arif.Capp.dao.UserDAO;
import com.arif.Capp.domain.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 *
 * @author Arif
 */
public class TestUserDAOSave {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO = ctx.getBean(UserDAO.class);
        
        User u = new User();
        u.setName("Arif");
        u.setPhone("01672043158");
        u.setEmail("arifulislam14.ict@gmail.com");
        u.setAddress("Dhaka");
        u.setLoginName("arif");
        u.setPassword("5555");
        u.setRole(1);//AdminRole
        u.setLoginStatus(1);//Active
        userDAO.save(u);
        System.out.println("--------------Data Saved---------------");
        
    }
    
}
