package com.example.cicdtest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/test")
@RestController
public class TestController {

    @Value("${my-secret}")
    private String mySecret;

    @GetMapping
    public ResponseEntity<String> test() {
        return ResponseEntity.ok(mySecret);
    }

    @GetMapping("/2")
    public ResponseEntity<String> test2() {
        return ResponseEntity.ok("v1");
    }

}
