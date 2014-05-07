package com.crm.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.crm.entity.User;
public interface UserDao  extends PagingAndSortingRepository<User, Long>{
	User findByLoginName(String loginName);

}
