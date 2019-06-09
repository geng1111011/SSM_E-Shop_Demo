package tool;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import po.Buser;
import po.Order;
import po.ProductInfo;

public class MyUtil {
	/**
	 * ���ʱ���ַ���
	 */
	public static String getStringID(){
		String id=null;
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		id=sdf.format(date);
		return id;
	}
	/**
	 * ����û�ID
	 */
	public static Integer getUserId(HttpSession session) {
		Buser ruser = (Buser)session.getAttribute("bruser");
		System.out.println("bruser"+ruser);
		return ruser.getUserId();
	}
	
	public static ProductInfo getCarlist(HttpSession session) {
		ProductInfo carlist =(ProductInfo) session.getAttribute("carlist");
		System.out.println("carlist"+carlist);
		return carlist;
	}
	public static String getOrderIdByUUId() {
        int machineId = 1;//���֧��1-9����Ⱥ��������
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//�п����Ǹ���
            hashCodeV = - hashCodeV;
        }
//         0 ����ǰ�油��0     
//      4 ������Ϊ4     
//      d �������Ϊ������
     return  machineId+ String.format("%015d", hashCodeV);
        }
}
