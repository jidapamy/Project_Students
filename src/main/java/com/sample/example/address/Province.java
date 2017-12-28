package com.sample.example.address;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Province {
	@Id
	private int provinceId;
	private String provinceCode;
	private String provinceName;
	private int geoId;
	
	public Province() {
	}

	public Province(int provinceId, String provinceCode, String provinceName, int geoId) {
		super();
		this.provinceId = provinceId;
		this.provinceCode = provinceCode;
		this.provinceName = provinceName;
		this.geoId = geoId;
	}

	public int getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}

	public String getProvinceCode() {
		return provinceCode;
	}

	public void setProvinceCode(String provinceCode) {
		this.provinceCode = provinceCode;
	}

	public String getProvinceName() {
		return provinceName;
	}

	public void setProvinceName(String provinceName) {
		this.provinceName = provinceName;
	}

	public int getGeoId() {
		return geoId;
	}

	public void setGeoId(int geoId) {
		this.geoId = geoId;
	}

	@Override
	public String toString() {
		return "Province [provinceId=" + provinceId + ", provinceCode=" + provinceCode + ", provinceName="
				+ provinceName + ", geoId=" + geoId + "]";
	}
	
	
	
}
