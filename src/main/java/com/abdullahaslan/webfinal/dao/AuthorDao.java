package com.abdullahaslan.webfinal.dao;

import com.abdullahaslan.webfinal.model.Author;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AuthorDao {

    @Autowired
    private EntityManager entityManager;

    public Author getAuthor(int id)
    {
        return entityManager.createQuery("from Author where id = :id", Author.class)
                .setParameter("id", id)
                .getSingleResult();

    }

    public Author getAuthor(String name)
    {
        Query query = entityManager.createQuery("from Author where name = :name", Author.class)
                .setParameter("name", name);

        return (Author) query.getSingleResult();
    }

    public List<Integer> getAuthorsByName(String content) {
        return entityManager.createQuery("select id from Author where name like :name", Integer.class)
                .setParameter("name", content)
                .getResultList();
    }
}
