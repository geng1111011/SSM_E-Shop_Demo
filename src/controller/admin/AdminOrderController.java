package controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.admin.AdminOrderService;



@Controller
@RequestMapping("/adminOrder")
public class AdminOrderController {
	@Autowired
	private AdminOrderService adminOrderService;
	@RequestMapping("/orderInfo")
	public String orderInfo(Model model) {
		return adminOrderService.orderInfo(model);
	}
	@RequestMapping("/deleteOrder")
	public String deleteorderManager(Integer productsaleId) {
		return adminOrderService.deleteOrder(productsaleId);
	}
}
