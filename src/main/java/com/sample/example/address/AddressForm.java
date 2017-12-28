package com.sample.example.address;

public class AddressForm {
	String address;
	int provinceId;
	int amphurId;
	int dirtrictId;
	String zipcode;
	
	public AddressForm() {
	}
	
	public AddressForm(String address, int provinceId, int amphurId, int dirtrictId, String zipcode) {
		super();
		this.address = address;
		this.provinceId = provinceId;
		this.amphurId = amphurId;
		this.dirtrictId = dirtrictId;
		this.zipcode = zipcode;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getProvinceId() {
		return provinceId;
	}

	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}

	public int getAmphurId() {
		return amphurId;
	}

	public void setAmphurId(int amphurId) {
		this.amphurId = amphurId;
	}

	public int getDirtrictId() {
		return dirtrictId;
	}

	public void setDirtrictId(int dirtrictId) {
		this.dirtrictId = dirtrictId;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	@Override
	public String toString() {
		return "AddressForm [address=" + address + ", provinceId=" + provinceId + ", amphurId=" + amphurId
				+ ", dirtrictId=" + dirtrictId + ", zipcode=" + zipcode + "]";
	}
	
	
	
	
}
