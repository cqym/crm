package com.crm.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.crm.entity.UsersProjectsRela;

public interface UsersProjectsRelaDao extends PagingAndSortingRepository<UsersProjectsRela, Long>, JpaSpecificationExecutor<UsersProjectsRela> {

}
