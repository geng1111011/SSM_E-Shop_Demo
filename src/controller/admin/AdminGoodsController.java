package controller.admin;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import po.ProductInfo;
import service.admin.AdminGoodsService;


@Controller

@RequestMapping("/adminGoods")
public class AdminGoodsController {
	@Autowired
	private AdminGoodsService adminGoodsService;

	/**
	 * add页面初始化
	 */
	@RequestMapping("/toAddGoods")
	public String toAddGoods(Model model){
		model.addAttribute("goods", new ProductInfo());
		return "admin/addGoods";
	}
	/**
	 * 添加与修改
	 */
	@RequestMapping("/addGoods")
	public String addGoods(@ModelAttribute ProductInfo goods, HttpServletRequest request, String updateAct){
		return adminGoodsService.addOrUpdateGoods(goods, request, updateAct);
	}

	/**
	 * 查询一个名片
	 */
	@RequestMapping("/selectAGoods")
	public String selectAGoods(Model model, Integer id, String act){
		return adminGoodsService.selectAGoods(model, id, act);
	}
	@RequestMapping("/selectGoods")
	public String selectGoods(Model model, Integer pageCur, String act) {
		return adminGoodsService.selectGoods(model, pageCur, act);
	}
}
