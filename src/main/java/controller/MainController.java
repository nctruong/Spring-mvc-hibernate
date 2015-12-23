package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping(value = {"/", "/login" }, method = RequestMethod.GET)
	public String login(ModelMap model) {
		model.addAttribute("login", "please login to system !");
		return "login";
	}

	
}
