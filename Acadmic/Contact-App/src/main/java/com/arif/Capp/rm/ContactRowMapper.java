
package com.arif.Capp.rm;

import com.arif.Capp.domain.Contact;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Arif
 */
public class ContactRowMapper implements RowMapper<Contact>{

    @Override
    public Contact mapRow(ResultSet rs, int i) throws SQLException {
        Contact c = new Contact();
        c.setContactId(rs.getInt("CONTACTID"));
        c.setUserId(rs.getInt("USERID"));
        c.setName(rs.getString("NAME"));
        c.setEmail(rs.getString("EMAIL"));
        c.setAddress(rs.getString("ADDRESS"));
        c.setPhone(rs.getString("PHONE"));
        c.setRemark(rs.getString("REMARK"));
        return c;   
    }
    
}
