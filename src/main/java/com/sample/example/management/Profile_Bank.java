package com.sample.example.management;

//import java.util.Date;

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
	private int l_Subdistrict;
	private int l_District;
	private int l_Province;
	private String l_Postalcode;
	private String l_Country;
	private String m_Address;
	private int m_Subdistrict;
	private int m_District;
	private int m_Province;
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
			String major, Date issueddate, Date expireddate, String title_Th, String title, String name_Th, String name,
			String surname_Th, String surname, String sex, String bloodgroup, String tel, String nationality,
			String l_Address, int l_Subdistrict, int l_District, int l_Province, String l_Postalcode, String l_Country,
			String m_Address, int m_Subdistrict, int m_District, int m_Province, String m_Postalcode,
			String m_Country) {
		super();
		this.passportno = passportno;
		this.birthday = birthday;
		this.institute = institute;
		this.studentid = studentid;
		this.department = department;
		this.major = major;
		this.issueddate = issueddate;
		this.expireddate = expireddate;
		this.title_Th = title_Th;
		this.title = title;
		this.name_Th = name_Th;
		this.name = name;
		this.surname_Th = surname_Th;
		this.surname = surname;
		this.sex = sex;
		this.bloodgroup = bloodgroup;
		this.tel = tel;
		this.nationality = nationality;
		this.l_Address = l_Address;
		this.l_Subdistrict = l_Subdistrict;
		this.l_District = l_District;
		this.l_Province = l_Province;
		this.l_Postalcode = l_Postalcode;
		this.l_Country = l_Country;
		this.m_Address = m_Address;
		this.m_Subdistrict = m_Subdistrict;
		this.m_District = m_District;
		this.m_Province = m_Province;
		this.m_Postalcode = m_Postalcode;
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

	public void setBloodGroup(String bloodgroup) {
		this.bloodgroup = bloodgroup;
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

	public int getL_SubDistrict() {
		return l_Subdistrict;
	}

	public void setL_SubDistrict(int l_SubDistrict) {
		this.l_Subdistrict = l_SubDistrict;
	}

	public int getL_District() {
		return l_District;
	}

	public void setL_District(int l_District) {
		this.l_District = l_District;
	}

	public int getL_Province() {
		return l_Province;
	}

	public void setL_Province(int l_Province) {
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

	public int getM_SubDistrict() {
		return m_Subdistrict;
	}

	public void setM_SubDistrict(int m_SubDistrict) {
		this.m_Subdistrict = m_SubDistrict;
	}

	public int getM_District() {
		return m_District;
	}

	public void setM_District(int m_District) {
		this.m_District = m_District;
	}

	public int getM_Province() {
		return m_Province;
	}

	public void setM_Province(int m_Province) {
		this.m_Province = m_Province;
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
	

	@Override
	public String toString() {
		return "Profile_Bank [passportno=" + passportno + ", birthday=" + birthday + ", institute=" + institute
				+ ", studentid=" + studentid + ", department=" + department + ", major=" + major + ", issuedDate="
				+ issueddate + ", expiredDate=" + expireddate + ", title_Th=" + title_Th + ", title=" + title
				+ ", name_Th=" + name_Th + ", name=" + name + ", surname_Th=" + surname_Th + ", surname=" + surname
				+ ", sex=" + sex + ", bloodgroup=" + bloodgroup + ", tel=" + tel + ", nationality=" + nationality
				+ ", l_Address=" + l_Address + ", l_SubDistrict=" + l_Subdistrict + ", l_District=" + l_District
				+ ", l_Province=" + l_Province + ", l_PostalCode=" + l_Postalcode + ", l_Country=" + l_Country
				+ ", m_Address=" + m_Address + ", m_SubDistrict=" + m_Subdistrict + ", m_District=" + m_District
				+ ", m_Province=" + m_Province + ", m_PostalCode=" + m_Postalcode + ", m_Country=" + m_Country + "]";
	}

	
	
}