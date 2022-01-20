package com.apmm.myFirstProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class MyFirstProjectApplication {
	@GetMapping("/Welcome")
	public String welcome(){
		return "Final Test...cross finger..123";
	}
	public static void main(String[] args) {
		SpringApplication.run(MyFirstProjectApplication.class, args);
	}
	/*echo "# myFirstProject" >> README.md
	git init
	git add README.md
	git commit -m "first commit"
	git branch -M main
	git remote add origin https://github.com/anusuyadevi-sb/myFirstProject.git
	git push -u origin main*/
}
