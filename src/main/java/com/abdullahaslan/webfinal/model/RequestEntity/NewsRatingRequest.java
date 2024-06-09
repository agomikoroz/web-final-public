package com.abdullahaslan.webfinal.model.RequestEntity;

import com.abdullahaslan.webfinal.model.Rating;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class NewsRatingRequest {

    private Rating rating;

    @Id
    private int newsId;

    public NewsRatingRequest(int rating, int newsId) {
        this.rating = (rating == 1) ? Rating.LIKE : Rating.DISLIKE;
        this.newsId = newsId;
    }

    public Rating getRating() {
        return rating;
    }

    public void setRating(Rating rating) {
        this.rating = rating;
    }

    public int getNewsId() {
        return newsId;
    }

    public void setNewsId(int newsId) {
        this.newsId = newsId;
    }

    @Override
    public String toString() {
        return "NewsRatingRequest{" +
                "rating=" + rating +
                ", newsId=" + newsId +
                '}';
    }
}
