<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <style>
@import url(https://fonts.googleapis.com/css?family=Kanit);
#particle-js{
  /* background: #B22020; */
  height: 100%;
  transition-property:tra 
}
p {
    display: block;
    -webkit-margin-before: 0.3em;
    -webkit-margin-after: 0.15em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-size: 13px;
    padding-top: 4px;
}
.leftcontact {
    width: 49.5%;
    float: left;
    /*  border-right: 0.5px dotted #6f6f6f; */
    box-sizing: border-box;
    padding: 0px 15px 0px 0px;
}
.rightcontact {
  margin-top:9.8%;
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 15px;
 
}
.rightcontactForm3 {
  margin-top:5.8%;
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 15px;
 
}
body {
  margin: auto;
  background: #1E93B4;  
  font-family: 'Open Sans', sans-serif;

}
.form-style-5{
    max-width: 700px;
    /* max-height:  */
    /* padding: 2px 2px; */
    background: #f4f7f8;
    margin: 10px auto;
    padding: 20px;
    background: #f4f7f8;
    border-radius: 13px;
    font-family: 'Kanit', sans-serif;

    position: absolute;
    left:25%;
    
    /* border-right: 1px dotted #6f6f6f; */
}
.form-style-5 fieldset{
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
.form-style-5 input[type="text"],
.form-style-5 input[type="date"],
.form-style-5 input[type="datetime"],
.form-style-5 input[type="email"],
.form-style-5 input[type="number"],
.form-style-5 input[type="search"],
.form-style-5 input[type="time"],
.form-style-5 input[type="url"],
.form-style-5 textarea,
.form-style-5 select {
    font-family: Georgia, "Times New Roman", Times, serif;
    background: rgba(255,255,255,.1);
    border: none;
    border-radius: 4px;
    font-size: 12px;
    margin: 0;
    outline: 0;
    padding: 7px;
    width: 100%;
    box-sizing: border-box; 
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box; 
    background-color: #e8eeef;
    color:#8a97a0;
    -webkit-box-shadow: 0 1px 0 rgba(3, 1, 1, 0.03) inset;
    box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
    margin-bottom: 1px;
    
}
.form-style-5 input[type="text"]:focus,
.form-style-5 input[type="date"]:focus,
.form-style-5 input[type="datetime"]:focus,
.form-style-5 input[type="email"]:focus,
.form-style-5 input[type="number"]:focus,
.form-style-5 input[type="search"]:focus,
.form-style-5 input[type="time"]:focus,
.form-style-5 input[type="url"]:focus,
.form-style-5 textarea:focus,
.form-style-5 select:focus{
    background: #d2d9dd;
}
.form-style-5 select{
    -webkit-appearance: menulist-button;
    height:35px;
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
    text-shadow: 0 1px 0 rgba(255,255,255,0.2);
    border-radius: 15px 15px 15px 0px;
    margin-top: 30px
}


.form-style-5 input[type="submit"],
.form-style-5 input[type="button"]
{
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
.form-style-5 input[type="submit"]:hover,
.form-style-5 input[type="button"]:hover
{
    background: #0A99C1;
}

input[type=text]{
    height: 35px;
}
</style>

<script type="text/javascript">
var clickSameAddress = false;
var m_Address;
var m_Distinct;
var m_PostalCode;
var m_SubDistinct;
var m_Provinct;
function sameAddress(checkbox) {
	if(checkbox.checked){
		m_Address = document.getElementsByName("m_Address")[0].value
		m_Distinct = document.getElementsByName("m_Distinct")[0].value
		m_PostalCode = document.getElementsByName("m_PostalCode")[0].value
		m_SubDistinct = document.getElementsByName("m_SubDistinct")[0].value
		m_Provinct = document.getElementsByName("m_Provinct")[0].value
		document.getElementsByName("m_Address")[0].value =  document.getElementsByName("l_Address")[0].value;
	    document.getElementsByName("m_Distinct")[0].value =  document.getElementsByName("l_Distinct")[0].value;
	    document.getElementsByName("m_PostalCode")[0].value =  document.getElementsByName("l_PostalCode")[0].value;
	    document.getElementsByName("m_SubDistinct")[0].value =  document.getElementsByName("l_SubDistinct")[0].value;
	    document.getElementsByName("m_Provinct")[0].value =  document.getElementsByName("l_Provinct")[0].value;
	}else{
		document.getElementsByName("m_Address")[0].value = m_Address;
		document.getElementsByName("m_Distinct")[0].value =  m_Distinct;
	    document.getElementsByName("m_PostalCode")[0].value =  m_PostalCode;
	    document.getElementsByName("m_SubDistinct")[0].value =  m_SubDistinct;
	    document.getElementsByName("m_Provinct")[0].value =  m_Provinct;
	}
} -->
</script>
<title>Insert title here</title>
</head>
<body>
	<%-- <div id="particles-js"> 
			<div class="form-style-5 ">
				<form action="submit" method="post" modelAttribute="managementForm">
					<div class="leftcontact">
					<fieldset>
						<legend><span class="number">1</span>ข้อมูลส่วนตัว</legend>
						<p>สถาบัน</p>
						<input type="text" style="background: #d2d2d2;" type="text" name="institute" readonly="readonly" value="${infoStudent.getInstitute()}">
						<p>คณะ</p>
						<input type="text"style="background: #d2d2d2;" type="text" name="department" readonly="readonly" value="${infoStudent.getDepartment()}">
						<p>เลขที่บัตรประชาชน</p>
						<input style="background: #d2d2d2;" type="text" name="passportno" readonly="readonly" value="${infoStudent.getPassportno()}">
						<p>วันออกบัตร</p>
						<input type="date" type="text" name="expiredDate" value="${expiredDate}" required>
						<p>คำนำหน้า</p>
						<select id="titleth" name="title_Th" required>
							<option value="">-- เลือกคำนำหน้า --</option>
							<option value="นาย" ${infoStudent.getTitle_Th() == "นาย" ? 'selected="selected"' : ''}>นาย</option>
							<option value="นาง"  ${infoStudent.getTitle_Th() == "นาง" ? 'selected="selected"' : ''}>นาง</option>
							<option value="นางสาว" ${infoStudent.getTitle_Th() == "นางสาว" ? 'selected="selected"' : ''}>นางสาว</option>
						</select>
						<p>ชื่อ</p>
						<input type="text" name="name_Th" placeholder="ชื่อจริง" value="${infoStudent.getName_Th()}" required>
						<p>นามสกุล</p>
						<input type="text" name="surname_Th" placeholder="นามสกุล" value="${infoStudent.getSurname_Th()}" required>
						<p>เพศ</p>
						<select id="sex" name="sex" required>
							<option value="">-- เลือกเพศ --</option>
							<option value="ชาย" ${infoStudent.getSex() == "ชาย" ? 'selected="selected"' : ''}>ชาย</option>
							<option value="หญิง" ${infoStudent.getSex() == "หญิง" ? 'selected="selected"' : ''}>หญิง</option>
						</select>
						<p>เบอร์โทรศัพท์</p>
						<input type="text" name="tel" placeholder="เบอร์โทรศัพท์" value="${infoStudent.getTel()}" required>
						

						<legend><span class="number">2</span>ที่อยู่ตามทะเบียนบ้าน</legend>
						<p>ที่อยู่</p>
						<input type="text" name="l_Address" placeholder="ที่อยู่" value="${infoStudent.getL_Address()}" required>
						
						<p>อำเภอ</p>
						<select id="legaldistint" name="l_Distinct" required>
							<option value="">-- เลือกอำเภอ --</option>
							<option value="ทุ่งครุ" ${infoStudent.getL_Distinct() == "ทุ่งครุ" ? 'selected="selected"' : ''}>ทุ่งครุ</option>
							<option value="สุขสวัสดิ์" ${infoStudent.getL_Distinct() == "สุขสวัสดิ์" ? 'selected="selected"' : ''}>สุขสวัสดิ์</option>
						</select>
						<p>รหัสไปรษณีย์</p>
						<input type="text" name="l_PostalCode" placeholder="รหัสไปรษณีย์" value="${infoStudent.getL_PostalCode()}" required>
						<p>ตำบล</p>
						<select id="legalsubdistint" name="l_SubDistinct"  value="${infoStudent.getL_SubDistinct()}" required>
							<option value="">-- เลือกตำบล --</option>
							<option value="ประชาอุทิศ" ${infoStudent.getL_SubDistinct() == "ประชาอุทิศ" ? 'selected="selected"' : ''} >ประชาอุทิศ</option>
							<option value="สุขใจ" ${infoStudent.getL_SubDistinct() == "สุขใจ" ? 'selected="selected"' : ''}>สุขใจ</option>
						</select>
						<p>จังหวัด</p>
						<select id="legalprovince" name="l_Province" required>
							<option value="">-- เลือกจังหวัด --</option>
							<option value="กรุงเทพมหานคร"  ${infoStudent.getL_Province() == "กรุงเทพมหานคร" ? 'selected="selected"' : ''}>กรุงเทพมหานคร</option>
							<option value="อยุธยา"  ${infoStudent.getL_Province() == "อยุธยา" ? 'selected="selected"' : ''}>อยุธยา</option>
						</select>
					</fieldset>
					</div>


					<div class="rightcontact">
					<fieldset>
						<p>รหัสนักศึกษา</p>
						<input type="text" style="background: #d2d2d2;" type="text" name="studentid" readonly="readonly" value="${infoStudent.getStudentid()}">
						<p>สาขาวิชา</p>
						<input type="text" style="background: #d2d2d2;" type="text" name="major" readonly="readonly" value="${infoStudent.getMajor()}">
						<p>วันเดือนปีเกิด</p>
						<input style="background: #d2d2d2;" type="text" name="birthday" readonly="readonly" value="${infoStudent.getBirthday()}">
						<p>วันหมดอายุ</p>
						<input type="date" name="issuedDate" value="${issuedDate}" required>
						<p>Title</p>
						<select id="titleeng" name="title" required>
							<option value="">-- เลือกคำนำหน้า --</option>
							<option value="Mr." ${infoStudent.getTitle() == "Mr." ? 'selected="selected"' : ''}>Mr.</option>
							<option value="Mrs." ${infoStudent.getTitle() == "Mrs." ? 'selected="selected"' : ''}>Mrs.</option>
							<option value="Ms." ${infoStudent.getTitle() == "Ms." ? 'selected="selected"' : ''}>Ms.</option>
						</select>
						<p>Name</p>
						<input type="text" name="name" placeholder="ชื่อจริงภาษาอังกฤษ" value="${infoStudent.getName()}" required>
						<p>Surname</p> 
						<input type="text" name="surname" placeholder="นามสกุลภาษาอังกฤษ" value="${infoStudent.getSurname()}" required>
						<p>หมู่เลือด</p>
						<select id="bloodgroup" name="bloodGroup" required>
							<option value="">-- เลือกกรุ๊ปเลือด --</option>
							<option value="O" ${infoStudent.getBloodGroup() == "O" ? 'selected="selected"' : ''}>O</option>
							<option value="A" ${infoStudent.getBloodGroup() == "A" ? 'selected="selected"' : ''}>A</option>
							<option value="AB" ${infoStudent.getBloodGroup() == "AB" ? 'selected="selected"' : ''}>AB</option>
							<option value="B" ${infoStudent.getBloodGroup() == "B" ? 'selected="selected"' : ''}>B</option>
						</select>
					</fieldset>
					</div>

					
					<div class="rightcontactForm3">
						<fieldset>
							<legend><span class="number">3</span>ที่อยู่ที่สามารถติดต่อได้</legend>
							<input type="checkbox" name="checkbox" onClick="sameAddress(this)" >เหมือนที่อยู่ตามทะเบียนบ้าน
							<p>ที่อยู่</p>
							<input type="text" name="m_Address" placeholder="ที่อยู่" value="${infoStudent.getM_Address()}" required>
							<p>อำเภอ</p>
							<select id="mailingdistint" name="m_Distinct" required>
								<option value="">-- เลือกอำเภอ --</option>
								<option value="ทุ่งครุ" ${infoStudent.getM_Distinct() == "ทุ่งครุ" ? 'selected="selected"' : ''}>ทุ่งครุ</option>
								<option value="สุขสวัสดิ์" ${infoStudent.getM_Distinct() == "สุขสวัสดิ์" ? 'selected="selected"' : ''}>สุขสวัสดิ์</option>
							</select>
							<p>รหัสไปรษณีย์</p>
							<input type="text" name="m_PostalCode" placeholder="รหัสไปรษณีย์" value="${infoStudent.getM_PostalCode()}" required>
							<p>ตำบล</p>
							<select id="mailingsubdistint" name="m_SubDistinct" required>
								<option value="">-- เลือกตำบล --</option>
								<option value="ประชาอุทิศ" ${infoStudent.getM_SubDistinct() == "ประชาอุทิศ" ? 'selected="selected"' : ''}>ประชาอุทิศ</option>
								<option value="สุขใจ" ${infoStudent.getM_SubDistinct() == "สุขใจ" ? 'selected="selected"' : ''}>สุขใจ</option>
							</select>
							<p>จังหวัด</p>
							<select id="mailingprovince" name="m_Provinct" required>
								<option value="">-- เลือกจังหวัด --</option>
								<option value="กรุงเทพมหานคร" ${infoStudent.getM_Provinct() == "กรุงเทพมหานคร" ? 'selected="selected"' : ''}>กรุงเทพมหานคร</option>
								<option value="อยุธยา" ${infoStudent.getM_Provinct() == "อยุธยา" ? 'selected="selected"' : ''}>อยุธยา</option>
							</select>
						</fieldset>
					</div>
					
					<input  type="checkbox" name="checkread" >ท่านต้องการอัตเดทข้อมูลของท่านในระบบงานธนาคารให้เป็นปัจจุบันหรือไม่(ถ้ามี)
					<input type="submit" value="CONFIRM" />
				</form>
			</div>
	</div> --%>
	
	<form action="submit" method="post" modelAttribute="managementForm">
	TEST : <input name="bloodgroup" >
	</form>
	
	
	
</body>
</html>