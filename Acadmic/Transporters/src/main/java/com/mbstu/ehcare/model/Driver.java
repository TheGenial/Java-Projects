package com.mbstu.ehcare.model;
import javax.persistence.*;
@Entity
@Table(name="DriverInfo")
public class Driver {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int driverid;

    @Column(name = "Name")
    private String name;

    @Column(name = "Address")
    private String address;

    @Column(name = "Phone")
    private String phone;

    @Column(name = "Blood_Group")
    private String bgroup;

    @Column(name = "Experiance")
    private String experiance;

    @Column(name = "Allocated_Road")
    private String road;

    @Column(name="Added_By")
    private String addname;

    public Driver() { }

    public Driver(String name, String address, String phone, String bgroup, String experiance, String road, String addname) {
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.bgroup = bgroup;
        this.experiance = experiance;
        this.road = road;
        this.addname = addname;
    }

    public int getDriverid() {
        return driverid;
    }

    public void setDriverid(int driverid) {
        this.driverid = driverid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getBgroup() {
        return bgroup;
    }

    public void setBgroup(String bgroup) {
        this.bgroup = bgroup;
    }

    public String getExperiance() {
        return experiance;
    }

    public void setExperiance(String experiance) {
        this.experiance = experiance;
    }

    public String getRoad() {
        return road;
    }

    public void setRoad(String road) {
        this.road = road;
    }

    public String getAddname() {
        return addname;
    }

    public void setAddname(String addname) {
        this.addname = addname;
    }

    @Override
    public String toString() {
        return "Driver{" +
                "driverid=" + driverid +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", bgroup='" + bgroup + '\'' +
                ", experiance='" + experiance + '\'' +
                ", road='" + road + '\'' +
                ", addname='" + addname + '\'' +
                '}';
    }
}