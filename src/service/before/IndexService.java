package service.before;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import po.ProductInfo;

public interface IndexService {
	public String before(Model model,HttpSession session, ProductInfo goods);
	public String toRegister(Model model);
	public String toLogin(Model model);
	public String toCommodity(Model model);
	public String goodsDetail(Model model,Integer id);
	public String selectANotice(Model model,Integer id);
	public String search(Model model,String searchkey);
	public String searchByType(Model model,Integer typeId);
	
}
