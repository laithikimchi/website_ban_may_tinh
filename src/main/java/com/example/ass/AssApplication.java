package com.example.ass;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@ServletComponentScan
public class AssApplication {

	public static void main(String[] args) {
		SpringApplication.run(AssApplication.class, args);
	}

}
