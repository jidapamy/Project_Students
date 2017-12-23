<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	  <% String type = (String) request.getParameter("type") ;
	  	if(type=="Thai") { 
	  	%>
	         <form action="submit" method="post" modelAttribute="managementForm">
     <fieldset>
      <legend><span class="number">1</span>ข้อมูลส่วนตัว</legend>
      <table style="width:100%">
	      <tr>
		      <td><p>สถาบัน</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="institute" readonly="readonly" value="${infoStudent.getInstitute()}"></td>
		      <td></td>
		      <td><p>คณะ</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="department" readonly="readonly" value="${infoStudent.getDepartment()}"></td>
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
		      <td><p>วันเดือนปีเกิด</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="birthday" readonly="readonly" value="${infoStudent.getBirthday()}"></td>
	      </tr>
	      <tr>
		      <td><p>วันหมดอายุ</p></td>
		      <td><input type="text" name="issuedDate" value="${issuedDate}"></td>
		      <td></td>
		      <td><p>วันออกบัตร</p></td>
		      <td><input type="text" name="expiredDate" value="${expiredDate}"></td>
	      </tr>
	      <tr>
		      <td><p>คำนำหน้า</p></td>
		      <td><input type="text" name="title_Th" placeholder="Your Name *" value="${infoStudent.getTitle_Th()}"></td>
		      <td></td>
		      <td><p>Title</p></td>
		      <td><input type="text" name="title" placeholder="Your Name *" value="${infoStudent.getTitle()}"></td>
	      </tr>
	      <tr>
		      <td><p>ชื่อ</p></td>
		      <td><input type="text" name="name_Th" placeholder="Your Name *" value="${infoStudent.getName_Th()}"></td>
		      <td></td>
		      <td><p>Name</p></td>
		      <td><input type="text" name="name" placeholder="Your Name *" value="${infoStudent.getName()}"></td>
	      </tr>
	      <tr>
		      <td><p>นามสกุล</p></td>
		      <td><input type="text" name="surname_Th" placeholder="Your Name *" value="${infoStudent.getSurname_Th()}"></td>
		      <td></td>
		      <td><p>Surname</p></td>
		      <td><input type="text" name="surname" placeholder="Your Name *" value="${infoStudent.getSurname()}"></td>
	      </tr>
	      <tr>
		      <td><p>เพศ</p></td>
		      <td><input type="text" name="sex" placeholder="Your Name *" value="${infoStudent.getSex()}"></td>
		      <td></td>
		      <td><p>หมู่เลือด</p></td>
		      <td><input type="text" name="bloodGroup" placeholder="Your Name *" value="${infoStudent.getBloodGroup() }"></td>
	      </tr>
	      <tr>
		      <td><p>เบอร์โทรศัพท์</p></td>
		      <td><input type="text" name="tel" placeholder="Your Name *" value="${infoStudent.getTel()}"></td>
		      <td></td>
		      <td></td>
		      <td></td>
	      </tr>
	  </table>
    </fieldset>  
      
    <table style="width:100%">
    		<tr>
    			<td>
    				<fieldset>
				      <legend><span class="number">2</span>ที่อยู่ตามทะเบียนบ้าน</legend>
				      <table>
				      	<tr>
				      		<td><p>ที่อยู่</p></td>
				      		<td><input type="text" name="l_Address" placeholder="Your Name *" value="${infoStudent.getL_Address()}"></td>
				      		<td><p>ตำบล</p></td>
				      		<td><input type="text" name="l_SubDistinct" placeholder="Your Name *" value="${infoStudent.getL_SubDistinct()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>อำเภอ</p></td>
				      		<td><input type="text" name="l_Distinct" placeholder="Your Name *" value="${infoStudent.getL_Distinct()}"></td>
				      		<td><p>จังหวัด</p></td>
				      		<td><input type="text" name="l_Province" placeholder="Your Name *" value="${infoStudent.getL_Province()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>รหัสไปรษณีย์</p></td>
				      		<td><input type="text" name="l_PostalCode" placeholder="Your Name *" value="${infoStudent.getL_PostalCode()}"></td>
				      		<td></td>
				      		<td></td>
				      	</tr>
				      </table>
				</fieldset>
    			</td>
    			<td>
    				 <fieldset>
				      <legend><span class="number">2</span>ที่อยุ่ที่ติดต่อได้</legend>
				  	  <table>
				      	<tr>
				      		<td><p>ที่อยู่</p></td>
				      		<td><input type="text" name="m_Address" placeholder="Your Name *" value="${infoStudent.getM_Address()}"></td>
				      		<td><p>ตำบล</p></td>
				      		<td><input type="text" name="m_SubDistinct" placeholder="Your Name *" value="${infoStudent.getM_SubDistinct()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>อำเภอ</p></td>
				      		<td><input type="text" name="m_Distinct" placeholder="Your Name *" value="${infoStudent.getM_Distinct()}"></td>
				      		<td><p>จังหวัด</p></td>
				      		<td><input type="text" name="m_Provinct" placeholder="Your Name *" value="${infoStudent.getM_Provinct()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>รหัสไปรษณีย์</p></td>
				      		<td><input type="text" name="m_PostalCode" placeholder="Your Name *" value="${infoStudent.getM_PostalCode()}"></td>
				      		<td></td>
				      		<td></td>
				      	</tr>
				      </table>
				</fieldset>
    			</td>
    		</tr>
     </table>
     <input type="submit" value="Submit" />
    </form> 
    <%
    }
	  else{
	  %>
	        <form action="submit" method="post" modelAttribute="managementForm">
     <fieldset>
      <legend><span class="number">1</span>ข้อมูลส่วนตัว</legend>
      <table style="width:100%">
	      <tr>
		      <td><p>Institute</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="institute" readonly="readonly" value="${infoStudent.getInstitute()}"></td>
		      <td></td>
		      <td><p>Department</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="department" readonly="readonly" value="${infoStudent.getDepartment()}"></td>
	      </tr>
	      <tr>
		      <td><p>Passportno</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="passportno" readonly="readonly" value="${infoStudent.getPassportno()}"></td>
		      <td></td>
		      <td><p>Studentid</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="studentid" readonly="readonly" value="${infoStudent.getStudentid()}"></td>
	      </tr>
	      <tr>
		      <td><p>getMajor</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="major" readonly="readonly" value="${infoStudent.getMajor()}"></td>
		      <td></td>
		      <td><p>getBirthday</p></td>
		      <td><input style="background: #d2d2d2;" type="text" name="birthday" readonly="readonly" value="${infoStudent.getBirthday()}"></td>
	      </tr>
	      <tr>
		      <td><p>issuedDate</p></td>
		      <td><input type="text" name="issuedDate" value="${issuedDate}"></td>
		      <td></td>
		      <td><p>expiredDate</p></td>
		      <td><input type="text" name="expiredDate" value="${expiredDate}"></td>
	      </tr>
	      <tr>
			  <td><p>Title</p></td>
		      <td><input type="text" name="title" placeholder="Your Name *" value="${infoStudent.getTitle()}"></td>
		      <td></td>
		      <td><p>Nationality</p></td>
		      <td><input type="text" name="nationality" placeholder="Your Name *" value="${infoStudent.getNationality()}"></td>
	      </tr>
	      <tr>
		       <td><p>Name</p></td>
		      <td><input type="text" name="name" placeholder="Your Name *" value="${infoStudent.getName()}"></td>
		      <td></td>
		      <td><p>Surname</p></td>
		      <td><input type="text" name="surname" placeholder="Your Name *" value="${infoStudent.getSurname()}"></td>
	      </tr>
	      <tr>
		      <td><p>Sex</p></td>
		      <td><input type="text" name="sex" placeholder="Your Name *" value="${infoStudent.getSex()}"></td>
		      <td></td>
		      <td><p>BloodGroup</p></td>
		      <td><input type="text" name="bloodGroup" placeholder="Your Name *" value="${infoStudent.getBloodGroup() }"></td>
	      </tr>
	      <tr>
		      <td><p>Tel</p></td>
		      <td><input type="text" name="tel" placeholder="Your Name *" value="${infoStudent.getTel()}"></td>
		      <td></td>
		      <td></td>
		      <td></td>
	      </tr>
	  </table>
    </fieldset>  
      
    <table style="width:100%">
    		<tr>
    			<td>
    				<fieldset>
				      <legend><span class="number">2</span>Legal Address</legend>
				      <table>
				      	<tr>
				      		<td><p>Address</p></td>
				      		<td><input type="text" name="l_Address" placeholder="Your Name *" value="${infoStudent.getL_Address()}"></td>
				      		<td><p>SubDistinct</p></td>
				      		<td><input type="text" name="l_SubDistinct" placeholder="Your Name *" value="${infoStudent.getL_SubDistinct()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>Distinct</p></td>
				      		<td><input type="text" name="l_Distinct" placeholder="Your Name *" value="${infoStudent.getL_Distinct()}"></td>
				      		<td><p>Province</p></td>
				      		<td><input type="text" name="l_Province" placeholder="Your Name *" value="${infoStudent.getL_Province()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>PostalCode์</p></td>
				      		<td><input type="text" name="l_PostalCode" placeholder="Your Name *" value="${infoStudent.getL_PostalCode()}"></td>
				      		<td></td>
				      		<td><p>Country</p></td>
				      		<td><input type="text" name="l_Country" placeholder="Your Name *" value="${infoStudent.getL_Country()}"></td>
				      	</tr>
				      </table>
				</fieldset>
    			</td>
    			<td>
    				 <fieldset>
				      <legend><span class="number">2</span>Mailing Address</legend>
				  	  <table>
				      	<tr>
				      		<td><p>Address</p></td>
				      		<td><input type="text" name="m_Address" placeholder="Your Name *" value="${infoStudent.getM_Address()}"></td>
				      		<td><p>SubDistinct</p></td>
				      		<td><input type="text" name="m_SubDistinct" placeholder="Your Name *" value="${infoStudent.getM_SubDistinct()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>Distinct</p></td>
				      		<td><input type="text" name="m_Distinct" placeholder="Your Name *" value="${infoStudent.getM_Distinct()}"></td>
				      		<td><p>Province</p></td>
				      		<td><input type="text" name="m_Provinct" placeholder="Your Name *" value="${infoStudent.getM_Provinct()}"></td>
				      	</tr>
				      	<tr>
				      		<td><p>PostalCode</p></td>
				      		<td><input type="text" name="m_PostalCode" placeholder="Your Name *" value="${infoStudent.getM_PostalCode()}"></td>
				      		<td></td>
				      		<td><p>Country</p></td>
				      		<td><input type="text" name="m_Country" placeholder="Your Name *" value="${infoStudent.getM_Country()}"></td>
				      	</tr>
				      </table>
				</fieldset>
    			</td>
    		</tr>
     </table>
     <input type="submit" value="Submit" />
    </form> 
    <%
    		} 
    %>



	
</body>
</html>