package com.in28minutes.todo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoRestController {
	@Autowired
	TodoService todoService;
	
	@RequestMapping(value = "/todos", method = RequestMethod.GET)
	public List<Todo> retrieveTodos(){
		return todoService.retrieveTodos("weizhich");
	}
	
	@RequestMapping(value = "/todos/{id}", method = RequestMethod.GET)
	public Todo retrieveTodo(@PathVariable Integer id){
		return todoService.retrieveTodo(id);
	}

}
