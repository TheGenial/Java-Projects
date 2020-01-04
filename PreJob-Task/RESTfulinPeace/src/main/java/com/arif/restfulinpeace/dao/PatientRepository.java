package com.arif.restfulinpeace.dao;
import com.arif.restfulinpeace.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepository extends JpaRepository<Patient,String> {

    @Query("select p from Patient p where p.patientid = ?")
    Patient getPatientById(Integer patientId);
}
