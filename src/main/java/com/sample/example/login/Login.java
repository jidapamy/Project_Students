package com.sample.example.login;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Login {
	@Id
	private String passportno;
	private Date birthday;
	private String institute;
	private String studentid;
	private String department;
	private String major;
	public Login(String passportNo, Date birthday, String institute, String studentId, String department,
			String major) {
		super();
		this.passportno = passportNo;
		this.birthday = birthday;
		this.institute = institute;
		this.studentid = studentId;
		this.department = department;
		this.major = major;
	}
	
	public Login() {
		super();
	}

	public String getPassportno() {
		return passportno;
	}

	public void setPassportno(String passportNo) {
		this.passportno = passportNo;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentId) {
		this.studentid = studentId;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	@Override
	public String toString() {
		return "Login [passportno=" + passportno + ", birthday=" + birthday + ", institute=" + institute
				+ ", studentid=" + studentid + ", department=" + department + ", major=" + major + "]";
	}
	
	
	
	
	
}