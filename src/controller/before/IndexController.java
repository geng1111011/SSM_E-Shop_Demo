package controller.before;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import po.ProductInfo;
import service.before.IndexService;


@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;
	/**
	 * 首页
	 */
	@RequestMapping("/before")
	public String before(Model model,HttpSession session, ProductInfo goods) {
		
		return indexService.before(model, session, goods);
	}
	/**
	 * 转到注册页面
	 */
	@RequestMapping("/toRegister")
	public String toRegister(Model model) {
		
		return indexService.toRegister(model);
	}
	/**
	 * 转到登录页面
	 */
	@RequestMapping("/toLogin")
	public String toLogin(Model model) {
		return indexService.toLogin(model);
	}
	/**
	 * 转到商品详情页
	 */
	@RequestMapping("/goodsDetail")
	public String goodsDetail(Model model,Integer id) {
		System.out.println("BBBBBBBBBBBBB");
		return indexService.goodsDetail(model, id);
	}
	
	/**
	 * 转到公告页面
	 */
	@RequestMapping("/selectANotice")
	public String selectANotice(Model model,Integer id) {
		return indexService.selectANotice(model, id);
	}
	/**
	 * 首页搜索
	 */
	@RequestMapping("/search")
	public String search(Model model,String searchkey) {
		return indexService.search(model, searchkey);
	}
	@RequestMapping("/searchByType")
	public String searchByType(Model model,Integer typeId) {
		return indexService.searchByType(model, typeId);
	}
	
	
	@RequestMapping("/toCommodity")
	public String toCommodity(Model model) {
		return indexService.toCommodity(model);
	}
}
