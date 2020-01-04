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
public class TestUserDAOUpdate {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO = ctx.getBean(UserDAO.class);
        
        User u = new User();
        u.setUserId(37);
        u.setName("Noman Ibrahim");
        u.setPhone("01515279070");
        u.setEmail("noman.sachi123@gmail.com");
        u.setAddress("Savar");
        u.setLoginName("putla");
        u.setPassword("123");
        u.setRole(1);//AdminRole
        u.setLoginStatus(1);//
        
        userDAO.update(u);
        System.out.println("--------------Data Update---------------");
    }
    
}
