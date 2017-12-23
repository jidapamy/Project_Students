package com.sample.example.login;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

	@Autowired
	private LoginRepository loginRepository;
	
	public List<Login> getAllStudents(){
		List<Login> students = new ArrayList<>();
		loginRepository.findAll().forEach(students::add);
		return students;
	}
	
	public Login getStudents(String passportNo){
		return loginRepository.findOne(passportNo);
	}
	
}
