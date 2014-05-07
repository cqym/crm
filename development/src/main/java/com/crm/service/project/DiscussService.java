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

import com.crm.dao.DiscussDetailDao;
import com.crm.dao.DiscussMainDao;
import com.crm.dao.ProjectInfoDao;
import com.crm.entity.DiscussDetail;
import com.crm.entity.DiscussMain;
import com.crm.entity.ProjectInfo;

@Component
@Transactional
public class DiscussService {
	@Autowired
	private ProjectInfoDao projectInfoDao;
	@Autowired
	private DiscussMainDao discussMainDao;
	@Autowired
	private DiscussDetailDao discussDetailDao;

	public void saveDiscussMain(DiscussMain ent) {
		discussMainDao.save(ent);
	}

	public void saveDiscussMain(DiscussDetail ent) {
		discussDetailDao.save(ent);
	}

	public DiscussMain getDiscussMainById(Long mainId) {
		DiscussMain disMain = discussMainDao.findOne(mainId);
		ProjectInfo projInfo = projectInfoDao.findOne(disMain.getProjectId());
		disMain.setProjectName(projInfo.getProjectName());
		disMain.setDetail(this.getDetailAll(mainId));
		return disMain;
	}

	public List<DiscussDetail> getDetailAll(Long mainId) {
		Map<String, Object> param = new HashMap<String, Object>();
		param.put("EQ_discussMainId", mainId.toString());
		Map<String, SearchFilter> filters = SearchFilter.parse(param);
		Specification<DiscussDetail> spec = DynamicSpecifications.bySearchFilter(filters.values(), DiscussDetail.class);
		return discussDetailDao.findAll(spec, new Sort(Direction.DESC, "id"));
	}
}
