package com.arif.Capp.test;

import com.arif.Capp.config.SpringRootConfig;
import com.arif.Capp.domain.User;
import com.arif.Capp.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

/**
 *
 * @author Arif
 */
public class TestUserServiceRegister {
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        UserService userService=ctx.getBean(UserService.class);
        
        User u = new User();
        u.setName("No man");
        u.setPhone("99999999");
        u.setEmail("noman123@gmail.com");
        u.setAddress("Pollibiddut");
        u.setLoginName("putla");
        u.setPassword("man123");
        u.setRole(UserService.ROLE_ADMIN);//AdminRole
        u.setLoginStatus(UserService.LOGIN_STATUS_ACTIVE);//Active
        userService.register(u);
        System.out.println("--------------User Register---------------");
        
    }
    
}
