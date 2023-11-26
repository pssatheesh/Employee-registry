package com.zoho;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Stack;

import com.zoho.Visitor;

public class DatabaseCode {
	String url="jdbc:mysql://localhost:3306/zoho";
	String user="root";
	String pass="";
	//Connection Establishment
	public Connection con;
	public DatabaseCode() {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(url,user,pass);
			}catch(SQLException|ClassNotFoundException e) {
				System.out.println(e);
			}
	}
	//Login code
	public boolean adlog(String user, String pass) {
		boolean res=false;
		try {
			String q="select * from adminlog where username=? and password=?";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1, user);
			pst.setString(2, pass);
			ResultSet rs=pst.executeQuery();
			if(rs.next()) {
				res=true;
			}

		}catch(Exception e) { e.printStackTrace(); }
		return res;
	}
	//Visitor Insertion code
	public int VisitorInsert(int vid, String vname, String vreason, String vmobile, String vaddress, String vIndate, String vIntime) {
		int n=0;
		try {
			String q="insert into visitordetails(vid,vname,vreason,vmobile,vaddress,vIndate,vIntime) values(?,?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setInt(1, vid);
			pst.setString(2, vname);
			pst.setString(3, vreason);
			pst.setString(4, vmobile);
			pst.setString(5, vaddress);
			pst.setString(6, vIndate);
			pst.setString(7, vIntime);
			
			n=pst.executeUpdate();		
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return n;
}
	//Visitor view
	public Stack<Visitor> select() {
		Stack<Visitor> st=new Stack<Visitor>();
			try {
				String q="select *from visitordetails";
				PreparedStatement pst=con.prepareStatement(q);
				ResultSet rs=pst.executeQuery();
				
				while(rs.next()) {
					int vid=rs.getInt("vid");
					String vname=rs.getString("vname");
					String vreason=rs.getString("vreason");
					String vmobile=rs.getString("vmobile");
					String vaddress=rs.getString("vaddress");
					String vIndate=rs.getString("vIndate");
					String vIntime=rs.getString("vIntime");
					String vOutdate=rs.getString("vOutdate");
					String vOuttime=rs.getString("vOuttime");
					
					Visitor vistor=new Visitor(vid, vname, vreason, vmobile, vaddress,vIndate,vIntime,vOutdate,vOuttime);
					st.add(vistor);
				}			
			}catch(SQLException e) {
				System.out.println(e);
			}
			return st;
	}
	//Deletion
	public int delete(int vid) {
			int n=0;
			try {
				String q="delete from visitordetails where vid=?";
				PreparedStatement pst=con.prepareStatement(q);
				pst.setInt(1, vid);	
				n=pst.executeUpdate();		
			}catch(SQLException e) {
				System.out.println(e);
			}
			return n;
	}
	//update
	public int VisitorUpdate(int vid, String vOutdate, String vOuttime) {
		int n=0;
		try {
			String q="update visitordetails set vOutdate=?, vOuttime=? where vid=?";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setString(1, vOutdate);
			pst.setString(2, vOuttime);
			pst.setInt(3, vid);
			n=pst.executeUpdate();		
		}catch(SQLException e) {
			System.out.println(e);
		}
		return n;
}

}
