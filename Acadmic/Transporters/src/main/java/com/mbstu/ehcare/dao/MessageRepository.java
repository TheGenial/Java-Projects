package com.mbstu.ehcare.dao;
import com.mbstu.ehcare.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageRepository extends JpaRepository<Message,String> {

    @Query("select p from Message p where p.mid = ?")
    Message getMessageById(Integer mId);
}