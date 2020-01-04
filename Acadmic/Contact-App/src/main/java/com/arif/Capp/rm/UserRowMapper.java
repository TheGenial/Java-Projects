
package com.arif.Capp.rm;

import com.arif.Capp.domain.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Arif
 */
public class UserRowMapper implements RowMapper<User>{

    @Override
    public User mapRow(ResultSet rs, int i) throws SQLException {
        User u = new User();
        u.setUserId(rs.getInt("USERID"));
        u.setName(rs.getString("NAME"));
        u.setPhone(rs.getString("PHONE"));
        u.setEmail(rs.getString("EMAIL"));
        u.setAddress(rs.getString("ADDRESS"));
        u.setLoginName(rs.getString("LOGINNAME"));
        u.setRole(rs.getInt("ROLE"));
        u.setLoginStatus(rs.getInt("LOGINSTATUS"));
        return u;
        
        
    }
    
}
