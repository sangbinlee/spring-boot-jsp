package com.dev9.board.college;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dev9.common.Common;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/college")
public class JspController {

	@Autowired
	private Common c;

	/**
	 * http://localhost:8080/college/form.jsp
	 * jsp 확장자는 안됨
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("/form.jsp")// 호출 안됨
//	@GetMapping("/form.jsps")// 호출 됨
	public String formJsp(Model model) throws Exception {
		log.info("//////////////////");
		log.info("form.jsp");
		model.addAttribute("name", "/WEB-INF/form.jsp");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		model.addAttribute("list", testList);
//		return "form";
		return "/form";
	}

	/**
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@GetMapping("/form.jsps")// 호출 됨
	public String formJsps(Model model) throws Exception {
		log.info("//////////////////");
		log.info("form.jsp");
		model.addAttribute("name", "/WEB-INF/form.jsp");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		model.addAttribute("list", testList);
//		return "form";
		return "/form";
	}

	@GetMapping("board9/form2")
//	@GetMapping("form.jsp")// 이건 안됨
	public String formBoard9(Model model) throws Exception {
		log.info("//////////////////");
		log.info("http://localhost:8080/college/board9/form2");
		model.addAttribute("name", "/spring-boot-jsp/src/main/webapp/WEB-INF/jsp/board9/form2.jsp");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("x");
		testList.add("x");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		model.addAttribute("list", testList);
		return "board9/form2";
	}



	@GetMapping("form2.do")
	public String form2Do(Model model) {
		log.info("//////////////////");
		log.info("form2.do");

		model.addAttribute("name", "asdb");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		model.addAttribute("list", testList);
		return "/form2";
	}

	@GetMapping("form")
//	@GetMapping("form.jsp")// 이건 안됨
	public String form(Model model) throws Exception {
		log.info("//////////////////");
		log.info("form.jsp");
		model.addAttribute("name", "/WEB-INF/form.jsp");
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		model.addAttribute("list", testList);
//		return "form";
		return "/form";
	}

	@GetMapping("form.do")
	public ModelAndView formDo() {
		log.info("//////////////////");
		log.info("form.do");


//		Common c = new Common();
		String commonTest = c.commonTest();
		log.info("외부 라이브러리 생성 및 추가 후 테스트 commonTest={}", commonTest);
		log.info("@Autowired test :: 외부 라이브러리 생성 및 추가 후 테스트 commonTest={}", commonTest);






//		ModelAndView mav = new ModelAndView("form");
		ModelAndView mav = new ModelAndView("/form");
		mav.addObject("name", "JSP");

		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("b");
		testList.add("b");
		testList.add("b");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		testList.add("c");
		mav.addObject("list", testList);
		return mav;
	}

	@GetMapping("detail.jsp")
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
