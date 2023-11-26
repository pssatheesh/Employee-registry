package com.zoho;

public class Visitor {
	int vid;
	String vname;
	String vreason;
	String vmobile;
	String vaddress;
	String vIndate;
	String vIntime;
	String vOutdate;
	String vOuttime;
	
	public Visitor(int vid, String vname, String vreason, String vmobile, String vaddress, String vIndate,
			String vIntime, String vOutdate, String vOuttime) {
		super();
		this.vid = vid;
		this.vname = vname;
		this.vreason = vreason;
		this.vmobile = vmobile;
		this.vaddress = vaddress;
		this.vIndate = vIndate;
		this.vIntime = vIntime;
		this.vOutdate = vOutdate;
		this.vOuttime = vOuttime;
	}
	public int getVid() {
		return vid;
	}
	public void setVid(int vid) {
		this.vid = vid;
	}
	public String getVname() {
		return vname;
	}
	public void setVname(String vname) {
		this.vname = vname;
	}
	public String getVreason() {
		return vreason;
	}
	public void setVreason(String vreason) {
		this.vreason = vreason;
	}
	public String getVmobile() {
		return vmobile;
	}
	public void setVmobile(String vmobile) {
		this.vmobile = vmobile;
	}
	public String getVaddress() {
		return vaddress;
	}
	public void setVaddress(String vaddress) {
		this.vaddress = vaddress;
	}
	public String getvIndate() {
		return vIndate;
	}
	public void setvIndate(String vIndate) {
		this.vIndate = vIndate;
	}
	public String getvIntime() {
		return vIntime;
	}
	public void setvIntime(String vIntime) {
		this.vIntime = vIntime;
	}
	public String getvOutdate() {
		return vOutdate;
	}
	public void setvOutdate(String vOutdate) {
		this.vOutdate = vOutdate;
	}
	public String getvOuttime() {
		return vOuttime;
	}
	public void setvOuttime(String vOuttime) {
		this.vOuttime = vOuttime;
	}
	

}
