package service.before;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dao.UserDao;
import po.Buser;
import tool.DBTools;

public class Test {

	 
  /*  public static void main(String[] args) {
    	selectByPrimaryKey();
        
    }

    
    private static void selectByPrimaryKey() {
        SqlSession session = DBTools.getSession();
       UserDao hm = session.getMapper(UserDao.class);
        Buser sInfo=new Buser();
        sInfo.setUserName("7");
        sInfo.setUserPassword("7");
               
        List<Buser> admin =hm.login(sInfo); ;
        System.out.println(admin.get(0).getUserName()+admin.toString().toString());
        session.commit();
       
    }*/

}
