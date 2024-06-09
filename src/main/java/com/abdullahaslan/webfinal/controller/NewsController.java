package com.abdullahaslan.webfinal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NewsController {

    @RequestMapping("/")
    public String homePage()
    {
        return "home";
    }

    @RequestMapping("/search")
    public String searchPage()
    {
        return "search";
    }

    @RequestMapping("/detail/{id}")
    public String detailPage(@PathVariable(name="id") int id)
    {
        return "detail";
    }

}
