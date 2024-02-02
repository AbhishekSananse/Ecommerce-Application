package com.dal.vendor;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.vendor.VendorData;
import com.mysql.cj.jdbc.MysqlDataSource;

public class Vendor_DAL {
	Connection conn;
	PreparedStatement prp;
	MysqlDataSource ds;
	String qry1 ="insert into vendor(name,mobilenum,pwd,item,itemprice,city,pincode) values(?,?,?,?,?,?,?)";
	public Vendor_DAL() {
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
	public int addvdData(VendorData bean) {//method used to insert data
		int temp=0;
		try {
			prp = conn.prepareStatement(qry1);
			prp.setString(1, bean.getVendorname());
			prp.setString(2, bean.getVendormbno());
			prp.setString(3, bean.getVenderpwd());
			prp.setString(4, bean.getItem());
			prp.setString(5, bean.getItemprice());
			prp.setString(6, bean.getCity());
			prp.setString(7, bean.getPincode());
			temp=prp.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return temp;
	}
}
