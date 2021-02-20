package DAO;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.User;

public class UserOperation implements UserDeclaration{

	SessionFactory sf;
	Session ss;
	Transaction tr;
	
	public UserOperation() {
		sf = helpingClass.SessionFact.getSessionFact();
		ss = sf.openSession();
	}
	
	@Override
	public long insertUser(User user) {
		tr = ss.beginTransaction();
		long l = (Long) ss.save(user);
		tr.commit();
		if(l>0) {
			return 1;
		}else
		return 0;
	}

	@Override
	public long update(long user_id, User user) {
		return 0;
	}

	@Override
	public boolean delete(long user_id) {
		return false;
	}

	@Override
	public User selectUser(long user_id) {
		return null;
	}

	@SuppressWarnings("rawtypes")
	@Override
	public List selectAllUser() {
		tr = ss.beginTransaction();
		String hql = "from model.User";
		@SuppressWarnings("unchecked")
		List<User> li = ss.createQuery(hql).list();
//		@SuppressWarnings("rawtypes")
//		ListIterator lit = li.listIterator();
//		System.err.println(""+li.size());
//		while (lit.hasNext()) {
//			User user = (User) lit.next();
//			System.out.print(user.getName());
//		}
		if(li.size()>0) {
			return li;
		}
		return null;
	}
	
	
	public static void main(String[] args) {
		UserOperation ope = new UserOperation();
		ope.selectAllUser();
	}

}
