package com.qlsv.controller;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qlsv.model.Student;
import com.qlsv.service.StudentService;

import jakarta.validation.Valid;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/student", method = RequestMethod.GET)
	public String getStudent(Model model) {
		List<Student> list = studentService.getAll();
		SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		
		model.addAttribute("listStudent", list);
		model.addAttribute("dateFormat", df);
		
		return "student/index";
	}
	
	@RequestMapping(value = "/student-add", method = RequestMethod.GET)
	public String addStudent(Model model) {
		model.addAttribute("student", new Student());
		
		return "student/add";
	}
	
	@RequestMapping(value = "/student-add", method = RequestMethod.POST)
	public String addStudent(Model model, @ModelAttribute("student") @Valid Student student,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "student/add";
		}
		
		model.addAttribute("message", "Create student Success!");
		studentService.addStudent(student);
		
		return getStudent(model);
	}
}
