package com.seminar.one.model;

import javax.persistence.*;


@Entity
public class Student {

    @Id
    @Column(name = "Reg_no", nullable = false, insertable = true, updatable = true)
    private int studentid;
    @Column(name = "Name")
    private String name;
    @Column(name = "Phone")
    private Integer phone;
    @Column(name = "Email")
    private String email;

    public void setStudentid(Integer regNo) {
        this.studentid = regNo;
    }

    public Integer getStudentid() {
        return studentid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getPhone() {
        return phone;
    }

    public void setPhone(Integer phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
