package com.sample.example.login;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sample.example.management.ProfileBankService;
import com.sample.example.management.Profile_Bank;


//import org.springframework.web.bind.annotation.RestController;

@Controller
//@RestController
public class LoginController {
	private Profile_Bank infoStudent;
	
	@Autowired
	private ProfileBankService profileBankService;
	
	
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String issuedDate = sdf.format(date);
	String expiredDate = (date.getYear()+1900+4)+issuedDate.substring(4, 10);
			
	
//	Calendar cal = Calendar.getInstance();
//	Date today = cal.getTime();
//	cal.add(Calendar.YEAR, 1); // to get previous year add -1
//	Date nextYear = cal.getTime();
	
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
//	public boolean check(@ModelAttribute("loginForm") LoginForm studentLogin){
//		Login student = loginService.getStudents(studentLogin.getPassportno());
//		if(studentLogin.getBirthday().equals(student.getBirthday())) {
//			System.out.println("check true");
//			return true;
//		}
//		System.out.println("check false");
//		return false;
//	}
	
	@RequestMapping(value ="/login", method = RequestMethod.POST)
	public String goToForm(@ModelAttribute("loginForm") LoginForm studentLogin, BindingResult result,Model model){
//		Profile_Bank student = profileBankService.getStudent(studentLogin.getPassportno());
		Login student = loginService.getStudents(studentLogin.getPassportno());
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
			model.addAttribute("issuedDate",issuedDate);
			model.addAttribute("expiredDate",expiredDate);
			if(studentLogin.getPassportno().length()==13) {
				model.addAttribute("type", "Thai");
				System.out.println("Thai");
			}else {
				model.addAttribute("type", "Foreigner");
			}
			return "detail";
		}
		return login();
	}
	
	@RequestMapping(value ="/login", method = RequestMethod.GET)
	public static String login(){
		return "login";
	}
	
	@RequestMapping(value ="/hello", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

}
