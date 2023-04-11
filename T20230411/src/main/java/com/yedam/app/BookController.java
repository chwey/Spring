package com.yedam.app;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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
	public void register(BookVO book) {
		log.info("컨트롤 등록............");		
		bookService.register(book);
		
	
	}
	
	@GetMapping("/register")
	public void register() {
		//등록화면
	log.info("등록화면.................");
	}


}
