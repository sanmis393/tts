package com.enu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.enu.beans.UserInfo;

@Controller
public class UserController {

	@RequestMapping("/userRegistractionPage")
	public ModelAndView userRegistractionPage(){
		ModelAndView modelAndView = new ModelAndView("userRegistration");
		modelAndView.addObject("userDetails", new UserInfo());
		return modelAndView;
	}
	
	@RequestMapping(value = "/userRegistraction", method = RequestMethod.POST)
	public @ResponseBody String userRegistraction(@RequestParam("userRole") String userRole){
		ModelAndView modelAndView = new ModelAndView("userRegistration");
		modelAndView.addObject("userDetails", new UserInfo());
		return "{message:success}";
	}
	
	
	
}
