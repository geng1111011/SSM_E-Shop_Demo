package service.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;


import dao.AdminTypeDao;
import po.ProductType;
@Service("adminTypeService")
@Transactional
public class AdminTypeServiceImpl implements AdminTypeService{
	@Autowired
	private AdminTypeDao adminTypeDao;

	@Override
	public String toAddType(Model model) {
		model.addAttribute("allTypes", adminTypeDao.selectGoodsType());
		model.addAttribute("bigType", adminTypeDao.selectbigGoodsType());
		model.addAttribute("types", new ProductType());
		return "admin/addType";
	}

	@Override
	public String addType(String typeName,Integer typeParent,Model model, HttpSession session) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("typeName", typeName);
		map.put("typeParent", typeParent);

		adminTypeDao.addType(map);


		session.setAttribute("goodsType", adminTypeDao.selectGoodsType());

		return "forward:/adminType/toAddType";
	}

	@Override
	public String toDeleteType(Model model) {
		model.addAttribute("allTypes", adminTypeDao.selectGoodsType());
		System.out.println("deleteTypeCheck2");
		return "admin/deleteType";
	}

	@Override
	public String deleteType(Integer typeId, Model model) {
		//�����й���
		if(adminTypeDao.selectGoodsByType(typeId).size() > 0) {
			model.addAttribute("msg", "�����й�����������ɾ����");
			return "forward:/adminType/toDeleteType";
		}
		if(adminTypeDao.deleteType(typeId) > 0) 
			{System.out.println("deleteTypeCheck");
			model.addAttribute("msg", "���ͳɹ�ɾ����");}
		//�ص�ɾ��ҳ��
		return "forward:/adminType/toDeleteType";
	}
	
}
