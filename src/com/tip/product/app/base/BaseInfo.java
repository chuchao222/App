package com.tip.product.app.base;

import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;

public class BaseInfo extends AElement{
	
	private String userId;
	private String requestTime;
	private String donmain;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	 
	public String getRequestTime() {
		return requestTime;
	}
	public void setRequestTime(String requestTime) {
		this.requestTime = requestTime;
	}
	public String getDonmain() {
		return donmain;
	}
	public void setDonmain(String donmain) {
		this.donmain = donmain;
	}

	/**
	 * 构造返回信息
	 * @return
	 */
	public BaseInfo buildResponse(){
		BaseInfo baseInfo=new BaseInfo();
		baseInfo.setDonmain(this.donmain);
		baseInfo.setUserId(this.userId);
		baseInfo.setRequestTime(new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar.getInstance().getTime()));
		return baseInfo;
	}
	

	@Override
	public HashMap<String, Object> buildMap() {
		HashMap<String,Object> hashMap=new HashMap<String, Object>();
		 try {
				Field[] fields=this.getClass().getDeclaredFields();
				for(Field field:fields){
					hashMap.put(field.getName(), field.get(this));
				}
			} catch (IllegalArgumentException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
		 
		return hashMap;
	}
	
	@Override
	public String checkSelf() {
		StringBuffer buf=new StringBuffer(64);
		if(super.isNullOrEmpty(this.userId)){
			buf.append("基本信息userid不能为空;");
		}
		if(super.isNullOrNaN(this.requestTime)){
			buf.append("基本信息requestTime为空或非法;");
		}
		if(super.isNullOrEmpty(this.donmain)){
			buf.append("基本信息donmain为空;");
		}
		return buf.toString();
	}
	
	
}
