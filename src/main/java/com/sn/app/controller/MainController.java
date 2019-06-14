package com.sn.app.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.sn.app.domain.Task;
import com.sn.app.domain.TaskRepository;

@Controller
public class MainController {

	@Autowired
	private TaskRepository repo;

	@GetMapping("/")
	public String home() {
		Task dd = repo.save(new Task("test", "content test", new Date(), false));

		return "home";
	}
}
