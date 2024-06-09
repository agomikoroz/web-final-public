package com.abdullahaslan.webfinal.dao;

import com.abdullahaslan.webfinal.model.Category;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CategoryDao {

    @Autowired
    private EntityManager entityManager;

    public Category getCategory(int id)
    {
        Query query = entityManager.createQuery("from Category where id = :id", Category.class)
                .setParameter("id", id);

        return (Category) query.getSingleResult();
    }

    public Category getCategory(String title)
    {
        Query query = entityManager.createQuery("from Category where title = :title", Category.class)
                .setParameter("title", title);

        return (Category) query.getSingleResult();
    }

}
