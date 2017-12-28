package com.sample.example.management;

import java.util.Calendar;
import java.util.Date;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sample.example.login.LoginController;



//import org.springframework.web.bind.annotation.RestController;

@Controller
//@RestController
public class ProfileBankController {
	private Profile_Bank infoStudent;
	
	@Autowired
	private ProfileBankService profileBankService;
	
	@RequestMapping(method=RequestMethod.POST, value="/submit")
	public String submit(@ModelAttribute("managementForm") Profile_Bank infoStudent, HttpServletResponse response) throws UnsupportedEncodingException {
		response.setContentType("charset=UTF-8");
		System.out.println("managementForm : "+infoStudent.toString());
		if(infoStudent.getNationality()!=null||infoStudent.getNationality()!="Thai") {
			infoStudent.setNationality("Thai");
			infoStudent.setL_Country("Thailand");
			infoStudent.setM_Country("Thailand");
			System.out.println("After managementForm : "+infoStudent.toString());
		}else {
		}
		profileBankService.updateInfoStudent(infoStudent.getPassportno(), infoStudent);
		System.out.println("Update");
		return LoginController.login();
	}
}
