package service.admin;

import org.springframework.ui.Model;

public interface AdminOrderService {
	public String orderInfo(Model model);
	public String deleteOrder(Integer id);
}
