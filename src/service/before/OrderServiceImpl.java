package service.before;

import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.math.BigDecimal;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import po.ProductInfo;
import po.Shoppingcar;
import dao.IndexDao;
import dao.OrderDao;
import po.Order;
import tool.MyUtil;


@Service("orderService")
@Transactional
/**
 * ���������������ĸ��²������˴�����ʹ���������
 */
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderDao orderDao;
	@Autowired
	private IndexDao indexDao;
	/**
	 * �����ύ��������������
	 */
	@Override
	public String orderSubmit(Model model, HttpSession session, Double amount) {
		Order order = new Order();
		BigDecimal mount =BigDecimal.valueOf(amount);
		
		order.setProductTotal(mount);
		order.setUserId(MyUtil.getUserId(session));
		//���ɶ�����������������order
		orderDao.addOrder(order);
		System.out.println("ordersaleid"+order.getProductsaleId());
		//���ɶ�������
		//Map<String, Object> map = new HashMap<String, Object>();
		//map.put("ordersn", order.getProductsaleId());
		//map.put("uid", MyUtil.getUserId(session));
		//map.put("ordersn", order.getProductsaleId());
		//ProductInfo productInfo=MyUtil.getCarlist(session);
		
		//Map list2=orderDao.selectList(MyUtil.getUserId(session));
	     List<Shoppingcar> shoppingcars = (List<Shoppingcar>) orderDao.selectList(MyUtil.getUserId(session));	
	     System.out.println("shoppingcars"+shoppingcars);
	
		//������Ʒ���2.������Ʒ���������¿��
		Map<String, Object> map = new HashMap<String, Object>();
		int ids=order.getProductsaleId();
		for (Shoppingcar list3 : shoppingcars) {
			map.put("ordersn",ids );
			map.put("productId", list3.getProductid());
			map.put("userId", list3.getUserid());
			map.put("orderId",MyUtil.getOrderIdByUUId());
			orderDao.addOrderDetail(map);
			
		}
	
		
		
		
		
		
		//������Ʒ���
		//������Ʒ���1.��ѯ��Ʒ���������Ա���¿��ʹ��
		List<Map<String, Object>> list = orderDao.selectGoodsShop(MyUtil.getUserId(session));
		//������Ʒ���2.������Ʒ���������¿��
		for (Map<String, Object> map2 : list) {
			orderDao.updateStore(map2);
		}
		//��չ��ﳵ
		orderDao.clear(MyUtil.getUserId(session));
		model.addAttribute("ordersn", order.getProductsaleId());
		return "before/orderdone";
	}
	@Override
	public String pay(Integer ordersn,String productReceiver,String productorderTel,String productorderAddress) {
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("ordersn",ordersn );
		map2.put("productReceiver",productReceiver);
		map2.put("productorderTel",productorderTel);
		map2.put("productorderAddress",productorderAddress);
		
		orderDao.pay(map2);
		return "before/paydone";
	}
	
	@Override
	public String toCommodity(Model model) {
		List<ProductInfo> list = indexDao.selectAll();
		//System.out.println(list);
		model.addAttribute("ProductList", list);
		return "redirect:/toCommodity";
		
	}
}
