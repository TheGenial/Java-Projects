package com.arif.Capp.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 *
 * @author Arif
 */
public class ContactAppDispatcheServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer
{

    @Override
    protected Class<?>[] getRootConfigClasses() {
       return new Class []{SpringRootConfig.class}; 
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class []{SpringWebConfig.class}; 
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/"};
    }

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        super.onStartup(servletContext); //Must Present
    }
    
}
