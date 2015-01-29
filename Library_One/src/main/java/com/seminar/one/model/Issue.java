package com.seminar.one.model;

import javax.persistence.*;
import javax.persistence.Entity;
import java.util.Calendar;
import java.util.Date;


@Entity
public class Issue {

    @Id @GeneratedValue
    @Column(name = "ID")
    private int issueID;
    @Column(name = "Reg_no")
    private int studentRegNo;
    @Column(name = "Book_ID")
    private int bookBookId;
    @Column(name = "Issue_Date")
    private Date issueDate;
    @Column(name = "Expire_Date")
    private Date expireDate;
    private boolean retrieved=false;
    @Column(name = "Comment")
    private String comment;
    @Transient
    private int issuePeriod=7;
    @Transient
    private int dateExceeded=0;
    @Transient
    private String bookName;

    public int getIssueID() {
        return issueID;
    }

    public void setIssueID(int issue_id) {
        this.issueID = issue_id;
    }

    public int getStudentRegNo() {
        return studentRegNo;
    }

    public void setStudentRegNo(int studentRegNo) {
        this.studentRegNo=studentRegNo;
    }

    public int getBookBookId() {
        return bookBookId;
    }

    public void setBookBookId(int bookBookId) {
        this.bookBookId=bookBookId;
    }

    public Date getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(Date issueDate) {
        this.issueDate = issueDate;
    }

    public Date getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(Date expireDate) {
        this.expireDate = expireDate;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public boolean isRetrieved() {
        return retrieved;
    }

    public void setRetrieved(boolean retrieved) {
        this.retrieved = retrieved;
    }

    public int getDateExceeded() {
        return dateExceeded;
    }

    public void setDateExceeded(int dateExceeded) {
        this.dateExceeded = dateExceeded;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public Issue() {
        Calendar c= Calendar.getInstance();
        issueDate=c.getTime();
        c.add(Calendar.DATE, issuePeriod);
        expireDate=c.getTime();
    }
}
