package com.arif.restfulinpeace.model;

import com.arif.restfulinpeace.Utils;

import javax.persistence.*;

@Entity
@Table(name="PatientInfo")
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int patientid;

    @Column(name = "Name")
    private String name;


    @Column(name = "Mobile")
    private String mobile;

    @Column(name = "Age")
    private String age;

    @Column(name = "Gender")
    private String gender;

    @Column(name = "Occupation")
    private String occupation;

    @Column(name = "Symptom_summary")
    private String symptomsummary;

    public Patient() {
    }

    public Patient(String name, String mobile, String age, String gender, String occupation, String symptomsummary) {
        this.name = name;
        this.mobile = mobile;
        this.age = age;
        this.gender = gender;
        this.occupation = occupation;
        this.symptomsummary = symptomsummary;
    }


    public int getPatientid() {
        return patientid;
    }

    public void setPatientid(int patientid) {
        this.patientid = patientid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getSymptomsummary() {
        return symptomsummary;
    }

    public void setSymptomsummary(String symptomsummary) {
        this.symptomsummary = symptomsummary;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "patientid=" + patientid +
                ", name='" + name + '\'' +
                ", mobile='" + mobile + '\'' +
                ", age='" + age + '\'' +
                ", gender='" + gender + '\'' +
                ", occupation='" + occupation + '\'' +
                ", symptomsummary='" + symptomsummary + '\'' +
                '}';
    }
}







