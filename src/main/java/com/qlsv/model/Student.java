package com.qlsv.model;

import java.text.DateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;

@Entity
public class Student {

	@Id
	private int id;
	
	@NotBlank(message = "FullName is mandatory")
	private String fullName;

	@DateTimeFormat(iso = ISO.DATE)
	private Date birthDate;
	
	@Min(value = 1, message = "Gender is 1 or 2")
	@Max(value = 2, message = "Gender is 1 or 2")
	private int gender;
	
	@Min(value = 0, message = "GPA is from 0-10")
	@Max(value = 10, message = "GPA is from 0-10")
	private int GPA;

	public Student() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public int getGPA() {
		return GPA;
	}

	public void setGPA(int gPA) {
		GPA = gPA;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", fullName=" + fullName + ", birthDate=" + birthDate + ", gender=" + gender
				+ ", GPA=" + GPA + "]";
	}
}
