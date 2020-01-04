package com.arif.restfulinpeace.model;

import com.arif.restfulinpeace.Utils;

import javax.persistence.*;

@Entity
@Table(name="DoctorInfo")
public class Doctor {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int doctorid;

    @Column(name = "Name")
    private String name;


    @Column(name = "Department")
    private String department;

    @Column(name = "Joining")
    private String joining;

    public Doctor() {}

    public Doctor(String name, String department, String joining) {
        this.name = name;
        this.department = department;
        this.joining = joining;
    }

    public int getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(int doctorid) {
        this.doctorid = doctorid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getJoining() {
        return joining;
    }

    public void setJoining(String joining) {
        this.joining = joining;
    }

    @Override
    public String toString() {
        return "Doctor{" +
                "doctorid=" + doctorid +
                ", name='" + name + '\'' +
                ", department='" + department + '\'' +
                ", joining='" + joining + '\'' +
                '}';
    }
}







