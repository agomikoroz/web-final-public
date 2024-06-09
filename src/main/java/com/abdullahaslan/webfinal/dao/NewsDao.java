package com.abdullahaslan.webfinal.dao;

import com.abdullahaslan.webfinal.model.News;
import com.abdullahaslan.webfinal.model.Rating;
import jakarta.persistence.Entity;
import jakarta.persistence.EntityManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.List;

@Repository
public class NewsDao {

    @Autowired
    private EntityManager entityManager;

    public List<News> searchWithTitle(String content) {
        return entityManager.createQuery("from News where title like '%"+ content +"%'", News.class)
                .getResultList();
    }

    public List<News> searchWithContent(String content) {
        return entityManager.createQuery("from News where content like :content", News.class)
                .setParameter("content", content)
                .getResultList();
    }

    public List<News> getNewsByAuthorId(Integer authorId) {
        return entityManager.createQuery("from News where authorId = :id", News.class)
                .setParameter("id", authorId)
                .getResultList();
    }

    public List<News> getNewsByCategoryId(int id) {
        return entityManager.createQuery("from News where categoryId = :id", News.class)
                .setParameter("id", id)
                .getResultList();
    }

    public void updateNewsRating(int newsId, Rating rating) {
        String sql = (rating == Rating.LIKE) ? "set rating = rating + 1 " : "set rating = rating - 1 ";
        entityManager.createQuery(sql + "where id = :id")
                .setParameter("id", newsId)
                .executeUpdate();
    }

    public News getNewsById(int id) {
        return entityManager.createQuery("from News where id = :id", News.class)
                .setParameter("id", id)
                .getSingleResult();
    }
}
