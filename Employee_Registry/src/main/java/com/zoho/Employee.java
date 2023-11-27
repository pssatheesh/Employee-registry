package com.zoho;
public class Employee {
	int eid;
	int erid;
	String ename;
	String emobile;
	String ecompany;
	String eIndate;
	String eIntime;
	String eOutdate;
	String eOuttime;
	
	public Employee(int eid, int erid, String ename, String emobile, String ecompany, String eIndate, String eIntime,
			String eOutdate, String eOuttime) {
		super();
		this.eid = eid;
		this.erid = erid;
		this.ename = ename;
		this.emobile = emobile;
		this.ecompany = ecompany;
		this.eIndate = eIndate;
		this.eIntime = eIntime;
		this.eOutdate = eOutdate;
		this.eOuttime = eOuttime;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public int getErid() {
		return erid;
	}
	public void setErid(int erid) {
		this.erid = erid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmobile() {
		return emobile;
	}
	public void setEmobile(String emobile) {
		this.emobile = emobile;
	}
	public String getEcompany() {
		return ecompany;
	}
	public void setEcompany(String ecompany) {
		this.ecompany = ecompany;
	}
	public String geteIndate() {
		return eIndate;
	}
	public void seteIndate(String eIndate) {
		this.eIndate = eIndate;
	}
	public String geteIntime() {
		return eIntime;
	}
	public void seteIntime(String eIntime) {
		this.eIntime = eIntime;
	}
	public String geteOutdate() {
		return eOutdate;
	}
	public void seteOutdate(String eOutdate) {
		this.eOutdate = eOutdate;
	}
	public String geteOuttime() {
		return eOuttime;
	}
	public void seteOuttime(String eOuttime) {
		this.eOuttime = eOuttime;
	}
	

}
