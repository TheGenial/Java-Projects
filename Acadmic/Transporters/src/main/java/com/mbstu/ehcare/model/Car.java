package com.mbstu.ehcare.model;

import com.mbstu.ehcare.Utils;

import javax.persistence.*;

@Entity
@Table(name="CarInfo")
public class Car {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int carid;

    @Column(name = "Name")
    private String name;

    @Column(name = "Model")
    private String model;

    @Column(name = "Serial_Number")
    private String snumber;

    @Column(name = "Service_Year")
    private String syear;

    @Column(name = "Allocated_Road")
    private String road;

    @Column(name = "Owner_name")
    private String ownername;

    public Car() { }

    public Car(String name, String model, String snumber, String syear, String road, String ownername) {
        this.name = name;
        this.model = model;
        this.snumber = snumber;
        this.syear = syear;
        this.road = road;
        this.ownername = ownername;
    }

    public int getCarid() {
        return carid;
    }

    public void setCarid(int carid) {
        this.carid = carid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getSnumber() {
        return snumber;
    }

    public void setSnumber(String snumber) {
        this.snumber = snumber;
    }

    public String getSyear() {
        return syear;
    }

    public void setSyear(String syear) {
        this.syear = syear;
    }

    public String getRoad() {
        return road;
    }

    public void setRoad(String road) {
        this.road = road;
    }

    public String getOwnername() {
        return ownername;
    }

    public void setOwnername(String ownername) {

        this.ownername = ownername;
        System.out.println(ownername);
    }

    @Override
    public String toString() {
        return "Car{" +
                "carid=" + carid +
                ", name='" + name + '\'' +
                ", model='" + model + '\'' +
                ", snumber='" + snumber + '\'' +
                ", syear='" + syear + '\'' +
                ", road='" + road + '\'' +
                ", ownername='" + ownername + '\'' +
                '}';
    }
}
