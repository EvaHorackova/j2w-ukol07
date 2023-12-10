package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.data.domain.Pageable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PostController {

    private final PostService postService;

    @Autowired
    public PostController(PostService service) {
        this.postService = service;
    }

    @GetMapping("/")
    public ModelAndView seznam (@PageableDefault(size = 5) Pageable pageable) {
        ModelAndView result = new ModelAndView("index");
        result.addObject("seznam", postService.list(pageable));
        return result;
    }
    @GetMapping("/post/{slug}")
    public ModelAndView detail (@PathVariable String slug) {
        ModelAndView result = new ModelAndView("detail");
        result.addObject("post", postService.singlePost(slug));
        return result;
    }
}