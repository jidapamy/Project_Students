package com.sample.example.address;

import java.sql.Date;

public class LoginForm {
	private String passportno;
	private Date birthday;
	
	public LoginForm() {
	}
	
	public LoginForm(String passportno, Date birthday) {
		super();
		this.passportno = passportno;
		this.birthday = birthday;
	}
	public String getPassportno() {
		return passportno;
	}
	public void setPassportno(String passportno) {
		this.passportno = passportno;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "LoginForm [passportno=" + passportno + ", birthday=" + birthday + "]";
	}
	
	
	
	
}
