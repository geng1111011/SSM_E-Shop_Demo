package service.admin;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public interface AdminTypeService {
	public String toAddType(Model model);
	public String addType(String typename,Integer typeParent,Model model,HttpSession session);
	public String toDeleteType(Model model);
	public String deleteType(Integer id,Model model);
}
