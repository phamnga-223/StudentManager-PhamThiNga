package com.qlsv.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

@Entity
public class PersonalInformation {

	public static final String[] GENDER = {"Nam", "Nữ"};
	public static final String[] RELATIONSHIP = {"Bố", "Mẹ", "Anh", "Chị", "Em"};
	
	@Id
	private int id;
	
	private int idStudent;
	
	@NotBlank(message = "FullName is mandatory")
	private String fullName;
	
	@Min(value = 1, message = "Relation is from 1-5")
	@Max(value = 5, message = "Relation is from 1-5")
	private int relationship;
	
	@DateTimeFormat(iso = ISO.DATE)
	private Date birthDate;
	
	@Min(value = 1, message = "Gender is 1 or 2")
	@Max(value = 2, message = "Gender is 1 or 2")
	private int gender;

	public PersonalInformation() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdStudent() {
		return idStudent;
	}

	public void setIdStudent(int idStudent) {
		this.idStudent = idStudent;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int getRelationship() {
		return relationship;
	}

	public void setRelationship(int relationship) {
		this.relationship = relationship;
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
}
