package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import po.ProductInfo;
import po.ProductType;
@Repository("adminTypeDao")
@Mapper
public interface AdminTypeDao {
	public List<ProductType> selectGoodsType();
	public List<ProductType> selectbigGoodsType();
	public List<ProductType> selectsmallGoodsType();
	public int addType(Map<String, Object> map);
	public int deleteType(Integer id);
	public List<ProductInfo> selectGoodsByType(Integer id);
	public List<ProductType> selectGoodsTypeByType(Integer id);
	
}
