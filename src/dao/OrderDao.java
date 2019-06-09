package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import po.Order;
import po.Shoppingcar;

@Repository("orderDao")
@Mapper
public interface OrderDao {
	public int addOrder(Order order);
	public int addOrderDetail(Map<String, Object> map);
	public List<Map<String, Object>> selectGoodsShop(Integer uid);
	public List<Map<String, Object>> checkUserDelete(Integer uid);
	public List<Shoppingcar>  selectList(Integer uid);
	public int updateStore(Map<String, Object> map);
	public int clear(Integer uid);
	public int pay(Map<String, Object> map);
}
