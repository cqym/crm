package com.crm.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.crm.entity.DiscussMain;

public interface DiscussMainDao extends PagingAndSortingRepository<DiscussMain, Long>, JpaSpecificationExecutor<DiscussMain> {

}
