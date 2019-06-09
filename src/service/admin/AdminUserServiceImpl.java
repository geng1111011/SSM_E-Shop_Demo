package service.admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import dao.AdminUserDao;
import dao.CartDao;
import dao.OrderDao;


@Service("adminUserService")
@Transactional
public class AdminUserServiceImpl implements AdminUserService{
	@Autowired
	private AdminUserDao adminUserDao;
	@Autowired
	private CartDao cartDao;
	@Autowired
	private OrderDao orderDao;
	@Override
	public String userInfo(Model model) {
		model.addAttribute("userList", adminUserDao.userInfo());
		return "admin/deleteUser";
	}
	@Override
	public String deleteUser(Integer userId, Model model) {
		//�û��й���
		if(cartDao.selectCart(userId).size() > 0 ||
				orderDao.checkUserDelete(userId).size() > 0)
		 {
			model.addAttribute("msg", "�û��й���������ɾ����");
			return "forward:/adminUser/userInfo";
		}
		if(adminUserDao.deleteUser(userId) > 0) 
			model.addAttribute("msg", "�ɹ�ɾ���û���");
		return "forward:/adminUser/userInfo";
	}

}
