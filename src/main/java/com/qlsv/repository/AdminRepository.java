package com.qlsv.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.qlsv.model.Admin;

public interface AdminRepository extends CrudRepository<Admin, Integer> {

	@Query("SELECT u FROM Admin u WHERE u.email = :email")
	public Admin findByEmail(@Param("email") String email);
}
