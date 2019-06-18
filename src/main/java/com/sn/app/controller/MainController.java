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

		model.addAttribute("list", repo.findByUser("admin"));

		return "home";
	}

	@PostMapping("/")
	public String homeSubmit(@RequestParam String content) {

		repo.save(new Task("admin", content, new Date(), false));

		return "redirect:/";
	}

	@GetMapping("/delete-task")
	public String deleteTask(@RequestParam Long id) {

		repo.deleteById(id);

		return "redirect:/";
	}

	@GetMapping("/done-task")
	public String doneTask(@RequestParam Long id) {

		Task task = repo.findById(id).get();
		task.switchDone();
		repo.save(task);

		return "redirect:/";
	}

	@PostMapping("/update-task")
	public String updateTask(@RequestParam Long id, @RequestParam String content) {

		Task task = repo.findById(id).get();
		task.setContents(content);
		task.setTargetDate(new Date());

		repo.save(task);

		return "redirect:/";

	}
}
