package com.sample.example.address;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AddressService{

	@Autowired
	private AddressRepository addressRepository;
	
	@Autowired
	private ProvinceRepository provinceRepository;
	
	@Autowired
	private AmphurRepository amphurRepository;
	
	@Autowired
	private DistinctRepository distinctRepository;
	
	
	public List<Address> getAllAddress(){
		List<Address> addresses = new ArrayList<>();
		addressRepository.findAll().forEach(addresses::add);
		return addresses;
	}
	
	public Address getStudents(int addressId){
		return addressRepository.findOne(addressId);
	}
	
	public List<Province> getAllProvince() {
		List<Province> provinces = new ArrayList<>();
		provinceRepository.findAll().forEach(provinces::add);
		return provinces;
	}
	
	public List<Amphur> getAllAmphur() {
		List<Amphur> amphurs = new ArrayList<>();
		amphurRepository.findAll().forEach(amphurs::add);
		return amphurs;
	}
	public List<Amphur> getAmphurInProvince(int provinceId) {
		return amphurRepository.getAmphurInProvince(provinceId);
	}
	
	public List<District> getAllDistrict() {
		List<District> distincts = new ArrayList<>();
		distinctRepository.findAll().forEach(distincts::add);
		return distincts;
	}
	
	public List<District> getDistrinctInAmphur(int provinceId,int amphurId) {
		return distinctRepository.getDistrinctInAmphur(provinceId,amphurId);
	}

	
}
