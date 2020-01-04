package com.mbstu.ehcare.model;

import javax.persistence.*;

@Entity
@Table(name="MessageInfo")
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int mid;

    @Column(name = "Message_To")
    private String mto;

    @Column(name = "Subject")
    private String subject;

    @Column(name = "Message_Body")
    private String body;

    @Column(name = "Message_By")
    private String mby;


    public Message() { }

    public Message(String mto, String subject, String body, String mby) {
        this.mto = mto;
        this.subject = subject;
        this.body = body;
        this.mby = mby;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public String getMto() {
        return mto;
    }

    public void setMto(String mto) {
        this.mto = mto;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getMby() {
        return mby;
    }

    public void setMby(String mby) {
        this.mby = mby;
    }

    @Override
    public String toString() {
        return "Message{" +
                "mid=" + mid +
                ", mto='" + mto + '\'' +
                ", subject='" + subject + '\'' +
                ", body='" + body + '\'' +
                ", mby='" + mby + '\'' +
                '}';
    }
}