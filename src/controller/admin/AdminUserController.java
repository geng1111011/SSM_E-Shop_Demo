package controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.admin.AdminUserService;

@Controller
@RequestMapping("/adminUser")
public class AdminUserController {
	@Autowired
	private AdminUserService adminUserService;
	@RequestMapping("/userInfo")
	public String userInfo(Model model) {
		return adminUserService.userInfo(model);
	}
	@RequestMapping("/deleteUser")
	public String deleteuserManager(Integer userId, Model model) {
		return adminUserService.deleteUser(userId, model);
	}
}
