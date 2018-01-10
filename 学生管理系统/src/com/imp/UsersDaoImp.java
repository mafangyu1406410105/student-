package com.imp;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.base.BaseConnection;
import com.dao.UsersDao;
import com.whjg.Users;

public class UsersDaoImp implements UsersDao{

	//登录
	public boolean checklogin(Users user) throws Exception {
		boolean flag = false;
		String sql  = "select userid,username,userpass,userage,usersex,userdate,useremail from users where username=? and userpass=?";
		BaseConnection conn = null;
		PreparedStatement psts = null;
		
		conn = new BaseConnection();
		psts = conn.getConn().prepareStatement(sql);
		psts.setString(1, user.getUsername());
		psts.setString(2, user.getUserpass());
		ResultSet rs = psts.executeQuery();
		if(rs.next()){
			flag = true;
			user.setUsername(rs.getString("username"));
			user.setUserpass(rs.getString("userpass"));
		}
		
		rs.close();
		psts.close();
		conn.close();
		return flag;
	}

	//查询全部
	public List queryList() throws Exception {
		List<Users> list = new ArrayList<Users>();
		String hql = "select userid,username,userpass,userage,usersex,userdate,useremail from Users";
		BaseConnection conn = null; 
		PreparedStatement psts=null;
		
		conn = new BaseConnection();
		psts = conn.getConn().prepareStatement(hql);
		
		ResultSet rs = psts.executeQuery();
		while(rs.next()){
			Users sc = new Users();
			sc.setUserid(rs.getInt(1));
			sc.setUsername(rs.getString(2));
			sc.setUserpass(rs.getString(3));
			sc.setUserage(rs.getInt(4));
			sc.setUsersex(rs.getString(5));
			sc.setUserdate(rs.getString(6));
			sc.setUseremail(rs.getString(7));
			list.add(sc);
		}
			rs.close();
			psts.close();
			conn.close();
			return list;
	}

	//修改
	public void update(Users user) throws Exception {
		String hql = "update Users set username=?,userpass=?,userage=?,usersex=?,userdate=?,useremail=? where userid=?";
		BaseConnection conn = null; 
		PreparedStatement psts=null;
		int n=0;
		
		conn = new BaseConnection();
		try {
			psts = conn.getConn().prepareStatement(hql);
			psts.setString(1, user.getUsername());
			psts.setString(2, user.getUserpass());
			psts.setInt(3, user.getUserage());
			psts.setString(4, user.getUsersex());
			psts.setString(5, user.getUserdate());
			psts.setString(6, user.getUseremail());
			psts.setInt(7, user.getUserid());
			
			n = psts.executeUpdate();
			System.out.println("插入语句执行结果-----" + n);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			psts.close();
			conn.close();
		}
	}

	//删除
	public void delete(int userid) throws Exception {
		String qqq = "delete from Users where userid = ?";
		BaseConnection conn = null;
		PreparedStatement psts = null;
		
		conn = new BaseConnection();
		int n = 0;
		try {
			psts = conn.getConn().prepareStatement(qqq);
			psts.setInt(1, userid);
			n = psts.executeUpdate();
			System.out.println("删除语句执行结果-----" + n);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			psts.close();
			conn.close();
		}
		
	}

	//根据单个ID查询
	public Users getById(int userid) throws Exception {
		String qlq = "select userid,username,userpass,userage,usersex,userdate,useremail from users where userid='"+userid+"'";
		Users u = new Users();
		BaseConnection conn = new BaseConnection();
		PreparedStatement psts = null;
		
		try {
			psts = conn.getConn().prepareStatement(qlq);
			ResultSet rs = null;
			rs = psts.executeQuery();
			System.out.println("---getById---" + rs);
			while(rs.next()){
				u.setUserid(userid);
				u.setUsername(rs.getString("username"));
				u.setUserpass(rs.getString("userpass"));
				u.setUserage(rs.getInt("userage"));
				u.setUsersex(rs.getString("usersex"));
				u.setUserdate(rs.getString("userdate"));
				u.setUseremail(rs.getString("useremail"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			psts.close();
			conn.close();
		}
		
		return u;
	}

	//添加
	public void add(Users user) throws Exception {
		String sql = "insert into Users(userid,username,userpass,userage,usersex,userdate,useremail)values(?,?,?,?,?,?,?);";
		BaseConnection conn = new BaseConnection();
		PreparedStatement psts = null;
		int n = 0;
		
		try {
			psts = conn.getConn().prepareStatement(sql);
			psts.setInt(1, user.getUserid());
			psts.setString(2, user.getUsername());
			psts.setString(3, user.getUserpass());
			psts.setInt(4, user.getUserage());
			psts.setString(5, user.getUsersex());
			psts.setString(6, user.getUserdate());
			psts.setString(7, user.getUseremail());
			
			n = psts.executeUpdate();
			System.out.println("插入语句执行结果-----" + n);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			psts.close();
			conn.close();
		}
		
	}

	//逆序查询代码
	public List queryList1() throws Exception {
		List<Users> list = new ArrayList<Users>();
		String hql = "select userid,username,userpass,userage,usersex,userdate,useremail from Users order by userid desc";
		BaseConnection conn = null; 
		PreparedStatement psts=null;
		
		conn = new BaseConnection();
		psts = conn.getConn().prepareStatement(hql);
		
		ResultSet rs = psts.executeQuery();
		while(rs.next()){
			Users sc = new Users();
			sc.setUserid(rs.getInt(1));
			sc.setUsername(rs.getString(2));
			sc.setUserpass(rs.getString(3));
			sc.setUserage(rs.getInt(4));
			sc.setUsersex(rs.getString(5));
			sc.setUserdate(rs.getString(6));
			sc.setUseremail(rs.getString(7));
			list.add(sc);
		}
			rs.close();
			psts.close();
			conn.close();
			return list;
	}

	//模糊查询
	public List queryList2(Users user) throws Exception {
		List<Users> list = new ArrayList<Users>();
		String hql = "select userid,username,userpass,userage,usersex,userdate,useremail from Users where username like ?";
		BaseConnection conn = null; 
		PreparedStatement psts=null;

		conn = new BaseConnection();
		psts = conn.getConn().prepareStatement(hql);
		psts.setString(1, "%"+user.getUsername()+"%");
		

		ResultSet rs = psts.executeQuery();
		while(rs.next()){
			Users sc = new Users();
			sc.setUserid(rs.getInt(1));
			sc.setUsername(rs.getString(2));
			sc.setUserpass(rs.getString(3));
			sc.setUserage(rs.getInt(4));
			sc.setUsersex(rs.getString(5));
			sc.setUserdate(rs.getString(6));
			sc.setUseremail(rs.getString(7));
			list.add(sc);
		}
			rs.close();
			psts.close();
			conn.close();
			return list;
	}

	//条件查询
	public List queryList3(Users user) throws Exception {
		List<Users> list = new ArrayList<Users>();
		String sql = "select userid,username,userpass,userage,usersex,userdate,useremail from Users where username=?";
		BaseConnection conn = null;
		PreparedStatement psts = null;
		conn = new BaseConnection();
		psts = conn.getConn().prepareStatement(sql);
		psts.setString(1, user.getUsername());
		
		ResultSet rs = psts.executeQuery();
		while(rs.next()){
			user.setUserid(rs.getInt("userid"));
			user.setUsername(rs.getString("username"));
			user.setUserpass(rs.getString("userpass"));
			user.setUserage(rs.getInt("userage"));
			user.setUsersex(rs.getString("usersex"));
			user.setUserdate(rs.getString("userdate"));
			user.setUseremail(rs.getString("useremail"));
			list.add(user);
		}
			rs.close();
			psts.close();
			conn.close();
			return list;
	}

}
