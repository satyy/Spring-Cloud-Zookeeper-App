package com.sample.zookeeper.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@Getter
@Setter
@ConfigurationProperties("greeting")
public class GreetingsProperties {

    private String message;
    private String name;

}
