package service.before;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import po.Notice;
import dao.AdminNoticeDao;
import dao.AdminTypeDao;
import dao.IndexDao;
import po.Buser;
import po.ProductInfo;



@Service("indexService")
@Transactional
public class IndexServiceImpl implements IndexService{
	@Autowired
	private IndexDao indexDao;
	
	@Autowired
	private AdminTypeDao adminTypeDao;
	
	@Autowired
	private AdminNoticeDao adminNoticeDao;
	/*@Autowired
	private ProductTypeMapper adminTypeDao;
	@Autowired
	private NoticeBoardMapper adminNoticeDao;*/
	
	@Override
	public String before(Model model, HttpSession session, ProductInfo goods) {
		//session.setAttribute("goodsType", adminTypeDao.selectProductType());
		//model.addAttribute("salelist", indexDao.getSaleOrder());
		//model.addAttribute("focuslist", indexDao.getFocusOrder());
		model.addAttribute("noticelist", indexDao.selectNotice());
		/*if(goods.getProductId() == null) 
			goods.setProductId(0);*/
		//model.addAttribute("lastedlist", indexDao.getLastedGoods(goods));
		session.setAttribute("ProductType", adminTypeDao.selectGoodsType());
		return "before/index";
	}

	@Override
	public String toRegister(Model model) {
		model.addAttribute("rbuser", new Buser());
		return "before/register";
	}

	@Override
	public String toLogin(Model model) {
		model.addAttribute("lbuser", new Buser());
		return "before/login";
	}
	
	@Override
	public String toCommodity(Model model){
		//return null;
		//return "forward:/";
		//return "forward:/before/commodity";x
		//return "forward:/toCmmodity";x
		//return "before/toCmmodity";x
		
		List<ProductInfo> list = indexDao.selectAll();
		//System.out.println(list);
		model.addAttribute("noticelist", indexDao.selectNotice());
		model.addAttribute("ProductList", list);
		return "before/commodity";
		
	}

	@Override
	public String goodsDetail(Model model, Integer id) {
		ProductInfo ProductInfo = indexDao.selectProductById(id);
		model.addAttribute("goods", ProductInfo);
		return "before/goodsdetail";
	}

	@Override
	public String search(Model model, String searchkey) {
		
		List<ProductInfo> list5 = indexDao.search(searchkey);
		if (list5==null){
			model.addAttribute("msg2", "没有你想要的结果");
		}
		//System.out.println(list);
		model.addAttribute("ProductList", list5);
		System.out.println(list5);
		return "before/commodity";
	}

	@Override
	public String searchByType(Model model, Integer typeId) {
		List<ProductInfo> list6 = indexDao.searchByType(typeId);
		if (list6==null){
			model.addAttribute("msg2", "没有你想要的结果");
		}
		//System.out.println(list);
		model.addAttribute("ProductList", list6);
		//System.out.println(list6);
		return "before/commodity";
	}

	@Override
	public String selectANotice(Model model, Integer id) {
		Notice notice = adminNoticeDao.selectANotice(id);
		model.addAttribute("notice", notice);
		return "admin/noticeDetail";
	}
	
}
