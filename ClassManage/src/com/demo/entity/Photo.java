package com.demo.entity;

import java.io.Serializable;

public class Photo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2725197033100300757L;
	public Integer pid;
	public String Pname;
	public String remarks;
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	

}
