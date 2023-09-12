package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dto.UserDto;
import com.entity.Category;
import com.entity.Role;
import com.entity.User;
import com.service.categoryService;
import com.service.roleService;
import com.service.userService;

@Controller
public class UserController {
	@Autowired
	private categoryService categoryservice;
	
	@Autowired
	private roleService roleService;
	
	@Autowired
	private userService userService;

	@RequestMapping("/")
	public String homepage(Model model) {
		List<Category> categories= categoryservice.getCategories();
		model.addAttribute("category", categories);
		
	//	System.out.println("test  : " +categories.size());
		return "home";
	}
	
	@GetMapping("/login")
	public String userLogin(Model model) {
		return "login";
	}
//	@PostMapping("/dangnhap")
//	public String loginauth() {
//		return "redirect:/";
//	}
	
	@PostMapping("/register")
	public String adduser(@ModelAttribute UserDto userdto) {
		User newUser = new User();
		newUser.setEmail(userdto.getEmail());
		newUser.setFullname(userdto.getFullname());
		newUser.setPassword(userdto.getPassword());
		newUser.setStatus(1);
		Role role = roleService.getRole(userdto.getRole_id());
		newUser.setRole(role);
		userService.saveUser(newUser);
		return "redirect:/login";
	}
	
	@GetMapping("/detail-company")
	public String detailcom() {
		return "detail-company";
	}
	
	@GetMapping("/detail-post")
	public String detailposter() {
		return "detail-post";
	}
	
	@GetMapping("/edit-job")
	public String edjtjobs() {
		return "edit-job";
	}
	
	@GetMapping("/list-apply-jobs")
	public String listapjob() {
		return "list-apply-job";
	}
	
	@GetMapping("/list-follow-company")
	public String listfollowcompany() {
		return "list-follow-company";
	}
	
	@GetMapping("/list-job")
	public String listjobs() {
		return "listjob";
	}
	
	@GetMapping("/list-re")
	public String listres() {
		return "list-re";
	}
	
	@GetMapping("/list-save-job")
	public String listsavejobs() {
		return "list-save-job";
	}
	
	@GetMapping("/list-users")
	public String listusers() {
		return "list-user";
	}
	
	@GetMapping("/post-company")
	public String postcampany() {
		return "post-company";
	}
	
	@GetMapping("/post-job")
	public String postjobs() {
		return "post-job";
	}
	
	@GetMapping("/post-list")
	public String postlists() {
		return "post-list";
	}
	
	@GetMapping("/profile")
	public String profiles() {
		return "profile";
	}
	
	@GetMapping("/recruitment")
	public String recruitments() {
		return "recruitment";
	}
	
	@PostMapping("/result-searchs")
	public String resultsearch() {
		return "result-search";
	}
	
	@PostMapping("/result-search-addresses")
	public String resultsearchaddress() {
		return "result-search-address";
	}
	
	@PostMapping("/result-search-users")
	public String resultsearchuser() {
		return "result-search-user";
	}
	
}
