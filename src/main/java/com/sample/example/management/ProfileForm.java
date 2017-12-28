package com.sample.example.management;

//import java.util.Date;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.sample.example.login.Login;

public class ProfileForm {
	private String passportno;
	private String birthday;
	private String institute;
	private String studentid;
	private String department;
	private String major;
	private String issueddate;
	private String expireddate;
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
	private String l_Subdistrict;
	private String l_District;
	private String l_Province;
	private String l_Postalcode;
	private String l_Country;
	private String m_Address;
	private String m_Subdistrict;
	private String m_District;
	private String m_Province;
	private String m_Postalcode;
	private String m_Country;
	private String titleProfile;
	private String titleLegalAddress;
	private String titleMailingAddress;

	public ProfileForm() {
	}

	

	public ProfileForm(String passportno, String birthday, String institute, String studentid, String department,
			String major, String issueddate, String expireddate, String title_Th, String title, String name_Th,
			String name, String surname_Th, String surname, String sex, String bloodgroup, String tel,
			String nationality, String l_Address, String l_Subdistrict, String l_District, String l_Province,
			String l_Postalcode, String l_Country, String m_Address, String m_Subdistrict, String m_District,
			String m_Province, String m_Postalcode, String m_Country, String titleProfile, String titleLegalAddress,
			String titleMailingAddress) {
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
		this.titleProfile = titleProfile;
		this.titleLegalAddress = titleLegalAddress;
		this.titleMailingAddress = titleMailingAddress;
	}

	public String getPassportno() {
		return passportno;
	}

	public void setPassportno(String passportno) {
		this.passportno = passportno;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
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

	public String getIssuedDate() {
		return issueddate;
	}

	public void setIssuedDate(String issuedDate) {
		this.issueddate = issuedDate;
	}

	public String getExpiredDate() {
		return expireddate;
	}

	public void setExpiredDate(String expiredDate) {
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

	public String getL_SubDistrict() {
		return l_Subdistrict;
	}

	public void setL_SubDistrict(String l_Subdistrict) {
		this.l_Subdistrict = l_Subdistrict;
	}

	public String getL_District() {
		return l_District;
	}

	public void setL_District(String l_District) {
		this.l_District = l_District;
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

	public String getM_SubDistrict() {
		return m_Subdistrict;
	}

	public void setM_SubDistrict(String m_Subdistrict) {
		this.m_Subdistrict = m_Subdistrict;
	}

	public String getM_District() {
		return m_District;
	}

	public void setM_District(String m_District) {
		this.m_District = m_District;
	}

	public String getM_Province() {
		return m_Province;
	}

	public void setM_Province(String m_Province) {
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
	public String getTitleProfile() {
		return titleProfile;
	}

	public void setTitleProfile(String titleProfile) {
		this.titleProfile = titleProfile;
	}

	public String getTitleLegalAddress() {
		return titleLegalAddress;
	}

	public void setTitleLegalAddress(String titleLegalAddress) {
		this.titleLegalAddress = titleLegalAddress;
	}

	public String getTitleMailingAddress() {
		return titleMailingAddress;
	}

	public void setTitleMailingAddress(String titleMailingAddress) {
		this.titleMailingAddress = titleMailingAddress;
	}

	public ProfileForm formTh() {
		ProfileForm form = new ProfileForm();
		form.setBirthday("วันเกิด");
		form.setBloodGroup("หมู่เลือด");
		form.setDepartment("คณะ");
		form.setExpiredDate("วันออกบัตร");
		form.setInstitute("สถาบัน");
		form.setIssuedDate("วันหมดอายุ");
		form.setL_Address("ที่อยู่");
		form.setL_Country("ประเทศ");
		form.setL_District("อำเภอ");
		form.setL_PostalCode("รหัสไปรษณีย์");
		form.setL_Province("จังหวัด");
		form.setL_SubDistrict("ตำบล");
		form.setM_Address("ที่อยู่");
		form.setM_Country("ประเทศ");
		form.setM_District("อำเภอ");
		form.setM_PostalCode("รหัสไปรษณีย์");
		form.setM_Province("จังหวัด");
		form.setM_SubDistrict("ตำบล");
		form.setMajor("สาขาวิชา");
		form.setName("Name");
		form.setName_Th("ชื่อ");
		form.setPassportno("เลขที่บัตรประชาชน");
		form.setSex("เพศ");
		form.setStudentid("รหัสนักศึกษา");
		form.setSurname("Surname");
		form.setSurname_Th("นามสกุล");
		form.setTel("เบอร์โทรศัพท์");
		form.setTitle("Title");
		form.setTitle_Th("คำนำหน้า");
		form.setTitleProfile("ข้อมูลส่วนตัว");
		form.setTitleLegalAddress("ที่อยู่ตามทะเบียนบ้าน");
		form.setTitleMailingAddress("ที่อยุ่ที่ติดต่อได้");
		return form;
	}

	public ProfileForm formEn() {
		ProfileForm form = new ProfileForm();
		form.setBirthday("Birthday");
	    form.setBloodGroup("Blood Group");
	    form.setDepartment("Department");
	    form.setExpiredDate("Expired Date");
	    form.setInstitute("Institute");
	    form.setIssuedDate("Issued Date");
	    form.setL_Address("Address");
	    form.setL_Country("Country");
	    form.setL_District("Distinct");
	    form.setL_PostalCode("Postal Code");
	    form.setL_Province("Province");
	    form.setL_SubDistrict("Sub-Distinct");
	    form.setM_Address("Address");
	    form.setM_Country("Country");
	    form.setM_District("Distinct");
	    form.setM_PostalCode("Postal Code");
	    form.setM_Province("Province");
	    form.setM_SubDistrict("Sub-Distinct");
	    form.setMajor(major);
	    form.setName("Name");
	    form.setNationality("Nation");
	    form.setPassportno("Passport No.");
	    form.setSex("Sex");
	    form.setStudentid("Student ID");
	    form.setSurname("Surname");
	    form.setTel("Tel");
	    form.setTitle("Title");
		form.setTitleProfile("Profile");
		form.setTitleLegalAddress("Legal Address");
		form.setTitleMailingAddress("Mailing Address");
	    return form;
	}

}