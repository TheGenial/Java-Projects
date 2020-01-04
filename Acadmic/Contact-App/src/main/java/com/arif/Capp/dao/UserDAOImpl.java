package com.arif.Capp.dao;

import com.arif.Capp.domain.User;
import com.arif.Capp.rm.UserRowMapper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Arif
 */
@Repository
public class UserDAOImpl extends BaseDAO implements UserDAO{

    @Override
    public void save(User u) {
        String sql="INSERT INTO USER(NAME, PHONE, EMAIL, ADDRESS, LOGINNAME, PASSWORD,ROLE,LOGINSTATUS)"
                + "VALUES(:NAME, :PHONE, :EMAIL, :ADDRESS, :LOGINNAME, :PASSWORD, :ROLE, :LOGINSTATUS)";
        Map m = new HashMap();
        m.put("NAME", u.getName());
        m.put("PHONE", u.getPhone());
        m.put("EMAIL", u.getEmail());
        m.put("ADDRESS", u.getAddress());
        m.put("LOGINNAME", u.getLoginName());
        m.put("PASSWORD", u.getPassword());
        m.put("ROLE", u.getRole());
        m.put("LOGINSTATUS", u.getLoginStatus());
        
        KeyHolder kh = new GeneratedKeyHolder();
        SqlParameterSource ps = new MapSqlParameterSource(m);
        super.getNamedParameterJdbcTemplate().update(sql, ps, kh);
        Integer userId = kh.getKey().intValue();
        u.setUserId(userId);
    }

    @Override
    public void update(User u) {
        String sql="UPDATE user "
                + "SET NAME=:NAME,"
                + "PHONE=:PHONE,"
                + "EMAIL=:EMAIL,"
                + "ADDRESS=:ADDRESS,"
                + "ROLE=:ROLE,"
                + "LOGINSTATUS=:LOGINSTATUS"
                + " WHERE USERID=:USERID";
            
        Map m = new HashMap();
        m.put("NAME", u.getName());
        m.put("PHONE", u.getPhone());
        m.put("EMAIL", u.getEmail());
        m.put("ADDRESS", u.getAddress());
        m.put("ROLE", u.getRole());
        m.put("LOGINSTATUS", u.getLoginStatus());
        m.put("USERID", u.getUserId());
        getNamedParameterJdbcTemplate().update(sql, m);
    }

    @Override
    public void delete(User u) {
        this.delete(u.getUserId());
    }

    @Override
    public void delete(Integer userId) {
        String sql = "DELETE FROM USER WHERE USERID=? ";
        getJdbcTemplate().update(sql, userId);
    }

    @Override
    public User findById(Integer userId) {
        String sql = "SELECT userId, name, phone, email, address, loginname, role, loginstatus"
                + " FROM user WHERE userId=?";
        User u = getJdbcTemplate().queryForObject(sql,new UserRowMapper(),userId);
        return u;
    }
    

    @Override
    public List<User> findAll() {
        String sql = "SELECT userId, name, phone, email, address, loginname, role, loginstatus"
                + " FROM user";
        /*List<User> users=getJdbcTemplate().query(sql, new UserRowMapper());
        return users;*/
        
        return getJdbcTemplate().query(sql, new UserRowMapper());
        
        
    }


    @Override
    public List<User> findByProperty(String propName, Object propValue) {
        String sql = "SELECT userId, name, phone, email, address, loginname, role, loginstatus"
                + " FROM user WHERE "+propName+"=?";
        return getJdbcTemplate().query(sql, new UserRowMapper(),propValue);
        
    }

    
   }

    
    

