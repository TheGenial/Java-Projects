package com.arif.Capp.config;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
/**
 *
 * @author Arif
 */
@Configuration
@ComponentScan(basePackages={"com.arif.Capp.dao","com.arif.Capp.service"})

public class SpringRootConfig {
    //TODO: Services, DAO, DataSource, Email Sender or some other business layer beans   
    @Bean
    public BasicDataSource getDataSource(){
        BasicDataSource ds = new BasicDataSource();
        ds.setDriverClassName("org.h2.Driver");
        ds.setUrl("jdbc:h2:tcp://localhost/~/Capp_db");
        ds.setUsername("sa");
        ds.setPassword("");
        ds.setMaxTotal(2);
        ds.setInitialSize(1);
        ds.setTestOnBorrow(true);
        ds.setValidationQuery("SELECT 1");
        ds.setDefaultAutoCommit(true);
        return ds;
    }
    
    
}
