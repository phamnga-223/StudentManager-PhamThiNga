package com.qlsv.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.qlsv.service.AdminService;

@Component
public class AuthProvider implements AuthenticationProvider {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private AdminService adminService;
	
	private static UsernamePasswordAuthenticationToken authenticateAgainstThirdPartyAndGetAuthenticationToken (String email, String password) {
		final List<GrantedAuthority> grantedAuths = new ArrayList<>();
		grantedAuths.add(new SimpleGrantedAuthority("ROLE_ADMIN"));
		final UserDetails principal = new User(email, password, grantedAuths);
		
		return new UsernamePasswordAuthenticationToken(principal, password, grantedAuths);
	}

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String email = authentication.getName();
		String password = authentication.getCredentials().toString();
		
		UserDetails admin = adminService.loadUserByUsername(email);
		String adminPassword = admin.getPassword();
		if (passwordEncoder.matches(password, adminPassword)) {
			return authenticateAgainstThirdPartyAndGetAuthenticationToken(email, password);
		} else {
			return null;
		}
	}

	@Override
	public boolean supports(Class<?> authentication) {
		return true;
	}
}
