package com.crm.web.team;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/team")
public class TeamController {

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String add() {
		return "team/teamForm";
	}

	@RequestMapping(value = "view", method = RequestMethod.GET)
	public String list(Model model) {
		return "team/team";
	}
}
