package service.admin;
import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;



import po.ProductInfo;
public interface AdminGoodsService {


	public String addOrUpdateGoods(ProductInfo goods, HttpServletRequest request, String updateAct);

	public String selectGoods(Model model, Integer pageCur, String act);

	public String selectAGoods(Model model, Integer id, String act);

}
