package com.in28minutes.todo;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class TodoController {
	@Autowired
	TodoService todoService;
	private final static String user = "weizhich";
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@RequestMapping(value = "/list-todos", method = RequestMethod.GET)
	public String listTodos(ModelMap model) {
		model.addAttribute("todos", todoService.retrieveTodos(user));
		return "list-todos";
	}
	
	@RequestMapping(value = "/add-todo", method = RequestMethod.GET)
	public String showTodo(ModelMap model) {
		model.addAttribute("todo", new Todo(0, "weizhi", "Default Description", new Date(), false));
		return "todo";
	}
	
	@RequestMapping(value = "/add-todo", method = RequestMethod.POST)
	public String addTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
		if(result.hasErrors()) {
			return "todo";
		}
		todoService.addTodo("weizhich", todo.getDescription(), new Date(), false);
		model.clear();
		return "redirect:list-todos";
	}
	
	@RequestMapping(value = "/update-todo", method = RequestMethod.GET)
	public String updateTodo(ModelMap model, @RequestParam Integer id) {
		Todo todo = todoService.retrieveTodo(id);
		model.addAttribute("todo", todo);
		return "todo";
	}
	
	@RequestMapping(value = "/update-todo", method = RequestMethod.POST)
	public String updateTodo(ModelMap model, @Valid Todo todo, BindingResult result) {
		if(result.hasErrors()) {
			return "todo";
		}
		todo.setUser(user);
		todo.setIsDone(false);
		todoService.updateTodo(todo);
		return "redirect:list-todos";
	}
	
	@RequestMapping(value = "/delete-todo", method = RequestMethod.GET)
	public String deleteTodo(ModelMap model, @RequestParam Integer id) {
		//Delete todo
		todoService.deleteTodo(id);
		model.clear();
		return "redirect:list-todos";
	}

}
