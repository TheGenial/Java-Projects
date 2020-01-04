package com.arif.Capp.dao;

import com.arif.Capp.domain.User;
import java.util.List;

/**
 *
 * @author Arif
 */
public interface UserDAO {
    public void save(User u);
    public void update(User u);
    public void delete(User u);
    public void delete(Integer USERID);
    public User findById(Integer USERID);
    public List<User> findAll();
    public List<User> findByProperty(String propName, Object propValue);

    
}
