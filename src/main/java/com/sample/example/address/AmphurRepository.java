package com.sample.example.address;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface AmphurRepository extends CrudRepository<Amphur, Integer>{
	@Query("FROM Amphur a WHERE a.provinceId = :provinceId")
	public List<Amphur> getAmphurInProvince(@Param("provinceId") int provinceId);
	
}

