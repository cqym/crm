package com.crm.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * @author wangwei3
 *
 */
@Controller
@RequestMapping(value = "/menu")
public class MenuController {
	
	@RequestMapping
	public String menu() {
		return "menu";
	}
}
