package kr.co.coily.group.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coily.repository.dao.GroupDAO;
import kr.co.coily.repository.vo.GroupHeaderVO;
import kr.co.coily.repository.vo.PageResultVO;
import kr.co.coily.repository.vo.SearchVO;

@Service
public class GroupServiceImpl implements GroupService {

	@Autowired
	private GroupDAO dao;
	
	public Map<String, Object> retrieveGroupList(SearchVO search) {
	//	System.out.println("서비스 리스트");
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("list", dao.selectGroupList(search));
		result.put("pageResult", new PageResultVO(search.getPageNo(), dao.selectGroupCnt(search)));
		return result;
	}

	public String insertGroup(GroupHeaderVO header) {
		System.out.println("서비스 등록");
		return dao.insertGroup(header);
	}

}
