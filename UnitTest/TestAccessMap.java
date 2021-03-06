import static org.junit.Assert.* ;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.junit.Test;

import customTools.DBUtil;
import model.ChApplication;
import model.ChApplicationActivity;
import model.ChUser;
import model.ChUserRole;




public class TestAccessMap {
	@Test
	   public void test_updatesingle() {
		LinkedHashMap<ChApplicationActivity, String> map=new LinkedHashMap<ChApplicationActivity, String>();
		ChUser currentUser=DBUtil.findUser("one", "111");
		ChUserRole role=currentUser.getChUserRoles().get(0);
		ChApplication ap=getApplicationByID(1);
		System.out.println(ap.getAddress());
		map=DBUtil.getAppActAccessMap(role.getChHrrole(), getApplicationByID(1));
	      System.out.println("Test if method has been sucessfully worked") ;  
	     for(Entry<ChApplicationActivity,String> e: map.entrySet()){
	    	 System.out.println(e.getKey().getChActivity().getActdescription() + e.getValue());
	      }
	      assertEquals(map.size(),9) ;
	   }
	public static ChApplication getApplicationByID(long appid) {
		EntityManager em=DBUtil.getEmFactory().createEntityManager();
		String qString = "SELECT c FROM ChApplication c WHERE c.appid = " + appid;
		TypedQuery<ChApplication> q = em.createQuery(qString, ChApplication.class);
		ChApplication app = null;
		try {
			app = q.getSingleResult();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return app;
	}
	public static ChApplicationActivity getApplicationActivityByID(long appactid) {
		EntityManager em=DBUtil.getEmFactory().createEntityManager();
		String qString = "SELECT c FROM ChApplicationActivity c WHERE c.appactid = " + appactid;
		TypedQuery<ChApplicationActivity> q = em.createQuery(qString, ChApplicationActivity.class);
		ChApplicationActivity app = null;
		try {
			app = q.getSingleResult();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			em.close();
		}
		return app;
	}
}