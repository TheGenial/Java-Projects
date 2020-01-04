package com.mbstu.ehcare.dao;
import com.mbstu.ehcare.model.Car;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CarRepository extends JpaRepository<Car,String> {

    @Query("select p from Car p where p.carid = ?")
    Car getCarById(Integer carId);


}
