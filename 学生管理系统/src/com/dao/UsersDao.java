package com.dao;

import java.util.List;

import com.whjg.Users;

public interface UsersDao {
	
	//��½
	public boolean checklogin(Users user) throws Exception;
	
	//��ѯȫ��
	public List queryList() throws Exception;
	
	//�޸�
	public void update(Users user) throws Exception;
	
	//ɾ��
	public void delete(int userid) throws Exception;
	
	//����id��ѯ
	public Users getById(int userid) throws Exception;
	
	//���
	public void add(Users user) throws Exception;
	
	//�����ѯ
	public List queryList1() throws Exception;
	
	//ģ����ѯ
	public List queryList2(Users user) throws Exception;
	
	//������ѯ
	public List queryList3(Users user) throws Exception;
}
