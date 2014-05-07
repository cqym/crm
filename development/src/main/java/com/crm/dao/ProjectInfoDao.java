package com.crm.dao;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.crm.entity.ProjectInfo;

public interface ProjectInfoDao extends PagingAndSortingRepository<ProjectInfo, Long>, JpaSpecificationExecutor<ProjectInfo> {

}
