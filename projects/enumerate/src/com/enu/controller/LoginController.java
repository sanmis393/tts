package com.enu.controller;

import javax.annotation.Resource;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.enu.constants.UserTypes;
import com.enu.entity.User;
import com.enu.service.LoginService;

@Controller
public class LoginController {
	
	@Resource(name = "loginService")
	private LoginService loginService;

	@RequestMapping(value = {"/", "*"}, method = RequestMethod.GET)
	public ModelAndView welcomePage() {
		return new ModelAndView("enumLogin");
	}
	
	@RequestMapping(value = "/decide", method = RequestMethod.GET)
	public String home(ModelMap model, Authentication authentication) {
		authentication.getPrincipal();
		User user = loginService.getDataByUserName(authentication.getName());
		model.addAttribute("user", user);
		if (user.getUserRole().equalsIgnoreCase(UserTypes.ROLE_ADMIN.name())) {
			return "administration";
		} else if (user.getUserRole().equalsIgnoreCase(UserTypes.ROLE_BRANCH_MANAGER.name())) {
			return "branchAdministration";
		}

		return "productBilling";
	}

	
	
	@RequestMapping(value = "/error")
	public String error() {
		return "accessDenied";
	}
}