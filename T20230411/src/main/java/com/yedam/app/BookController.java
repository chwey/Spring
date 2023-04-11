package com.yedam.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yedam.domain.BookVO;
import com.yedam.service.BookService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class BookController {
	
	@Setter(onMethod_ = @Autowired)
	private BookService bookService;
	
	@GetMapping("/index")
	public void index() {
	log.info("index........");
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String register(BookVO book, RedirectAttributes rttr) {
		System.out.println("=================");
		System.out.println(book);
		log.info("컨트롤 등록............");		
		bookService.register(book);
		
		rttr.addFlashAttribute("result",book.getBookNo());
		
		return "redirect:/index";
	
	}
	
	@GetMapping("/register")
	public void register() {
		//등록화면
	log.info("등록화면.................");
	}


}
