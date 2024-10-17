package com.qlsv.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.qlsv.model.PersonalInformation;

public interface PersonalInformationRepository extends CrudRepository<PersonalInformation, Integer> {

	@Query(value = "SELECT u FROM PersonalInformation u WHERE u.idStudent = :idStudent")
	public List<PersonalInformation> findByIdStudent(@Param("idStudent") int idStudent);
}
