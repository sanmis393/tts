package com.enu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.enu.beans.BranchDetails;

@Controller
public class BranchController {
	
	@RequestMapping("/branchRegistraction")
	public ModelAndView registerBranch(){
		ModelAndView modelAndView = new ModelAndView("branchRegistration");
		modelAndView.addObject("branchDetails", new BranchDetails());
		return modelAndView;
	}
}
