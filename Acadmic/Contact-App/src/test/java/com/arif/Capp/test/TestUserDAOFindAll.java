package com.arif.Capp.test;

import com.arif.Capp.config.SpringRootConfig;
import com.arif.Capp.dao.UserDAO;
import com.arif.Capp.domain.User;
import java.util.List;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 *
 * @author Arif
 */
public class TestUserDAOFindAll {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserDAO userDAO = ctx.getBean(UserDAO.class);
        
        List<User> users=userDAO.findAll();
        for(User u: users){
            System.out.println(u.getUserId()+ " "+u.getName()+" "+u.getPhone());
        }
        
    }
    
}
