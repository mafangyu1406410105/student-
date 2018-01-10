package com.dao;

import java.util.List;

import com.whjg.Users;

public interface UsersDao {
	
	//登陆
	public boolean checklogin(Users user) throws Exception;
	
	//查询全部
	public List queryList() throws Exception;
	
	//修改
	public void update(Users user) throws Exception;
	
	//删除
	public void delete(int userid) throws Exception;
	
	//根据id查询
	public Users getById(int userid) throws Exception;
	
	//添加
	public void add(Users user) throws Exception;
	
	//逆序查询
	public List queryList1() throws Exception;
	
	//模糊查询
	public List queryList2(Users user) throws Exception;
	
	//条件查询
	public List queryList3(Users user) throws Exception;
}
