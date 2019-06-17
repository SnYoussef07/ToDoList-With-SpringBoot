package com.sn.app.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sn.app.domain.Task;
import com.sn.app.domain.TaskRepository;

@Controller
public class MainController {

	@Autowired
	private TaskRepository repo;

	@GetMapping("/")
	public String home(Model model) {
		/*
		 * Task dd = repo.save(new Task("admin", "content test", new Date(), false));
		 * Task dd2 = repo.save(new Task("lol", "content test", new Date(), false));
		 */

		model.addAttribute("list", repo.findByUser("admin"));

		return "home";
	}

	@PostMapping("/")
	public String homeSubmit(@RequestParam String content) {
		// Task dd = repo.save(new Task("admin", "content test", new Date(), false));
		// Task dd2 = repo.save(new Task("lol", "content test", new Date(), false));
		repo.save(new Task("admin", content, new Date(), false));

		return "redirect:/";
	}

	@GetMapping("/delete-task")
	public String deleteTask(@RequestParam Long id) {

		repo.deleteById(id);
		
		
		return "redirect:/";
	}
}
