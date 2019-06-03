package com.lab25admin.lab25Admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ItemsController {

	@Autowired
	ItemsRepository i;
	
	
	
	@RequestMapping ("/")
	public ModelAndView displayHome() {
		return new ModelAndView("index", "allStuff", i.findAll());
	}

	
	@RequestMapping ("/add")
	public ModelAndView addNew(@RequestParam ("name") String n, @RequestParam ("description") String d, @RequestParam ("quantity") int q, @RequestParam ("price") double p) {
		i.save(new Items(n,d,q,p));
		return new ModelAndView("redirect:/", "addNew", i.findAll());
	}
	
	
	@RequestMapping("/addLink")
	public ModelAndView addPage() {
		return new ModelAndView("add-page");

	}
	
	@RequestMapping("/update-form")
	public ModelAndView getItemId(@RequestParam("id") int id) {
		return new ModelAndView("update", "id", id);
	}
	
	@RequestMapping("/update-item")
	public ModelAndView updateItem(Items items) {
		i.save(items);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") int id) {
		i.deleteById(id);
		return new ModelAndView("redirect:/");
	}
	
}
