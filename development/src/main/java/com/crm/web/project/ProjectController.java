package com.crm.web.project;

import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crm.entity.ProjectInfo;
import com.crm.service.account.ShiroDbRealm.ShiroUser;
import com.crm.service.project.ProjectService;

@Controller
@RequestMapping(value = "/project")
public class ProjectController {
	@Autowired
	private ProjectService projectService;

	@RequestMapping(value = "create", method = RequestMethod.GET)
	public String add() {
		return "projects/projectForm";
	}

	@RequestMapping(value = "create", method = RequestMethod.POST)
	public String add(@Valid ProjectInfo entity, Model model) {
		entity.setCreateDate(new Date());
		ShiroUser user = getShiroUser();
		entity.setCreateUserId(user.id);
		entity.setCreateUserName(user.name);
		projectService.saveProject(entity);
		return "redirect:/project/list";
	}

	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String list(Model model) {
		List<ProjectInfo> projects = projectService.getAllProjects();
		model.addAttribute("projects", projects);

		return "projects/project_list";
	}

	@RequestMapping(value = "view/{id}", method = RequestMethod.GET)
	public String view(@PathVariable("id") Long id, Model model) {
		ProjectInfo project = projectService.getProjectById(id);
		model.addAttribute("project", project);

		return "projects/project_detail";
	}

	private ShiroUser getShiroUser() {
		return (ShiroUser) SecurityUtils.getSubject().getPrincipal();
	}
}
