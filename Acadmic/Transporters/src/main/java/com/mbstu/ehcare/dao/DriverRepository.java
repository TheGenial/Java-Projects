package com.mbstu.ehcare.dao;
import com.mbstu.ehcare.model.Driver;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface DriverRepository extends JpaRepository<Driver,String> {

    @Query("select p from Driver p where p.driverid = ?")
    Driver getDriverById(Integer driverId);

}
