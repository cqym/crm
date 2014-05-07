package com.crm.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "c_discuss_detail")
// 默认的缓存策略.
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class DiscussDetail extends IdEntity {
	private String content;
	private Date createDate;
	private Long discussMainId;
	private Long projectId;
	private Long userId;
	private String userName;

	public DiscussDetail() {

	}

	public DiscussDetail(Long currentDisDetailId) {
		this.id = currentDisDetailId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Long getDiscussMainId() {
		return discussMainId;
	}

	public void setDiscussMainId(Long discussMainId) {
		this.discussMainId = discussMainId;
	}

	public Long getProjectId() {
		return projectId;
	}

	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
