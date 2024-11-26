package com.dev9.board.college;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/college")
public class ThymeleafController {

	@GetMapping("/form.html")
	public String form(Model model) {
		log.info("//////////////////");
		log.info("form.html");
		model.addAttribute("name", "asdb");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		model.addAttribute("list", testList);
		return "thymeleaf/form";
	}

	@GetMapping("/form2.html")
	public String form2(Model model) {
		log.info("//////////////////");
		log.info("form2.html");
		model.addAttribute("name", "asdb");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		model.addAttribute("list", testList);
		return "th/form2";
	}
	@GetMapping("detail.html")
	public ModelAndView detail(@PathVariable Long ownerId, @PathVariable Long id) {
		ModelAndView mav = new ModelAndView("detail");
		mav.addObject("name", "JSP");

		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		mav.addObject("list", testList);
		return mav;
	}











}
