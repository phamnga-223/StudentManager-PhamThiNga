package com.qlsv.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlsv.model.PersonalInformation;
import com.qlsv.repository.PersonalInformationRepository;

@Service
public class PersonalInformationService {

	@Autowired
	private PersonalInformationRepository personalInfomationRepository;
	
	public List<PersonalInformation> getAll(int idStudent) {
		List<PersonalInformation> list = new ArrayList<>();
		
		try {
			list = personalInfomationRepository.findByIdStudent(idStudent);
		} catch (Exception ex) {
			System.err.println("Error!");
			ex.printStackTrace();
		}
		
		return list;
	}
	
	public PersonalInformation addPersonalInformation(PersonalInformation info) {
		PersonalInformation data = null;
		
		try {
			data = personalInfomationRepository.save(info);
		} catch (Exception ex) {
			System.err.println("Error!");
			ex.printStackTrace();
		}
		
		return data;
	}
}
