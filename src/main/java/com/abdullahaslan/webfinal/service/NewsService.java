package com.abdullahaslan.webfinal.service;

import com.abdullahaslan.webfinal.dao.*;
import com.abdullahaslan.webfinal.model.Author;
import com.abdullahaslan.webfinal.model.News;
import com.abdullahaslan.webfinal.model.Rating;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class NewsService {

    private NewsDao newsDao;
    private AuthorDao authorDao;
    private CategoryDao categoryDao;

    @Autowired
    public NewsService(NewsDao newsDao, AuthorDao authorDao, CategoryDao categoryDao) {
        this.newsDao = newsDao;
        this.authorDao = authorDao;
        this.categoryDao = categoryDao;
    }

    @Transactional
    public List<News> searchNews(String content)
    {
        List<News> allRelatedNews = new ArrayList<>();
        allRelatedNews.addAll(newsDao.searchWithTitle(content));
        allRelatedNews.addAll(newsDao.searchWithContent(content));
        List<Integer> authorIds = authorDao.getAuthorsByName(content);
        for (Integer authorId : authorIds) {
            allRelatedNews.addAll(newsDao.getNewsByAuthorId(authorId));
        }
        int categoryId = -1;
        try{
            categoryId = categoryDao.getCategory(content).getId();

        } catch (Exception ignored)
        {
        }
        allRelatedNews.addAll(newsDao.getNewsByCategoryId(categoryId));
        return allRelatedNews;
    }

    @Transactional
    public News getNews(int id)
    {
        return newsDao.getNewsById(id);
    }

    @Transactional
    public void updateNewsRating(int newsId, Rating rating)
    {
        newsDao.updateNewsRating(newsId, rating);
    }

    public Author getAuthorFromNewsId(int id) {
        return authorDao.getAuthor(newsDao.getNewsById(id).getAuthorId());
    }
}
