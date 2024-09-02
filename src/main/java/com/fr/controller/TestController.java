package com.fr.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path="/test")
public class TestController {

    @GetMapping(path="/all")
    public String getAllUsers() {
         return "KhanhPQ test API springboot";
    }
}
