package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import po.ProductInfo;


@Repository("adminGoodsDao")
@Mapper
public interface AdminGoodsDao {
	public List<ProductInfo> selectGoods();
	public int addGoods(ProductInfo goods);
	public ProductInfo selectGoodsById(Integer id);
	public int deleteGoods(List<Integer> ids);
	public int deleteAGoods(Integer id);
	public int updateGoodsById(ProductInfo goods);
	public List<Map<String, Object>> selectCartGoods(Integer id);
	public List<ProductInfo> selectAllGoodsByPage(Map<String, Object> map);

}
