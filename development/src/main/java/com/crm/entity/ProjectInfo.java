package com.crm.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Table(name = "c_project_info")
// 默认的缓存策略.
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class ProjectInfo extends IdEntity {
	private String projectName;
	private String remark;
	private Date createDate;
	private Long createUserId;
	private String createUserName;
	private Long groupId;
	private List<DiscussMain> discussDiscusses;

	public ProjectInfo() {

	}

	public ProjectInfo(Long currentProjectId) {
		this.id = currentProjectId;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Long getCreateUserId() {
		return createUserId;
	}

	public void setCreateUserId(Long createUserId) {
		this.createUserId = createUserId;
	}

	public String getCreateUserName() {
		return createUserName;
	}

	public void setCreateUserName(String createUserName) {
		this.createUserName = createUserName;
	}

	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}

	@Transient
	public List<DiscussMain> getDiscussDiscusses() {
		return discussDiscusses;
	}

	public void setDiscussDiscusses(List<DiscussMain> discussDiscusses) {
		this.discussDiscusses = discussDiscusses;
	}

}
