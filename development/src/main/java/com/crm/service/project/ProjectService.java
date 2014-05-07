package com.crm.service.project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springside.modules.persistence.DynamicSpecifications;
import org.springside.modules.persistence.SearchFilter;

import com.crm.dao.DiscussMainDao;
import com.crm.dao.ProjectInfoDao;
import com.crm.entity.DiscussMain;
import com.crm.entity.ProjectInfo;

@Component
@Transactional
public class ProjectService {

	@Autowired
	private ProjectInfoDao projectInfoDao;
	@Autowired
	private DiscussMainDao discussDao;

	public void saveProject(ProjectInfo entity) {
		projectInfoDao.save(entity);
	}

	public void deleteProject(Long id) {
		projectInfoDao.delete(id);
	}

	public List<ProjectInfo> getAllProjects() {
		return (List<ProjectInfo>) projectInfoDao.findAll();
	}

	public ProjectInfo getProjectById(Long id) {
		ProjectInfo projInfo = projectInfoDao.findOne(id);

		Map<String, Object> param = new HashMap<String, Object>();
		param.put("EQ_projectId", id.toString());
		Map<String, SearchFilter> filters = SearchFilter.parse(param);
		Specification<DiscussMain> spec = DynamicSpecifications.bySearchFilter(filters.values(), DiscussMain.class);
		projInfo.setDiscussDiscusses(discussDao.findAll(spec, new Sort(Direction.DESC, "id")));
		return projInfo;
	}
}
