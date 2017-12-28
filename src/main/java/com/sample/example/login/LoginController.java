package com.sample.example.login;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sample.example.address.AddressService;
import com.sample.example.address.Province;
import com.sample.example.management.ProfileBankService;
import com.sample.example.management.ProfileForm;
import com.sample.example.management.Profile_Bank;


import org.springframework.web.bind.annotation.RestController;

@Controller
//@RestController
public class LoginController {
	private Profile_Bank infoStudent;
	
	@Autowired
	private ProfileBankService profileBankService;
	
	@Autowired
	private AddressService addressService;
	
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String issuedDate = sdf.format(date);
	String expiredDate = (date.getYear()+1900+4)+issuedDate.substring(4, 10);
	
	@Autowired
	private LoginService loginService;
	
	@RequestMapping("/students")
	public List<Login> getAllStudents(){
		return loginService.getAllStudents();
	}
	
	@RequestMapping("/students/{passportNo}")
	public Login getStudents(@PathVariable String passportNo){
		return loginService.getStudents(passportNo);
	}
//	
	@RequestMapping(value ="/check", method = RequestMethod.POST)
	public boolean check(@RequestBody LoginForm studentLogin){
		Login student = loginService.getStudents(studentLogin.getPassportno());
		System.out.println("student :"+student.toString());
		System.out.println(studentLogin.getPassportno()+" = "+student.getPassportno());
		System.out.println(studentLogin.getBirthday()+" = ..."+student.getBirthday());
		if(String.valueOf(studentLogin.getBirthday()).equals(String.valueOf(student.getBirthday()))) {
			System.out.println("check true");
			return true;
		}else {
			System.out.println("check false");
			return false;
		}
		
	}
	
	@RequestMapping(value ="/profile", method = RequestMethod.POST)
	public String goToForm(@ModelAttribute("loginForm") LoginForm studentLogin, BindingResult result,Model model){
		Login student = loginService.getStudents(studentLogin.getPassportno());
		if(student!=null) {
			Profile_Bank infoStudent;
			System.out.println(studentLogin.toString());
			System.out.println(student.toString());
			System.out.println(profileBankService.getStudent(studentLogin.getPassportno().toString()));
			if(studentLogin.getBirthday().equals(student.getBirthday())) {
				if(profileBankService.getStudent(studentLogin.getPassportno())==null) {
					infoStudent = new Profile_Bank(student);
				}else {
					infoStudent = profileBankService.getStudent(studentLogin.getPassportno());
				}
				model.addAttribute("infoStudent", infoStudent);
				model.addAttribute("provinces", addressService.getAllProvince());
				model.addAttribute("amphurs", addressService.getAllAmphur());
				model.addAttribute("districts", addressService.getAllDistrict());
				model.addAttribute("issuedDate",issuedDate);
				model.addAttribute("expiredDate",expiredDate);
				System.out.println("TYPE OF : "+studentLogin.getPassportno().getClass().getName());
				try {
					long passport = Long.parseLong(studentLogin.getPassportno());
					if(studentLogin.getPassportno().length()==13) {
					model.addAttribute("type", "Thai");
					System.out.println("Thai");
					}
				} catch (NumberFormatException e){
					System.out.println("error "+e);
					System.out.println("Foreigner");
					model.addAttribute("type", "Foreigner");
				}
				return "profile";
			}
			return login();
		}
			return login();
		
	}
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public static String login(){
		return "login";
	}
	
	@RequestMapping(value ="/hello", method = RequestMethod.GET)
    public String home(Model model) {
		model.addAttribute("provinces", addressService.getAllProvince());
		model.addAttribute("provinceId", 0);
		model.addAttribute("amphurId", 0);
		model.addAttribute("districtId", 0);
		model.addAttribute("amphurs", addressService.getAllAmphur());
		model.addAttribute("districts", addressService.getAllDistrict());
        return "test";
    }

}
