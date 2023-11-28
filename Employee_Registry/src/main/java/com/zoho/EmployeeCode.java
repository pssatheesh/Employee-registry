package com.zoho;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Stack;




public class EmployeeCode {
	String url="jdbc:mysql://localhost:3306/zoho";
	String user="root";
	String pass="";
	
	//Connection Establishment
	public Connection con;
	public EmployeeCode() {
		
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
	//Employee Insert
	public int EmployeeInsert(int eid, String ename, String emobile, String ecompany, String eIndate, String eIntime) {
		int n=0;
		try {
			String q="insert into employeedetails(eid,ename,emobile,ecompany,eIndate,eIntime) values(?,?,?,?,?,?)";
			PreparedStatement pst=con.prepareStatement(q);
			pst.setInt(1, eid);
			pst.setString(2, ename);
			pst.setString(3, emobile);
			pst.setString(4, ecompany);
			pst.setString(5, eIndate);
			pst.setString(6, eIntime);
			
			n=pst.executeUpdate();		
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return n;
	}
	//Employee view
		public Stack<Employee> select() {
			Stack<Employee> st=new Stack<Employee>();
				try {
					String q="select *from employeedetails";
					PreparedStatement pst=con.prepareStatement(q);
					ResultSet rs=pst.executeQuery();
					
					while(rs.next()) {
						int erid=rs.getInt("erid");
						int eid=rs.getInt("eid");
						String ename=rs.getString("ename");
						String emobile=rs.getString("emobile");
						String ecompany=rs.getString("ecompany");
						
						String eIndate=rs.getString("eIndate");
						String eIntime=rs.getString("eIntime");
						String eOutdate=rs.getString("eOutdate");
						String eOuttime=rs.getString("eOuttime");
						
						Employee employee=new Employee(erid, eid, ename, emobile, ecompany,eIndate,eIntime,eOutdate,eOuttime);
						st.add(employee);
					}			
				}catch(SQLException e) {
					System.out.println(e);
				}
				return st;
		}
	
		//Deletion
		public int delete(int eid) {
				int n=0;
				try {
					String q="delete from employeedetails where eid=?";
					PreparedStatement pst=con.prepareStatement(q);
					pst.setInt(1, eid);	
					n=pst.executeUpdate();		
				}catch(SQLException e) {
					System.out.println(e);
				}
				return n;
		}
		//update
		public int EmployeeUpdate(int eid, String eOutdate, String eOuttime) {
			int n=0;
			try {
				String q="update employeedetails set eOutdate=?, eOuttime=? where eid=?";
				PreparedStatement pst=con.prepareStatement(q);
				pst.setString(1, eOutdate);
				pst.setString(2, eOuttime);
				pst.setInt(3, eid);
				n=pst.executeUpdate();		
			}catch(SQLException e) {
				System.out.println(e);
			}
			return n;
	}
		//**************************************************************************************************************************
		//Employee Insert
		public int ExistingEmployeeInsert(int eid, String eIndate, String eIntime) {
			int n=0;
			try {
				String q="insert into dailyregister(eid,eIndate,eIntime) values(?,?,?)";
				PreparedStatement pst=con.prepareStatement(q);
				pst.setInt(1, eid);
				pst.setString(2, eIndate);
				pst.setString(3, eIntime);
				
				n=pst.executeUpdate();		
			}catch(SQLException e) {
				e.printStackTrace();
			}
			return n;
		}
		//update
				public int EEmployeeUpdate(int eid, String eOutdate, String eOuttime) {
					int n=0;
					try {
						String q="update dailyregister set eOutdate=?, eOuttime=? where eid=?";
						PreparedStatement pst=con.prepareStatement(q);
						pst.setString(1, eOutdate);
						pst.setString(2, eOuttime);
						pst.setInt(3, eid);
						n=pst.executeUpdate();		
					}catch(SQLException e) {
						System.out.println(e);
					}
					return n;
			}
				
				//Employee view
				public Stack<ExistingEmployee> EEselect() {
					Stack<ExistingEmployee> st=new Stack<ExistingEmployee>();
						try {
							String q="select *from dailyregister";
							PreparedStatement pst=con.prepareStatement(q);
							ResultSet rs=pst.executeQuery();
							
							while(rs.next()) {
								int eid=rs.getInt("eid");
								String eIndate=rs.getString("eIndate");
								String eIntime=rs.getString("eIntime");
								String eOutdate=rs.getString("eOutdate");
								String eOuttime=rs.getString("eOuttime");
								
								ExistingEmployee employee=new ExistingEmployee(eid, eIndate, eIntime, eOutdate, eOuttime);
								st.add(employee);
							}			
						}catch(SQLException e) {
							System.out.println(e);
						}
						return st;
				}
			
				//Specific id
				public Stack<ExistingEmployee> FetchingEmployee(int id) {
					Stack<ExistingEmployee> st=new Stack<ExistingEmployee>();
						try {
							String q="select *from dailyregister where eid=?";
							PreparedStatement pst=con.prepareStatement(q);
							pst.setInt(1, id);	
							ResultSet rs=pst.executeQuery();
							
							while(rs.next()) {
								int eid=rs.getInt("eid");
								String eIndate=rs.getString("eIndate");
								String eIntime=rs.getString("eIntime");
								String eOutdate=rs.getString("eOutdate");
								String eOuttime=rs.getString("eOuttime") ;
								ExistingEmployee emp=new ExistingEmployee(eid, eIndate, eIntime, eOutdate, eOuttime);
								st.add(emp);
							}			
						}catch(SQLException e) {
							System.out.println(e);
						}
						return st;
				}
				

}
