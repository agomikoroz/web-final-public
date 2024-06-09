package com.abdullahaslan.webfinal.controller;

import com.abdullahaslan.webfinal.model.Author;
import com.abdullahaslan.webfinal.model.News;
import com.abdullahaslan.webfinal.model.RequestEntity.NewsRatingRequest;
import com.abdullahaslan.webfinal.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/news")
public class NewsRestController {

    private final NewsService newsService;

    @Autowired
    public NewsRestController(NewsService newsService) {
        this.newsService = newsService;
    }

    @GetMapping("/search")
    public List<News> searchNews(@RequestParam("value") String value)
    {
        return newsService.searchNews(value);
    }

    @GetMapping("/get")
    public News getNews(@RequestParam("id") int id)
    {
        return newsService.getNews(id);
    }

    @PutMapping("/rate")
    public void updateNewsRating(@RequestBody NewsRatingRequest request)
    {
        newsService.updateNewsRating(request.getNewsId(), request.getRating());
    }

    @GetMapping("/getAuthorFromNewsId")
    public Author getAuthorFromNewsId(@RequestParam("id") int id)
    {
        Author author = newsService.getAuthorFromNewsId(id);
        System.out.println(author);
        return author;
    }
}
