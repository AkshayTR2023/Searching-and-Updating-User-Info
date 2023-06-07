package com.example;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class UserDao {
	private HibernateTemplate temp;
	
	public void setTemp(HibernateTemplate temp) {
		this.temp = temp;
	}
	
	public User getUser(int id){
		return temp.get(User.class, id);
	}
	
	public void updateUser(User user){
		temp.update(user);
	}

}

