package com.sample.example.address;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sample.example.management.Profile_Bank;


@Controller
//@RestController
public class AddressController {
	AddressForm addressFormCollection = new AddressForm();
	
	@Autowired
	private AddressService addressBankService;
	
	@RequestMapping(value ="/addresses", method = RequestMethod.GET)
	public List<Address> showAddress(){
		return addressBankService.getAllAddress();
	}
	
	@RequestMapping(value ="/address/province", method = RequestMethod.GET)
	public List<Province> showAllProvinces(@ModelAttribute("managementForm") Profile_Bank infoStudent, BindingResult result,Model model){
		return addressBankService.getAllProvince();
	}
	
	@RequestMapping(value ="/address/province/amphurs", method = RequestMethod.GET)
	public String showAmphurInProvinces(@ModelAttribute("managementForm") Profile_Bank infoStudent, BindingResult result,Model model){
		System.out.println("choose province "+infoStudent.getL_Province());
		model.addAttribute("infoStudent",infoStudent);
		model.addAttribute("amphurs",addressBankService.getAmphurInProvince(infoStudent.getL_Province()));
		return "profile";
	}
	
	@RequestMapping(value ="/choose", method = RequestMethod.GET)
	public String showAmphur(@ModelAttribute("addressForm") AddressForm addressForm,Model model){
		System.out.println("Form >>> "+addressForm.toString());
		System.out.println(addressFormCollection.toString());
		model.addAttribute("provinces",addressBankService.getAllProvince());
		if(addressForm.getProvinceId()!=0) {
			model.addAttribute("provinceId",addressForm.getProvinceId());
			model.addAttribute("amphurs",addressBankService.getAmphurInProvince(addressForm.getProvinceId()));
			model.addAttribute("amphurId",0);
			model.addAttribute("districts",addressBankService.getDistrinctInAmphur(addressForm.getProvinceId(),addressForm.getAmphurId()));
			model.addAttribute("districtId",0);
			addressFormCollection.setProvinceId(addressForm.getProvinceId());
			System.out.println(addressFormCollection.toString());
//			if(addressForm.getAmphurId()!=0) {
//				model.addAttribute("amphurId",addressForm.getAmphurId());
//				model.addAttribute("districts",addressBankService.getDistrinctInAmphur(addressForm.getProvinceId(),addressForm.getAmphurId()));
//				if(addressForm.getDirtrictId()!=0) {
//					model.addAttribute("districtId",addressForm.getDirtrictId());
//				}
//			}
		}
		
		if(addressForm.getAmphurId()!=0) {
			if(addressFormCollection.getProvinceId()!=0) {
				System.out.println(true);
				model.addAttribute("provinceId",addressFormCollection.getProvinceId());
				model.addAttribute("amphurs",addressBankService.getAmphurInProvince(addressFormCollection.getProvinceId()));
				model.addAttribute("districtId",0);
				model.addAttribute("amphurId",addressForm.getAmphurId());
				model.addAttribute("districts",addressBankService.getDistrinctInAmphur(addressFormCollection.getProvinceId(), addressForm.getAmphurId()));
				addressFormCollection.setAmphurId(addressForm.getAmphurId());
			}else {
				model.addAttribute("provinceId",0);
				model.addAttribute("amphurs",addressBankService.getAmphurInProvince(addressForm.getProvinceId()));
				model.addAttribute("amphurId",0);
				model.addAttribute("districts",addressBankService.getDistrinctInAmphur(addressForm.getProvinceId(),addressForm.getAmphurId()));
				model.addAttribute("districtId",0);
			}
			
		}
		
		return "test";
	}

	@RequestMapping(value ="/address/{provinceId}/{amphurId}/districts", method = RequestMethod.GET)
	public List<District> showDistricts(@PathVariable int provinceId,@PathVariable int amphurId){
		List<District> districts = new ArrayList<>();
		addressBankService.getDistrinctInAmphur(provinceId, amphurId).forEach(districts::add);
		return districts;
		
	}
	
}

