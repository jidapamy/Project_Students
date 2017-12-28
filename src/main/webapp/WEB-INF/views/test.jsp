<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@page import="com.sample.example.address.Province"%>
<%@page import="com.sample.example.address.Amphur"%>
<%@page import="com.sample.example.address.District"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    alert("Eieiei");
});
</script>
</head>
<body>

<br><Br><br>


		<form action="choose" method="get" modelAttribute="addressForm">
			<select id="legalprovince" name="provinceId" >
										<option value="">-- เลือกจังหวัด --</option>
										<% List<Province> lProvinces = (List) request.getAttribute("provinces");
										for (Province province : lProvinces) {
										%>
										<option value="<%=province.getProvinceId() %>" 
										<% int provinceId = (Integer) request.getAttribute("provinceId") ;
										if(provinceId == province.getProvinceId()){
										%> 
										selected
										<%} %>
										>
											<%=province.getProvinceName()%>
										</option> 
										<%
										}
										%>
			</select>
			<input type="submit" value="Send">
		</form>
			
		<form action="choose" method="get" modelAttribute="addressForm">	
		 <select id="legaldistint" name="amphurId">
											<option value="">-- กรุณาเลือกอำเภอ --</option>
											<% List<Amphur> lAmphurs = (List) request.getAttribute("amphurs");
											for (Amphur amphur : lAmphurs) {
											%>
												<option value="<%=amphur.getAmphurId()%>"
												<% int amphurId = (Integer) request.getAttribute("amphurId") ;
												if(amphurId == amphur.getAmphurId()){
												%> 
												selected
												<%} %>
											>
											<%=amphur.getAmphurName()%>
											</option> 
											<%
											}
											%>
		</select>
		<input type="submit" value="Send">
		</form>
		<form action="choose" method="get" modelAttribute="addressForm">
		<select id="legalsubdistint" name="districtId">
											<option value="">-- กรุณาเลือกตำบล --</option>
											<% List<District> lDistricts = (List) request.getAttribute("districts");
											for (District district : lDistricts) {
											%>
												<option value="<%=district.getDistrictId()%>"
													<% int districtId = (Integer) request.getAttribute("districtId") ;
													if(districtId == district.getDistrictId()){
													%> 
													selected
													<%} %>
												>
												<%=district.getDistrictName()%>
												</option> 
											<%
											}
											%> 
		</select> 
		
		<input type="submit" value="Send">
		</form>
		

</body>
</html>