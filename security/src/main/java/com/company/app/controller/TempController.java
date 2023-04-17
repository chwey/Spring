package com.company.app.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.company.app.mapper.TempMapper;



@RestController //@ResponseBody 포함
public class TempController {
	
	@Autowired
		TempMapper tempMapper;
	
	@GetMapping("/getDate")
	public Date getDate() {
		return tempMapper.getDate();
	}
	
}