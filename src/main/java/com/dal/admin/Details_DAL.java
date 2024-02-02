package com.dal.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.admin.Add_city_pin;
import com.bean.admin.add_details;
import com.bean.admin.edit_details;
import com.mysql.cj.jdbc.MysqlDataSource;

public class Details_DAL {
	Connection conn;
	PreparedStatement prp;
	MysqlDataSource ds;
	String qry1 ="insert into products(items) values(?)";
	String qry2 ="insert into address values(?,?)";
	String qry3 = "update products set items=? where id=?";
	String qry4 = "delete from products where id=?";
	public Details_DAL() {
		super();
		ds= new MysqlDataSource();
		ds.setUser("root");
		ds.setPassword("root");
		ds.setDatabaseName("miniapp");
		ds.setServerName("localhost");
		ds.setPortNumber(3306);
		try {
			conn =ds.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// TODO Auto-generated constructor stub
		
	}
	public int addData(add_details bean) {//method used to insert data
		int temp=0;
		try {
			prp = conn.prepareStatement(qry1);
			prp.setString(1, bean.getItem());
			temp=prp.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
	}
	public int addCP(Add_city_pin bean) {
		int temp=0;
		try {
			prp = conn.prepareStatement(qry2);
			prp.setString(1, bean.getCity());
			prp.setString(2, bean.getPin());
			temp=prp.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
	}
	public int addedit(edit_details bean,String id) {
		int temp=0;
		try {
			prp = conn.prepareStatement(qry3);
			prp.setString(1, bean.getItem());
			prp.setString(2, id);
			temp=prp.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
	}
	public int delpro(String id) {
		int temp=0;
		try {
			prp = conn.prepareStatement(qry4);
			prp.setString(1, id);
			temp=prp.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
		
	}
	//similarly other methods to perform CURD operations(update/delete/retrieve should constructed)
}