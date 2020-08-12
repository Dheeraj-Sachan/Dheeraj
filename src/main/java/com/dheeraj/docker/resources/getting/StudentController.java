package com.dheeraj.docker.resources.getting;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/get")
public class StudentController {
    @GetMapping("/details")
    public String f(){
       return "Hello, Welcome to Yoofoo";
    }
}
