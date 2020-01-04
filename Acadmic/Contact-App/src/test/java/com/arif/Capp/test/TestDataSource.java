package com.arif.Capp.test;

import com.arif.Capp.config.SpringRootConfig;
import javax.sql.DataSource;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Arif
 */
public class TestDataSource {  
    public static void main(String[] args) {
        ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringRootConfig.class);
        DataSource ds = ctx.getBean(DataSource.class);
        JdbcTemplate jt = new JdbcTemplate(ds);
        String sql="INSERT INTO user(`NAME`, `PHONE`, `EMAIL`, `ADDRESS`, `LOGINNAME`, `PASSWORD`) VALUES(?,?,?,?,?,?)";
        Object[] param = new Object[]{"ARIF", "01521238657", "arif.mbstu22@gmail.com", "Dhaka", "arif", "123"};
        jt.update(sql, param);
        System.out.println("------SQL executed-----");
    }    
}
