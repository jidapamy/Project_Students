package com.sample.example.address;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Amphur {
	@Id
	private int amphurId;
	private String amphurCode;
	private String amphurName;
	private int provinceId;
	private int geoId;
	
	public Amphur() {
	}

	public Amphur(int amphurId, String amphurCode, String amphurName, int provinceId, int geoId) {
		super();
		this.amphurId = amphurId;
		this.amphurCode = amphurCode;
		this.amphurName = amphurName;
		this.provinceId = provinceId;
		this.geoId = geoId;
	}

	public int getAmphurId() {
		return amphurId;
	}

	public void setAmphurId(int amphurId) {
		this.amphurId = amphurId;
	}

	public String getAmphurCode() {
		return amphurCode;
	}

	public void setAmphurCode(String amphurCode) {
		this.amphurCode = amphurCode;
	}

	public String getAmphurName() {
		return amphurName;
	}

	public void setAmphurName(String amphurName) {
		this.amphurName = amphurName;
	}

	public int getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}

	public int getGeoId() {
		return geoId;
	}

	public void setGeoId(int geoId) {
		this.geoId = geoId;
	}

	@Override
	public String toString() {
		return "Amphur [amphurId=" + amphurId + ", amphurCode=" + amphurCode + ", amphurName=" + amphurName
				+ ", provinceId=" + provinceId + ", geoId=" + geoId + "]";
	}

	
}