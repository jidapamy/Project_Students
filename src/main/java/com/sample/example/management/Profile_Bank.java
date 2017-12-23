package com.sample.example.management;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.sample.example.login.Login;


@Entity
public class Profile_Bank {
	@Id
	private String passportno;
	private Date birthday;
	private String institute;
	private String studentid;
	private String department;
	private String major;
	private Date issueddate;
	private Date expireddate;
	private String title_Th;
	private String title;
	private String name_Th;
	private String name;
	private String surname_Th;
	private String surname;
	private String sex;
	private String bloodgroup;
	private String tel;
	private String nationality;
	private String l_Address;
	private String l_Subdistinct;
	private String l_Distinct;
	private String l_Province;
	private String l_Postalcode;
	private String l_Country;
	private String m_Address;
	private String m_Subdistinct;
	private String m_Distinct;
	private String m_Provinct;
	private String m_Postalcode;
	private String m_Country;
	
	public Profile_Bank() {
	}
	
	public Profile_Bank(Login studentLogin) {
		this.passportno = studentLogin.getPassportno();
		this.birthday = studentLogin.getBirthday();
		this.institute = studentLogin.getInstitute();
		this.studentid = studentLogin.getStudentid();
		this.department = studentLogin.getDepartment();
		this.major = studentLogin.getMajor();
	}

	public Profile_Bank(String passportno, Date birthday, String institute, String studentid, String department,
			String major, Date issuedDate, Date expiredDate, String title_Th, String title, String name_Th, String name,
			String surname_Th, String surname, String sex, String bloodGroup, String tel, String nationality,
			String l_Address, String l_SubDistinct, String l_Distinct, String l_Province, String l_PostalCode,
			String l_Country, String m_Address, String m_SubDistinct, String m_Distinct, String m_Provinct,
			String m_PostalCode, String m_Country) {
		super();
		this.passportno = passportno;
		this.birthday = birthday;
		this.institute = institute;
		this.studentid = studentid;
		this.department = department;
		this.major = major;
		this.issueddate = issuedDate;
		this.expireddate = expiredDate;
		this.title_Th = title_Th;
		this.title = title;
		this.name_Th = name_Th;
		this.name = name;
		this.surname_Th = surname_Th;
		this.surname = surname;
		this.sex = sex;
		this.bloodgroup = bloodGroup;
		this.tel = tel;
		this.nationality = nationality;
		this.l_Address = l_Address;
		this.l_Subdistinct = l_SubDistinct;
		this.l_Distinct = l_Distinct;
		this.l_Province = l_Province;
		this.l_Postalcode = l_PostalCode;
		this.l_Country = l_Country;
		this.m_Address = m_Address;
		this.m_Subdistinct = m_SubDistinct;
		this.m_Distinct = m_Distinct;
		this.m_Provinct = m_Provinct;
		this.m_Postalcode = m_PostalCode;
		this.m_Country = m_Country;
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

	public String getInstitute() {
		return institute;
	}

	public void setInstitute(String institute) {
		this.institute = institute;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
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

	public Date getIssuedDate() {
		return issueddate;
	}

	public void setIssuedDate(Date issuedDate) {
		this.issueddate = issuedDate;
	}

	public Date getExpiredDate() {
		return expireddate;
	}

	public void setExpiredDate(Date expiredDate) {
		this.expireddate = expiredDate;
	}

	public String getTitle_Th() {
		return title_Th;
	}

	public void setTitle_Th(String title_Th) {
		this.title_Th = title_Th;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName_Th() {
		return name_Th;
	}

	public void setName_Th(String name_Th) {
		this.name_Th = name_Th;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname_Th() {
		return surname_Th;
	}

	public void setSurname_Th(String surname_Th) {
		this.surname_Th = surname_Th;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBloodGroup() {
		return bloodgroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodgroup = bloodGroup;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getL_Address() {
		return l_Address;
	}

	public void setL_Address(String l_Address) {
		this.l_Address = l_Address;
	}

	public String getL_SubDistinct() {
		return l_Subdistinct;
	}

	public void setL_SubDistinct(String l_SubDistinct) {
		this.l_Subdistinct = l_SubDistinct;
	}

	public String getL_Distinct() {
		return l_Distinct;
	}

	public void setL_Distinct(String l_Distinct) {
		this.l_Distinct = l_Distinct;
	}

	public String getL_Province() {
		return l_Province;
	}

	public void setL_Province(String l_Province) {
		this.l_Province = l_Province;
	}

	public String getL_PostalCode() {
		return l_Postalcode;
	}

	public void setL_PostalCode(String l_PostalCode) {
		this.l_Postalcode = l_PostalCode;
	}

	public String getL_Country() {
		return l_Country;
	}

	public void setL_Country(String l_Country) {
		this.l_Country = l_Country;
	}

	public String getM_Address() {
		return m_Address;
	}

	public void setM_Address(String m_Address) {
		this.m_Address = m_Address;
	}

	public String getM_SubDistinct() {
		return m_Subdistinct;
	}

	public void setM_SubDistinct(String m_SubDistinct) {
		this.m_Subdistinct = m_SubDistinct;
	}

	public String getM_Distinct() {
		return m_Distinct;
	}

	public void setM_Distinct(String m_Distinct) {
		this.m_Distinct = m_Distinct;
	}

	public String getM_Provinct() {
		return m_Provinct;
	}

	public void setM_Provinct(String m_Provinct) {
		this.m_Provinct = m_Provinct;
	}

	public String getM_PostalCode() {
		return m_Postalcode;
	}

	public void setM_PostalCode(String m_PostalCode) {
		this.m_Postalcode = m_PostalCode;
	}

	public String getM_Country() {
		return m_Country;
	}

	public void setM_Country(String m_Country) {
		this.m_Country = m_Country;
	}
	
	public void resetToDefault() {
		Profile_Bank infoStudent = new Profile_Bank();
		infoStudent.setBirthday(birthday);
		infoStudent.setBloodGroup("");
		infoStudent.setDepartment(department);
		infoStudent.setExpiredDate(expireddate);
		infoStudent.setInstitute(institute);
		infoStudent.setIssuedDate(issueddate);
		infoStudent.setL_Address("");
		infoStudent.setL_Country("");
		infoStudent.setL_Distinct("");
		infoStudent.setL_PostalCode("");
		infoStudent.setL_Province("");
		infoStudent.setL_SubDistinct("");
		infoStudent.setM_Address("");
		infoStudent.setM_Country("");
		infoStudent.setM_Distinct("");
		infoStudent.setM_PostalCode("");
		infoStudent.setM_Provinct("");
		infoStudent.setM_SubDistinct("");
		infoStudent.setMajor(major);
		infoStudent.setName("");
		infoStudent.setName_Th("");
		infoStudent.setNationality("");
		infoStudent.setPassportno(passportno);
		infoStudent.setSex("");
		infoStudent.setStudentid(studentid);
		infoStudent.setSurname("");
		infoStudent.setSurname_Th("");
		infoStudent.setTel("");
		infoStudent.setTitle("");
		infoStudent.setTitle_Th("");
	}
	
	

	@Override
	public String toString() {
		return "Profile_Bank [passportno=" + passportno + ", birthday=" + birthday + ", institute=" + institute
				+ ", studentid=" + studentid + ", department=" + department + ", major=" + major + ", issuedDate="
				+ issueddate + ", expiredDate=" + expireddate + ", title_Th=" + title_Th + ", title=" + title
				+ ", name_Th=" + name_Th + ", name=" + name + ", surname_Th=" + surname_Th + ", surname=" + surname
				+ ", sex=" + sex + ", bloodGroup=" + bloodgroup + ", tel=" + tel + ", nationality=" + nationality
				+ ", l_Address=" + l_Address + ", l_SubDistinct=" + l_Subdistinct + ", l_Distinct=" + l_Distinct
				+ ", l_Province=" + l_Province + ", l_PostalCode=" + l_Postalcode + ", l_Country=" + l_Country
				+ ", m_Address=" + m_Address + ", m_SubDistinct=" + m_Subdistinct + ", m_Distinct=" + m_Distinct
				+ ", m_Provinct=" + m_Provinct + ", m_PostalCode=" + m_Postalcode + ", m_Country=" + m_Country + "]";
	}

	
	
}