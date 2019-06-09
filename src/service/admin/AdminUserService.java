package service.admin;

import org.springframework.ui.Model;

public interface AdminUserService {
	public String userInfo(Model model);
	public String deleteUser(Integer userId, Model model);
}
