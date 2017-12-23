package com.sample.example.management;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ProfileBankService {

	@Autowired
	private ProfileBankRepository profileBankRepository;
	
	public List<Profile_Bank> getAllStudents(){
		List<Profile_Bank> students = new ArrayList<>();
		profileBankRepository.findAll().forEach(students::add);
		return students;
	}
	
	public Profile_Bank getStudent(String passportNo){
		return profileBankRepository.findOne(passportNo);
	}
	
	public void addInfoStudent(Profile_Bank student){
		profileBankRepository.save(student);
	}
	public void updateInfoStudent(String passportNo,Profile_Bank student){
		profileBankRepository.save(student);
	}
	
}
