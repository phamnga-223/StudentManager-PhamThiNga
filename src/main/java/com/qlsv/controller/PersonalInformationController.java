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
import org.springframework.web.bind.annotation.RequestParam;

import com.qlsv.model.PersonalInformation;
import com.qlsv.service.PersonalInformationService;

import jakarta.validation.Valid;

@Controller
public class PersonalInformationController {

	@Autowired
	private PersonalInformationService personalInformationService;
	
	@RequestMapping(value = "/personalInformation", method = RequestMethod.GET)
	public String getPersonalInformation(Model model, @RequestParam("idStudent") int idStudent) {
		List<PersonalInformation> list = personalInformationService.getAll(idStudent);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
		
		model.addAttribute("listInfo", list);
		model.addAttribute("dateFormat", dateFormat);
		model.addAttribute("idStudent", idStudent);
		model.addAttribute("GENDER", PersonalInformation.GENDER);
		model.addAttribute("RELATIONSHIP", PersonalInformation.RELATIONSHIP);
		
		return "personalInformation/index";
	}
	
	@RequestMapping(value = "/personalInformation-add", method = RequestMethod.GET)
	public String addPersonalInformation(Model model, @RequestParam("idStudent") int idStudent) {
		model.addAttribute("idStudent", idStudent);
		model.addAttribute("personalInfo", new PersonalInformation());
		
		return "personalInformation/add";
	}
	
	@RequestMapping(value = "/personalInformation-add", method = RequestMethod.POST)
	public String addPersonalInformation(Model model, @ModelAttribute("personalInfo") @Valid PersonalInformation personalInfo,
			BindingResult bindingResult) {
		if (bindingResult.hasErrors()) {
			return "personalInformation/add";
		}
		
		personalInformationService.addPersonalInformation(personalInfo);
		model.addAttribute("message", "Create Personal Information Success!");
		
		return getPersonalInformation(model, personalInfo.getIdStudent());
	}
}
