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

@Controller
@RequestMapping("")
public class HomeController {

	@GetMapping("/")
	public String form(Model model) throws Exception{

		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");



		model.addAttribute("name", "/webapp/WEB-INF/jsp/index.jsp");
		model.addAttribute("list", testList);
//		return "index";// /webapp/WEB-INF/jsp/index.jsp



		return "thymeleaf/index";
	}


	@ResponseBody
	@RequestMapping("/getValue")
	public String getValue() {
		return "Hello java spring boot!";
	}


}
