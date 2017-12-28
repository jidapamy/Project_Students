package com.sample.example.address;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Address {
	@Id
	int id;
	int provinceId;
	String provinceName;
	String amphurName;
	String districtName;
	
	public Address() {
	}
	public Address(int id, int provinceId, String provinceName, String amphurName, String districtName) {
		super();
		this.id = id;
		this.provinceId = provinceId;
		this.provinceName = provinceName;
		this.amphurName = amphurName;
		this.districtName = districtName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}
	public String getProvinceName() {
		return provinceName;
	}
	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}
	public String getAmphurName() {
		return amphurName;
	}
	public void setAmphurName(String amphurName) {
		this.amphurName = amphurName;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	@Override
	public String toString() {
		return "Address [id=" + id + ", provinceId=" + provinceId + ", provinceName=" + provinceName + ", amphurName="
				+ amphurName + ", districtName=" + districtName + "]";
	}
	
	

}
