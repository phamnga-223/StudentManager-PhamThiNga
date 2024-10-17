package com.qlsv.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import com.qlsv.model.Admin;
import com.qlsv.model.CustomUserDetails;
import com.qlsv.repository.AdminRepository;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	public UserDetails loadUserByUsername(String email) {
		Admin admin = null;
		
		try {
			admin = adminRepository.findByEmail(email);
		} catch (Exception ex) {
			System.err.println("Error!");
			ex.printStackTrace();
		}
		
		return new CustomUserDetails(admin);
	}
}
