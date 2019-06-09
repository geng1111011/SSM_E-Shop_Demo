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
	 * 获得时间字符串
	 */
	public static String getStringID(){
		String id=null;
		Date date=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
		id=sdf.format(date);
		return id;
	}
	/**
	 * 获得用户ID
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
        int machineId = 1;//最大支持1-9个集群机器部署
        int hashCodeV = UUID.randomUUID().toString().hashCode();
        if(hashCodeV < 0) {//有可能是负数
            hashCodeV = - hashCodeV;
        }
//         0 代表前面补充0     
//      4 代表长度为4     
//      d 代表参数为正数型
     return  machineId+ String.format("%015d", hashCodeV);
        }
}
