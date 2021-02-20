package DAO;

import java.util.*;

import model.User;

public interface UserDeclaration {

	public long insertUser(User user);
	public long update(long user_id, User user);
	public boolean delete(long user_id);	
	public User selectUser(long user_id);
	@SuppressWarnings("rawtypes")
	public List selectAllUser();
	//public ArrayList searchByName(String name);
}
