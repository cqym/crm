package com.crm.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.crm.entity.DiscussDetail;

public interface DiscussDetailDao extends PagingAndSortingRepository<DiscussDetail, Long>, JpaSpecificationExecutor<DiscussDetail> {

}
