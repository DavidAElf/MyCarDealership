package com.claim.project.MyCarDealership;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = "com.claim.project")
@SpringBootApplication
public class MyCarDealershipApplication extends SpringBootServletInitializer {
	
	@Override
	protected SpringApplicationBuilder 
	configure(SpringApplicationBuilder application) {
		return application.sources(MyCarDealershipApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(MyCarDealershipApplication.class, args);
	}

}
