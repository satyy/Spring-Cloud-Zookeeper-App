package com.sample.zookeeper.controller;

import com.sample.zookeeper.config.GreetingsProperties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingsController {

    @Autowired
    private GreetingsProperties properties;

    @GetMapping("/greeting")
    public String displayProperties() {
        return properties.getMessage().concat(properties.getName());
    }

}
