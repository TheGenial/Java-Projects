package com.arif.restfulinpeace.dao;
import com.arif.restfulinpeace.model.Doctor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor,String> {

    @Query("select p from Doctor p where p.doctorid = ?")
    Doctor getDoctorById(Integer doctorId);
}
