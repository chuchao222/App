package com.tip.product.app.get_doctor;

public class ResponseItem {
	
	private int id;  
	private String doctorCode;   //医生编码
	private String doctorName;   //医生姓名
	private String doctorMajor;  //医生专业
	private String doctorAge;    //医生年龄
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDoctorCode() {
		return doctorCode;
	}
	public void setDoctorCode(String doctorCode) {
		this.doctorCode = doctorCode;
	}
	public String getDoctorName() {
		return doctorName;
	}
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}
	public String getDoctorMajor() {
		return doctorMajor;
	}
	public void setDoctorMajor(String doctorMajor) {
		this.doctorMajor = doctorMajor;
	}
	public String getDoctorAge() {
		return doctorAge;
	}
	public void setDoctorAge(String doctorAge) {
		this.doctorAge = doctorAge;
	}
	
	
	
}
