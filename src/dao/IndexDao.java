package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import po.ProductInfo;


@Repository("indexDao")
@Mapper
public interface IndexDao {
	/*public List<Map<String, Object>> getSaleOrder();
	public List<Map<String, Object>> getFocusOrder();
	
	public List<Map<String, Object>> getLastedGoods(Goods goods);*/
	public List<Map<String, Object>> selectNotice();
	public List<ProductInfo> search(String mykey);
	public List<ProductInfo> selectAll();
	public ProductInfo selectProductById(Integer id);
	public List<ProductInfo> searchByType(Integer typeId);
}
