package com.crm.web.project;

import java.util.Date;

import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crm.entity.DiscussDetail;
import com.crm.entity.DiscussMain;
import com.crm.entity.ProjectInfo;
import com.crm.service.account.ShiroDbRealm.ShiroUser;
import com.crm.service.project.DiscussService;
import com.crm.service.project.ProjectService;

@Controller
@RequestMapping(value = "/discuss")
public class DiscussController {
	@Autowired
	private DiscussService discussService;
	@Autowired
	private ProjectService projectService;

	@RequestMapping(value = "createMain/{id}", method = RequestMethod.GET)
	public String createMain(@PathVariable("id") Long projId, Model model) {
		ProjectInfo project = projectService.getProjectById(projId);
		model.addAttribute("project", project);
		model.addAttribute("addDiscuss", "true");
		return "projects/project_detail";
	}

	@RequestMapping(value = "createMain", method = RequestMethod.POST)
	public String createMain(@Valid DiscussMain entity, Model model) {
		entity.setCreateDate(new Date());
		ShiroUser user = getShiroUser();
		entity.setCreateUserId(user.id);
		entity.setCreateUserName(user.name);
		discussService.saveDiscussMain(entity);
		return "redirect:/project/view/" + entity.getProjectId();
	}

	@RequestMapping(value = "createDetail", method = RequestMethod.POST)
	public String createDetail(@Valid DiscussDetail entity, Model model) {
		entity.setCreateDate(new Date());
		ShiroUser user = getShiroUser();
		entity.setUserId(user.id);
		entity.setUserName(user.name);
		discussService.saveDiscussMain(entity);
		return "redirect:/discuss/detail/" + entity.getDiscussMainId();
	}

	@RequestMapping(value = "detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable("id") Long mainId, Model model) {
		DiscussMain discussMain = discussService.getDiscussMainById(mainId);
		model.addAttribute("discussMain", discussMain);
		return "projects/discussDetail";
	}

	private ShiroUser getShiroUser() {
		return (ShiroUser) SecurityUtils.getSubject().getPrincipal();
	}
}
