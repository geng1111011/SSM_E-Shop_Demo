package service.before;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import dao.UserDao;
import po.Buser;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao userDao;
	
	@Override
	public String register(Buser buser, Model model, HttpSession session) {
	
		int n = userDao.register(buser);
		if(n > 0) {
			return "forward:/before";
		}else {
			model.addAttribute("msg", "×¢²áÊ§°Ü£¡");
			return "before/register";
		}
	}
	@Override
	public String login(Buser buser, Model model, HttpSession session) {
		Buser ruser = null;
		List<Buser> list = userDao.login(buser);
		System.out.println(list);
		if(list.size() > 0) {
			ruser = list.get(0);
		}
		if(ruser != null) {
			session.setAttribute("bruser", ruser);
			return "redirect:/before";
		}else {
			model.addAttribute("msg", "ÓÃ»§Ãû»òÃÜÂë´íÎó£¡");
			return "/before/login";
		}
	}

}
