package com.zoho;

public class ExistingEmployee {
	int eid;
	String eIndate;
	String eIntime;
	String eOutdate;
	String eOuttime;
	public ExistingEmployee(int eid, String eIndate, String eIntime, String eOutdate, String eOuttime) {
		super();
		this.eid = eid;
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
