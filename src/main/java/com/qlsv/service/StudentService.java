package com.qlsv.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qlsv.model.Student;
import com.qlsv.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	private StudentRepository studentRepository;
	
	public List<Student> getAll() {
		List<Student> list = new ArrayList<>();
		
		try {
			studentRepository.findAll().forEach(student -> list.add(student));
		} catch (Exception ex) {
			System.err.println("Error!");
			ex.printStackTrace();
		}
		
		return list;
	}
	
	public Student addStudent(Student student) {
		Student stu = null;
		
		try {
			stu = studentRepository.save(student);
		} catch (Exception ex) {
			System.err.println("Error!");
			ex.printStackTrace();
		}
		
		return stu;
	}
}
