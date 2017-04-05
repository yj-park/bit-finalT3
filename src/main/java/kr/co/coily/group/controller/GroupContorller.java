package kr.co.coily.group.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.coily.group.service.GroupServiceImpl;
import kr.co.coily.repository.vo.GroupDetailVO;
import kr.co.coily.repository.vo.GroupHeaderVO;
import kr.co.coily.repository.vo.SearchVO;

@Controller
@RequestMapping("/group")
public class GroupContorller {

	@Autowired
	private GroupServiceImpl service;
	
/*	
    @RequestMapping("/test.do")
	public void test() throws Exception {
	};
*/
	
	@RequestMapping("/groupInsert.do")
	public void groupInsert() throws Exception {
	};
	
	@RequestMapping("/groupWriteForm.do")
	public void groupWriteForm() throws Exception {
	};
	
	@ResponseBody
	@RequestMapping("/groupHeaderWrite.do")
	public String insertGroup() throws Exception {
		GroupHeaderVO header = new GroupHeaderVO();
		return service.insertGroup(header);
		
	};
	
	@RequestMapping("/groupDetailWrite.do")
	public String insertGroupDetail(HttpServletRequest request, int groupHeaderNo) throws Exception {
		GroupHeaderVO header = new GroupHeaderVO();
		header.setGroupHeaderNo(groupHeaderNo);
		header.setGroupHeaderName(request.getParameter("groupHeaderName"));
		GroupDetailVO detail = new GroupDetailVO();
		detail.setGroupHeaderNo(groupHeaderNo);
		detail.setUserNo(1);
		service.updateGroupHeader(header);
		service.updateGroupDetail(detail);
		
		return "group/groupList";
	};
	
	@RequestMapping("/groupList.do")
	public String retrieveGroupList(SearchVO search, Model model) throws Exception {
	//	System.out.println("컨트롤러1");
		Map<String, Object> map = service.retrieveGroupList(search);
		model.addAttribute("list", map.get("list"));
		model.addAttribute("pageResult", map.get("pageResult"));
		
		return "group/groupList";
	};
	
	/*public Map<String, Object> retrieveGroupList(SearchVO search) throws Exception {
		System.out.println("컨트롤러1");
		Map<String, Object> map = service.retrieveGroupList(search);
		
		return map; 
	}*/
}
