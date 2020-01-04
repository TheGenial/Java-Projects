package com.mbstu.ehcare;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

public class Utils {

    public static String getLoggedUserName(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String name = null ;
        name = auth.getName();
        return name;
    }

}
