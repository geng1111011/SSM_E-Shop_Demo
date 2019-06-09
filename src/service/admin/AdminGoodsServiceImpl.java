package service.admin;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;



import dao.AdminGoodsDao;
import po.ProductInfo;
import tool.MyUtil;


@Service("adminGoodsService")

@Transactional
public class AdminGoodsServiceImpl implements AdminGoodsService{
	@Autowired
	private AdminGoodsDao adminGoodsDao;
	/**
	 * ��ӻ����
	 */
	@Override
	public String addOrUpdateGoods(ProductInfo goods, HttpServletRequest request, String updateAct) {
		/*�ϴ��ļ��ı���λ��"/logos"����λ����ָ
		workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps��
		������ʹ��*/
		//��ֹ�ļ�������
		String newFileName = "";
		//System.out.println("12");
		String fileName = goods.getLogoImage().getOriginalFilename(); 
		//System.out.println("34");
		//ѡ�����ļ�
		if(fileName.length() > 0){
			String realpath = request.getServletContext().getRealPath("images");
			//ʵ���ļ��ϴ�
			String fileType = fileName.substring(fileName.lastIndexOf('.'));
			//��ֹ�ļ�������
			newFileName = MyUtil.getStringID() + fileType;
			goods.setProductPicture(newFileName);
			File targetFile = new File(realpath, newFileName); 
			if(!targetFile.exists()){  
	            targetFile.mkdirs();  
	        } 
			//�ϴ� 
	        try {   
	        	goods.getLogoImage().transferTo(targetFile);
	        } catch (Exception e) {  
	            e.printStackTrace();  
	        }  
		}
		//�޸�
		if("update".equals(updateAct)){//updateAct������act��������Ϊʹ����ת��
			//�޸ĵ����ݿ�
			//System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
	       if(adminGoodsDao.updateGoodsById(goods) > 0){
	    	   request.setAttribute("msg", "�޸ĳɹ���");
	    	 
	        	return "forward:/adminGoods/selectGoods?act=updateSelect";
	        }else{
	        	return "/adminGoods/updateAgoods";
	       }
		}else{//��
			//���浽���ݿ�
			if(adminGoodsDao.addGoods(goods) > 0){
				//ת������ѯ��controller
				return "admin/insertSucceed";
			}else{
				return "card/addCard";
			}
		}
	}
	
	/**
	 * ��ѯ��Ʒ
	 */
	@Override
	public String selectGoods(Model model, Integer pageCur, String act) {
		List<ProductInfo> allGoods = adminGoodsDao.selectGoods();
		int temp = allGoods.size();
		model.addAttribute("totalCount", temp);
		int totalPage = 0;
		if (temp == 0) {
			totalPage = 0;//��ҳ��
		} else {
			//���ش��ڻ��ߵ���ָ�����ʽ����С����
			totalPage = (int) Math.ceil((double) temp / 10);
		}
		if (pageCur == null) {
			pageCur = 1;
		}
		if ((pageCur - 1) * 10 > temp) {
			pageCur = pageCur - 1;
		}
		//��ҳ��ѯ
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startIndex", (pageCur - 1) * 10);//��ʼλ��
		map.put("perPageSize", 10);//ÿҳ10��
		allGoods = adminGoodsDao.selectAllGoodsByPage(map);
		model.addAttribute("allGoods", allGoods);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("pageCur", pageCur);
		//ɾ����ѯ
		if("deleteSelect".equals(act)){
			return "admin/deleteSelectGoods";
		}
		//�޸Ĳ�ѯ
		else if("updateSelect".equals(act)){
			return "admin/updateSelectGoods";
		}else{
			return "admin/selectGoods";
		}
	}

	@Override
	public String selectAGoods(Model model, Integer id, String act) {
		ProductInfo agoods = adminGoodsDao.selectGoodsById(id);
		model.addAttribute("productInfo", agoods);
		//�޸�ҳ��
		if("updateAgoods".equals(act)){
			return "admin/updateAgoods";
		}
		//����ҳ��
		return "admin/goodsDetail";
	}

}
