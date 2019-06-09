package dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import po.Buser;

@Repository("adminUserDao")
@Mapper
public interface AdminUserDao {
	public List<Buser> userInfo();
	public int deleteUser(Integer userId);
}
