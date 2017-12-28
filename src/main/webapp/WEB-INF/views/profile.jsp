<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.util.List" %>
<%@page import="com.sample.example.address.Province"%>
<%@page import="com.sample.example.address.Amphur"%>
<%@page import="com.sample.example.address.District"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#particle-js {
	/* background: #B22020; */
	height: 100%;
	transition-property: tra
}

td {
	padding-bottom: 13px;
}

input[type="date"] {
	height: 29px;
}

.select {
	height: 29px;
}

p {
	display: block;
	-webkit-margin-before: 0.3em;
	-webkit-margin-after: 0.3em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	font-size: 13px;
}

.leftcontact {
	width: 49.5%;
	float: left;
	/*  border-right: 0.5px dotted #6f6f6f; */
	box-sizing: border-box;
	padding: 0px 15px 0px 0px;
}

.rightcontact {
	margin-top: 9.8%;
	width: 49.5%;
	float: right;
	box-sizing: border-box;
	padding: 0px 0px 0px 15px;
}

.rightcontactForm3 {
	margin-top: 5.8%;
	width: 49.5%;
	float: right;
	box-sizing: border-box;
	padding: 0px 0px 0px 15px;
}

/* element.style {
    width: 300%;
    height: 100%;
} */
body {
	margin: auto;
	background: #1E93B4;
	font-family: 'Open Sans', sans-serif;
}

.form-style-5 {
	max-width: 700px;
	/* padding: 2px 2px; */
	background: #f4f7f8;
	margin: 10px auto;
	padding: 2% 5% 2% 5%;
	/* padding-top: 20px; */
	background: #f4f7f8;
	border-radius: 13px;
	font-family: 'Kanit', sans-serif;
	position: absolute;
	left: 25%;
	/* border-right: 1px dotted #6f6f6f; */
	width: 70%;
}

.form-style-5 fieldset {
	border: none;
}

.form-style-5 legend {
	font-size: 1.4em;
	margin-bottom: 10px;
}

.form-style-5 label {
	display: block;
	margin-bottom: 8px;
}

.form-style-5 input[type="text"], .form-style-5 input[type="date"],
	.form-style-5 input[type="datetime"], .form-style-5 input[type="email"],
	.form-style-5 input[type="number"], .form-style-5 input[type="search"],
	.form-style-5 input[type="time"], .form-style-5 input[type="url"],
	.form-style-5 textarea, .form-style-5 select {
	font-family: Georgia, "Times New Roman", Times, serif;
	background: rgba(255, 255, 255, .1);
	border: none;
	border-radius: 4px;
	font-size: 13px;
	margin: 0;
	outline: 0;
	padding: 7px;
	width: 100%;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	background-color: #e8eeef;
	color: #8a97a0;
	-webkit-box-shadow: 0 1px 0 rgba(3, 1, 1, 0.03) inset;
	box-shadow: 0 1px 0 rgba(0, 0, 0, 0.03) inset;
	margin-bottom: 1px;
}

.form-style-5 input[type="text"]:focus, .form-style-5 input[type="date"]:focus,
	.form-style-5 input[type="datetime"]:focus, .form-style-5 input[type="email"]:focus,
	.form-style-5 input[type="number"]:focus, .form-style-5 input[type="search"]:focus,
	.form-style-5 input[type="time"]:focus, .form-style-5 input[type="url"]:focus,
	.form-style-5 textarea:focus, .form-style-5 select:focus {
	background: #d2d9dd;
}

.form-style-5 select {
	-webkit-appearance: menulist-button;
	height: 29px;
}

.form-style-5 .number {
	background: #0BB3E2;
	color: #fff;
	height: 30px;
	width: 30px;
	display: inline-block;
	font-size: 0.8em;
	margin-right: 10px;
	line-height: 30px;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255, 255, 255, 0.2);
	border-radius: 15px 15px 15px 0px;
	margin-top: 30px
}

.form-style-5 input[type="submit"], .form-style-5 input[type="button"] {
	position: relative;
	display: block;
	padding: 19px 39px 18px 39px;
	color: #FFF;
	margin: 20px auto;
	background: #0DBBEC;
	font-size: 18px;
	text-align: center;
	font-style: normal;
	width: 50%;
	border-radius: 13px;
	border: 1px solid #0A99C1;
	border-width: 1px 1px 3px;
	margin-bottom: 10px;
}

.form-style-5 input[type="submit"]:hover, .form-style-5 input[type="button"]:hover
	{
	background: #0A99C1;
}

.textcolor {
	color: red;
}

fieldset {
	display: block;
	-webkit-margin-start: 0;
	-webkit-margin-end: 0;
	-webkit-padding-before: 0;
	-webkit-padding-start: 0;
	-webkit-padding-end: 0;
	-webkit-padding-after: 0;
	min-width: -webkit-min-content;
	border-width: 2px;
	border-style: groove;
	border-color: threedface;
	border-image: initial;
}
</style>

<script type="text/javascript">
	var clickSameAddress = false;
	var m_Address;
	var m_District;
	var m_PostalCode;
	var m_SubDistrict;
	var m_Province;
	function sameAddress(checkbox) {
		if (checkbox.checked) {
			m_Address = document.getElementsByName("m_Address")[0].value
			m_District = document.getElementsByName("m_District")[0].value
			m_PostalCode = document.getElementsByName("m_PostalCode")[0].value
			m_SubDistrict = document.getElementsByName("m_SubDistrict")[0].value
			m_Province = document.getElementsByName("m_Province")[0].value
			document.getElementsByName("m_Address")[0].value = document
					.getElementsByName("l_Address")[0].value;
			document.getElementsByName("m_District")[0].value = document
					.getElementsByName("l_District")[0].value;
			document.getElementsByName("m_PostalCode")[0].value = document
					.getElementsByName("l_PostalCode")[0].value;
			document.getElementsByName("m_SubDistrict")[0].value = document
					.getElementsByName("l_SubDistrict")[0].value;
			document.getElementsByName("m_Province")[0].value = document
					.getElementsByName("l_Province")[0].value;
		} else {
			document.getElementsByName("m_Address")[0].value = m_Address;
			document.getElementsByName("m_District")[0].value = m_District;
			document.getElementsByName("m_PostalCode")[0].value = m_PostalCode;
			document.getElementsByName("m_SubDistrict")[0].value = m_SubDistrict;
			document.getElementsByName("m_Province")[0].value = m_Province;
		}
	}
		
	function chooseProvince(value){
			//window.location="/address/"+this.value()+"/amphurs"';
			alert(value)
	}
</script>
</head>
<body>
	<%
		String type3 = (String) request.getAttribute("type");
		if (type3 == "Thai") {
	%>
	<div class="form-style-5 ">
		<form action="submit" method="post" modelAttribute="managementForm">
			<fieldset>
				<legend>
					<span class="number">1</span>ข้อมูลส่วนตัว
				</legend>
				<table style="width: 100%">
					<tr>
						<td style="width: 17%;">
							<p>สถาบัน</p>
						</td>
						<td><input style="background: #d2d2d2;" type="text" name="institute" readonly="readonly" value="${infoStudent.getInstitute()}"></td>
						<td style="width: 6%"></td>

						<td style="width: 17%"><p>คณะ</p></td>
						<td><input style="background: #d2d2d2;" type="text"name="department" readonly="readonly" value="${infoStudent.getDepartment()}"></td>
					</tr>
					<tr>
						<td><p>เลขที่บัตรประชาชน</p></td>
						<td><input style="background: #d2d2d2;" type="text" name="passportno" readonly="readonly" value="${infoStudent.getPassportno()}"></td>
						<td></td>
						<td><p>รหัสนักศึกษา</p></td>
						<td><input style="background: #d2d2d2;" type="text" name="studentid" readonly="readonly" value="${infoStudent.getStudentid()}"></td>
					</tr>
					<tr>
						<td><p>สาขาวิชา</p></td>
						<td><input style="background: #d2d2d2;" type="text" name="major" readonly="readonly" value="${infoStudent.getMajor()}"></td>
						<td></td>
						<td> <p>วันเดือนปีเกิด</p> </td>
						<td><input class="size" style="background: #d2d2d2;" type="text" name="birthday" readonly="readonly" value="${infoStudent.getBirthday()}"></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> วันหมดอายุ
							</p>
						</td>
						<td><input type="date" name="issuedDate" value="${issuedDate}" required></td>
						<td></td>
						<td><p><span class="textcolor">*</span> วันออกบัตร</p></td>
						<td><input type="date" name="expiredDate" value="${expiredDate}" required></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> คำนำหน้า
							</p>
						</td>
						<td><select id="titleth" name="title_Th" required>
								<option value="">-- เลือกคำนำหน้า --</option>
								<option value="นาย"
									${infoStudent.getTitle_Th() == "นาย" ? 'selected="selected"' : ''}>นาย</option>
								<option value="นาง"
									${infoStudent.getTitle_Th() == "นาง" ? 'selected="selected"' : ''}>นาง</option>
								<option value="นางสาว"
									${infoStudent.getTitle_Th() == "นางสาว" ? 'selected="selected"' : ''}>นางสาว</option>
						</select>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Title
							</p>
						</td>
						<td><select id="titleeng" name="title" required>
								<option value="">-- เลือกคำนำหน้า --</option>
								<option value="Mr."
									${infoStudent.getTitle() == "Mr." ? 'selected="selected"' : ''}>Mr.</option>
								<option value="Mrs."
									${infoStudent.getTitle() == "Mrs." ? 'selected="selected"' : ''}>Mrs.</option>
								<option value="Ms."
									${infoStudent.getTitle() == "Ms." ? 'selected="selected"' : ''}>Ms.</option>
						</select>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> ชื่อ
							</p>
						</td>
						<td><input type="text" name="name_Th" placeholder="ชื่อจริง"
							value="${infoStudent.getName_Th()}" required></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Name
							</p>
						</td>
						<td><input type="text" name="name" placeholder="ชื่อจริง"
							value="${infoStudent.getName()}" required></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> นามสกุล
							</p>
						</td>
						<td><input type="text" name="surname_Th"
							placeholder="นามสกุล" value="${infoStudent.getSurname_Th()}"
							required></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Surname
							</p>
						</td>
						<td><input type="text" name="surname"
							placeholder="นามสกุลภาษาอังกฤษ"
							value="${infoStudent.getSurname()}" required></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> เพศ
							</p>
						</td>
						<td><select id="sex" name="sex" required>
								<option value="">-- เลือกเพศ --</option>
								<option value="ชาย"
									${infoStudent.getSex() == "ชาย" ? 'selected="selected"' : ''}>ชาย</option>
								<option value="หญิง"
									${infoStudent.getSex() == "หญิง" ? 'selected="selected"' : ''}>หญิง</option>
						</select></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> หมู่เลือด
							</p>
						</td>
						<td>
						<select id="bloodgroup" name="bloodGroup" required>
								<option value="">-- เลือกกรุ๊ปเลือด --</option>
								<option value="O"
									${infoStudent.getBloodGroup() == "O" ? 'selected="selected"' : ''}>O</option>
								<option value="A"
									${infoStudent.getBloodGroup() == "A" ? 'selected="selected"' : ''}>A</option>
								<option value="AB"
									${infoStudent.getBloodGroup() == "AB" ? 'selected="selected"' : ''}>AB</option>
								<option value="B"
									${infoStudent.getBloodGroup() == "B" ? 'selected="selected"' : ''}>B</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> เบอร์โทรศัพท์
							</p>
						</td>
						<td><input type="text" name="tel" placeholder="เบอร์โทรศัพท์"
							value="${infoStudent.getTel()}" required></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>

			</fieldset>

			<table style="width: 100%">
				<tr>
					<td style="width: 47%;">
						<fieldset>
							<legend>
								<span class="number">2</span>ที่อยู่ตามทะเบียนบ้าน
							</legend>
							<table style="width: 104%">
								<tr></tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> ที่อยู่
										</p>
									</td>
									<td><input type="text" name="l_Address"
										placeholder="ที่อยู่" value="${infoStudent.getL_Address()}"
										required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> จังหวัด
										</p>
									</td>
									<td>
										<select id="legalprovince" name="l_Province" required onchange="location = this.value;">
										<option value="">-- เลือกจังหวัด --</option>
										<% List<Province> lProvinces = (List) request.getAttribute("provinces");
										for (Province province : lProvinces) {
										%>
										<option value="/address/province/amphurs" 
										${infoStudent.getL_Province() == province.getProvinceId() ? 'selected="selected"' : ''}>
											<%=province.getProvinceName()%>
										</option> 
										<%-- <option value="${province.getProvinceId()}" ${infoStudent.getL_Province() == "province.getProvinceId()}" ? 'selected="selected"' : ''}>${province.getProvinceName()}</option> --%>
										<%
										}
										%>
									</select></td>
									
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> อำเภอ
										</p>
									</td>
									<td><select id="legaldistint" name="l_District" required>
											<option value="">-- กรุณาเลือกอำเภอ --</option>
											<% List<Amphur> lAmphurs = (List) request.getAttribute("amphurs");
											for (Amphur amphur : lAmphurs) {
											%>
												<option value="${amphur.getAmphurId()}"><%=amphur.getAmphurName()%></option> 
											<%
											}
											%>
									</select></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> ตำบล
										</p>
									</td>
									<td><select id="legalsubdistint" name="l_SubDistrict" required>
											<option value="">-- กรุณาเลือกตำบล --</option>
											<% List<District> lDistricts = (List) request.getAttribute("districts");
											for (District district : lDistricts) {
											%>
												<option value="${district.getDistrictId()}"><%=district.getDistrictName()%></option> 
											<%
											}
											%> 
									</select></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> รหัสไปรษณีย์
										</p>
									</td>
									<td><input type="text" name="l_PostalCode"
										placeholder="รหัสไปรษณีย์"
										value="${infoStudent.getL_PostalCode()}" required></td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td style="width: 6%"></td>
					<td style="width: 47%">
						<fieldset>
							<legend>
								<span class="number">3</span>ที่อยุ่ที่ติดต่อได้
							</legend>

							<table style="width: 104%">
								<tr>
									<input type="checkbox" name="checkbox" onClick="sameAddress(this)"> เหมือนที่อยู่ตามทะเบียนบ้าน
								</tr>
								<tr>
									<td style="width: 35%">
										<p>
											<span class="textcolor">*</span> ที่อยู่
										</p>
									</td>
									<td><input type="text" name="m_Address"
										placeholder="ที่อยู่" value="${infoStudent.getM_Address()}"
										required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> จังหวัด
										</p>
									</td>
									<td><select id="mailingprovince" name="m_Province"
										required>
											<option value="">-- เลือกจังหวัด --</option>
											<% List<Province> mProvinces = (List) request.getAttribute("provinces");
											for (Province province : mProvinces) {
											%>
												<option value="${province.getProvinceId()}" ${infoStudent.getL_Province() == province.getProvinceId() ? 'selected="selected"' : ''}><%=province.getProvinceName()%></option> 
										<%-- 	<option value="${province.getProvinceId()}" ${infoStudent.getM_Province() == "province.getProvinceId()}" ? 'selected="selected"' : ''}>${province.getProvinceName()}</option> --%>
											<%
											}
											%>
									</select></td>
									
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> อำเภอ
										</p>
									</td>
									
									<td><select id="mailingdistint" name="m_District" required>
											<option value="">-- กรุณาเลือกอำเภอ --</option>
										    <% List<Amphur> mAmphurs = (List) request.getAttribute("amphurs");
											for (Amphur amphur : mAmphurs) {
											%>
												<option value="${amphur.getAmphurId()}"><%=amphur.getAmphurName()%></option> 
											<%
											}
											%> 
									</select></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> ตำบล
										</p>
									</td>
									<td><select id="mailingsubdistint" name="m_SubDistrict"
										required>
											<option value="">-- กรุณาเลือกตำบล --</option>
											 <% List<District> mDistricts = (List) request.getAttribute("districts");
											for (District district : mDistricts) {
											%>
												<option value="${district.getDistrictId()}"><%=district.getDistrictName()%></option> 
											<%
											}
											%> 
									</select></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> รหัสไปรษณีย์
										</p>
									</td>
									<td><input type="text" name="m_PostalCode"
										placeholder="รหัสไปรษณีย์"
										value="${infoStudent.getM_PostalCode()}" required></td>
									<td></td>
									<td></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
			<input  type="checkbox" name="confirmUpdate" >ท่านต้องการอัตเดทข้อมูลของท่านในระบบงานธนาคารให้เป็นปัจจุบันหรือไม่(ถ้ามี)
			<input type="submit" value="Submit" />
		</form>
	</div> 
	<%
		} else {
	%>
	<div class="form-style-5 ">
		<form action="submit" method="post" modelAttribute="managementForm">
			<fieldset>
				<legend>
					<span class="number">1</span>PROFILE
				</legend>
				<table style="width: 100%">
					<tr>
						<td style="width: 17%;">
							<p>Institute</p>
						</td>
						<td><input style="background: #d2d2d2;" type="text"
							name="institute" readonly="readonly"
							value="${infoStudent.getInstitute()}"></td>
						<td style="width: 6%"></td>

						<td style="width: 17%">
							<p>Department</p>
						</td>
						<td><input style="background: #d2d2d2;" type="text"
							name="department" readonly="readonly"
							value="${infoStudent.getDepartment()}"></td>
					</tr>
					<tr>
						<td>
							<p>Passport No.</p>
						</td>
						<td><input style="background: #d2d2d2;" type="text"
							name="passportno" readonly="readonly"
							value="${infoStudent.getPassportno()}"></td>
						<td></td>
						<td>
							<p>Student ID</p>
						</td>
						<td><input style="background: #d2d2d2;" type="text"
							name="studentid" readonly="readonly"
							value="${infoStudent.getStudentid()}"></td>
					</tr>
					<tr>
						<td>
							<p>Major</p>
						</td>
						<td><input style="background: #d2d2d2;" type="text"
							name="major" readonly="readonly"
							value="${infoStudent.getMajor()}"></td>
						<td></td>
						<td>
							<p>Date of Birth</p>
						</td>
						<td><input class="size" style="background: #d2d2d2;"
							type="text" name="birthday" placeholder="DD-MM-YYYY"
							readonly="readonly" value="${infoStudent.getBirthday()}"></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> Expired Date
							</p>
						</td>
						<td><input type="date" name="issuedDate"
							placeholder="DD-MM-YYYY" value="${issuedDate}" required></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Issued Date
							</p>
						</td>
						<td><input type="date" name="expiredDate"
							placeholder="DD-MM-YYYY" value="${expiredDate}" required></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> Title
							</p>
						</td>
						<td><select id="titleeng" name="title" required>
								<option value="">-- select title --</option>
								<option value="Mr."
									${infoStudent.getTitle() == "Mr." ? 'selected="selected"' : ''}>Mr.</option>
								<option value="Mrs."
									${infoStudent.getTitle() == "Mrs." ? 'selected="selected"' : ''}>Mrs.</option>
								<option value="Ms."
									${infoStudent.getTitle() == "Ms." ? 'selected="selected"' : ''}>Ms.</option>
						</select></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Nationality
							</p>
						</td>
						<td><input type="text" name="nationality"
							placeholder="nationality" value="${infoStudent.getNationality()}"
							required></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> Name
							</p>
						</td>
						<td><input type="text" name="name" placeholder="Your Name"
							value="${infoStudent.getName()}" required></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Surname
							</p>
						</td>
						<td><input type="text" name="surname" placeholder="Surname"
							value="${infoStudent.getSurname()}" required></td>
					</tr>

					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> Sex
							</p>
						</td>
						<td><select id="sex" name="sex" required>
								<option value="">-- selectsex --</option>
								<option value="male"
									${infoStudent.getSex()=="male" ? 'selected="selected"' : ''}>Male</option>
								<option value="female"
									${infoStudent.getSex()=="female" ? 'selected="selected"' : ''}>Female</option>
						</select></td>
						<td></td>
						<td>
							<p>
								<span class="textcolor">*</span> Blood Group
							</p>
						</td>
						<td><select id="bloodgroup" name="bloodGroup" required>
								<option value="">-- select blood group --</option>
								<option value="O"
									${infoStudent.getBloodGroup() == "O" ? 'selected="selected"' : ''}>O</option>
								<option value="A"
									${infoStudent.getBloodGroup() == "A" ? 'selected="selected"' : ''}>A</option>
								<option value="AB"
									${infoStudent.getBloodGroup() == "AB" ? 'selected="selected"' : ''}>AB</option>
								<option value="B"
									${infoStudent.getBloodGroup() == "B" ? 'selected="selected"' : ''}>B</option>
						</select></td>
					</tr>
					<tr>
						<td>
							<p>
								<span class="textcolor">*</span> Tel
							</p>
						</td>
						<td><input type="text" name="tel" placeholder="Phonenumber"
							value="${infoStudent.getTel()}" required></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
				</table>

			</fieldset>

			<table style="width: 100%">
				<tr>
					<td style="width: 47%;">
						<fieldset>
							<legend>
								<span class="number">2</span>Legal Address
							</legend>
							<table style="width: 104%">
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Address
										</p>
									</td>
									<td><input type="text" name="l_Address"
										placeholder="address" value="${infoStudent.getL_Address()}"
										required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Country
										</p>
									</td>
									<td><input type="text" name="l_Country"
										placeholder="country"
										value="${infoStudent.getL_Country()}" required></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>
										<p>
										<span class="textcolor">*</span> Province
										</p>
									</td>
									<td><input type="text" name="l_Province"
										placeholder="province" value="${infoStudent.getL_Province()}"
										required></td>
											
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> District
										</p>
									</td>
									<td><input type="text" name="l_District"
										placeholder="District" value="${infoStudent.getL_District()}"
										required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Sub-District
										</p>
									</td>
									<td><input type="text" name="l_SubDistrict"
										placeholder="sub-District"
										value="${infoStudent.getL_SubDistrict()}" required></td>
								</tr>

								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Postal Code
										</p>
									</td>
									<td><input type="text" name="l_PostalCode"
										placeholder="postal code"
										value="${infoStudent.getL_PostalCode()}" required></td>
									<td></td>
									<td></td>
								</tr>
								
							</table>
						</fieldset>
					</td>
					<td style="width: 6%"></td>
					<td style="width: 47%">
						<fieldset>
							<legend>
								<span class="number">3</span>Mailing Address
							</legend>
							<table style="width: 104%">
								<tr>
									<input type="checkbox" name="checkbox" onClick="sameAddress(this)">Same as Legal Address
								</tr>
								<tr>
									<td style="width: 35%">
										<p>
											<span class="textcolor">*</span> Address
										</p>
									</td>
									<td><input type="text" name="m_Address"
										placeholder="address" value="${infoStudent.getM_Address()}"
										required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Country
										</p>
									</td>
									<td><input type="text" name="m_Country"
										placeholder="country"
										value="${infoStudent.getM_Country()}" required></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>
										<p>
										<span class="textcolor">*</span> Province
										</p>
									</td>
									<td><input type="text" name="m_Province"
										placeholder="province" value="${infoStudent.getM_Province()}"
										required></td>
											
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> District
										</p>
									</td>
									<td><input type="text" name="m_District"
										placeholder="District" value="${infoStudent.getM_District()}"
										required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Sub-District
										</p>
									</td>
									<td><input type="text" name="m_SubDistrict"
										placeholder="sub-District"
										value="${infoStudent.getM_SubDistrict()}" required></td>
								</tr>
								<tr>
									<td>
										<p>
											<span class="textcolor">*</span> Postal Code
										</p>
									</td>
									<td><input type="text" name="m_PostalCode"
										placeholder="postal code"
										value="${infoStudent.getM_PostalCode()}" required></td>
									<td></td>
									<td></td>
								</tr>
								
							</table>
						</fieldset>
					</td>
				</tr>
			</table>
			<input  type="checkbox" name="confirmUpdate" >Do you want to update your information in banking system? (if already exists)
			<input type="submit" value="Submit" />
		</form>
	</div>

	<%
		}
	%> 


</body>
</html>