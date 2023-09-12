package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.Company;

@Repository("CompanyRepository")
public interface CompanyRepository extends JpaRepository<Company, Integer>{

}
