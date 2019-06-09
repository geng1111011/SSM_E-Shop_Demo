package controller.admin;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import po.ProductInfo;
import po.ProductType;
import service.admin.AdminTypeService;

@Controller
@RequestMapping("/adminType")
public class AdminTypeController {
	@Autowired
	private AdminTypeService adminTypeService;
	/**
	 * ���������ҳ��
	 */
	@RequestMapping("/toAddType")
	public String toAddType(Model model) {
		
		return adminTypeService.toAddType(model);
	}
	/**
	 * �������
	 */
	@RequestMapping("/addType")
	public String addType(String typeName,Integer typeParent,Model model,HttpSession session) {
		return adminTypeService.addType(typeName,typeParent, model, session);
	}
	/**
	 * ��ɾ��ҳ��
	 */
	@RequestMapping("/toDeleteType")
	public String toDeleteType(Model model) {
		return adminTypeService.toDeleteType(model);
	}
	/**
	 * ɾ������
	 */
	@RequestMapping("/deleteType")
	public String deleteType(Integer typeId,Model model) {
		return adminTypeService.deleteType(typeId, model);
	}
	
}
