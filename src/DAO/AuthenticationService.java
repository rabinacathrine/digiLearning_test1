package DAO;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import model.User;

@SuppressWarnings("deprecation")
public class AuthenticationService {
 
	Transaction tr;
	
	
	public static boolean validateUser(String username, String password) {
		

//		SessionFactory sf = helpingClass.SessionFact.getSessionFact();
//		Session ss = sf.openSession();
//		
//		@SuppressWarnings("rawtypes")
//		Query query = ss.createQuery("FROM User WHERE username = :username and password=:password");
//		query.setParameter("username", username);
//		query.setParameter("password", password);
//		
//		List<User> list =  query.getResultList();
//		
//		if(list.size() == 0) {	
//		return false;
//		}else {
//			return true;
//		}
//		
		
		Transaction transaction = null;
        User user = null;
        try (SessionFactory sf = helpingClass.SessionFact.getSessionFact();
        		Session session = sf.openSession();) {
            // start a transaction
            transaction = session.beginTransaction();
            // get an user object
            user = (User) session.createQuery("FROM User U WHERE U.username = :username").setParameter("username", username);

            if (user != null && user.getPassword().equals(password)) {
            		return true;
            }
            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
               // transaction.rollback();
            }
            e.printStackTrace();
        }
        return false;
    }
		
		
	}
	
	
	
