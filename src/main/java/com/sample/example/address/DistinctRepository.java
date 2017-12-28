package com.sample.example.address;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface DistinctRepository extends CrudRepository<District, Integer>{
	@Query("FROM District d WHERE d.provinceId = :provinceId AND d.amphurId = :amphurId")
	public List<District> getDistrinctInAmphur(@Param("provinceId") int provinceId,@Param("amphurId") int amphurId);
}

