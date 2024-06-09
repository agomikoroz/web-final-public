package com.abdullahaslan.webfinal.model;

import jakarta.persistence.*;

import java.sql.Timestamp;

@Entity
@Table(name="news")
public class News {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="image")
    private String image;

    @Column(name="title")
    private String title;

    @Column(name="content")
    private String content;

    @Column(name="release_date")
    private Timestamp releaseDate;

    @Column(name="author_id")
    private int authorId;

    @Column(name="category_id")
    private int categoryId;

    @Column(name="rating")
    private int rating;

    public News()
    {

    }

    public News(String image, String title, String content, Timestamp releaseDate, int authorId, int categoryId) {
        this.image = image;
        this.title = title;
        this.content = content;
        this.releaseDate = releaseDate;
        this.authorId = authorId;
        this.categoryId = categoryId;
    }

    public News(String image, String title, String content, Timestamp releaseDate, int authorId, int categoryId, int rating) {
        this.image = image;
        this.title = title;
        this.content = content;
        this.releaseDate = releaseDate;
        this.authorId = authorId;
        this.categoryId = categoryId;
        this.rating = rating;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Timestamp releaseDate) {
        this.releaseDate = releaseDate;
    }

    public int getAuthorId() {
        return authorId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
