package com.sample.example.address;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class District {
	@Id
	private int districtId;
	private String districtCode;
	private String districtName;
	private int amphurId;
	private int provinceId;
	private int geoId;
	
	public District() {
	}

	public District(int districtId, String districtCode, String districtName, int amphurId, int provinceId, int geoId) {
		super();
		this.districtId = districtId;
		this.districtCode = districtCode;
		this.districtName = districtName;
		this.amphurId = amphurId;
		this.provinceId = provinceId;
		this.geoId = geoId;
	}

	public int getDistrictId() {
		return districtId;
	}

	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}

	public String getDistrictCode() {
		return districtCode;
	}

	public void setDistrictCode(String districtCode) {
		this.districtCode = districtCode;
	}

	public String getDistrictName() {
		return districtName;
	}

	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}

	public int getAmphurId() {
		return amphurId;
	}

	public void setAmphurId(int amphurId) {
		this.amphurId = amphurId;
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
		return "District [districtId=" + districtId + ", districtCode=" + districtCode + ", districtName="
				+ districtName + ", amphurId=" + amphurId + ", provinceId=" + provinceId + ", geoId=" + geoId + "]";
	}

}