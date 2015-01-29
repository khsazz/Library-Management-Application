package com.seminar.one.model;

import javax.persistence.*;
import java.util.Arrays;
import java.util.Collection;

@Entity
public class Book {

    @Id
    @Column(name = "ID", nullable = false, insertable = true, updatable = true)
    private int bookId;
    @Column(name = "ISBN")
    private String isbn;
    @Column(name = "Title")
    private String title;
    @Column(name = "Authors")
    private String authors;
    @Column(name = "Availibility")
    private boolean availibility=true;
    @Column(name = "BookShelf")
    private String bookShelf;
    @Column(name = "Donor")
    private String donor;
    @Column(name = "Comment")
    private String comment;
    @Column(name = "Book_Group")
    private String bookGroup;
    private byte[] bookcover;
    @Transient
    private String encodedImage;

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthors() {
        return authors;
    }

    public void setAuthors(String authors) {
        this.authors = authors;
    }

    public boolean getAvailibility() {
        return availibility;
    }

    public void setAvailibility(boolean availibility) {
        this.availibility = availibility;
    }

    public String getBookShelf() {
        return bookShelf;
    }

    public void setBookShelf(String bookShelf) {
        this.bookShelf = bookShelf;
    }

    public String getDonor() {
        return donor;
    }

    public void setDonor(String donor) {
        this.donor = donor;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getBookGroup() {
        return bookGroup;
    }

    public void setBookGroup(String bookGroup) {
        this.bookGroup = bookGroup;
    }

    public byte[] getBookcover() {
        return bookcover;
    }

    public void setBookcover(byte[] bookcover) {
        this.bookcover = bookcover;
    }

    public String getEncodedImage() {
        return encodedImage;
    }

    public void setEncodedImage(String encodedImage) {
        this.encodedImage = encodedImage;
    }
}
