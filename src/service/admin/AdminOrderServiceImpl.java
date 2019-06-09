package service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import dao.AdminOrderDao;



@Service("adminOrderService")
@Transactional
public class AdminOrderServiceImpl implements AdminOrderService{
	@Autowired
	private AdminOrderDao adminOrderDao;
	@Override
	public String orderInfo(Model model) {
		List<Map<String,Object>> list = adminOrderDao.orderInfo();
		model.addAttribute("orderList", list);
		return "admin/deleteOrder";
	}
	@Override
	public String deleteOrder(Integer productsaleId) {
		//先删除明细
		adminOrderDao.deleteOrderDetail(productsaleId);
		System.out.println("ok1");
		//再删除订单基础
		adminOrderDao.deleteProductOrder(productsaleId);
		System.out.println("ok2");
		return "forward:/adminOrder/orderInfo";
	}

}
