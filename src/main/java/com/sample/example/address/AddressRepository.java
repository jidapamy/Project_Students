package com.sample.example.address;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface AddressRepository extends CrudRepository<Address, Integer>{
	@Query("FROM Address a WHERE a.provinceName = :provinceName")
	public List<Address> getProvinces(@Param("provinceName") String province);
}

