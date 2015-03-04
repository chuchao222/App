package com.tip.product.app.base;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;


public abstract class AElement {
	
	
	/**
	 * 信息自检
	 * @return error message
	 */
	public abstract String checkSelf();
	
	/**
	 * 是否为空的字串(去除空白后)
	 * @param s
	 * @return true|false
	 * @see Utility.isNullOrEmpty
	 */
	protected boolean isNullOrEmpty(String s){
		return (s == null || s.trim().length() == 0);
	}
	
	/**
	 * 是否为非数字形式字串
	 * @param n
	 * @return true|false
	 * @see Utility.isNullOrNaN
	 */
	protected boolean isNullOrNaN(String n){
		if(this.isNullOrEmpty(n)){
			return true;
		}else{
			try {
				new BigDecimal(n);
			} catch (NumberFormatException e) {
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 将本身属性及值组成键值对
	 * @return 属性键值对
	 */
	public abstract HashMap<String,Object> buildMap();
	
	/**
	 * 将本身属性及值组成键值对,并追加传入的键值对
	 * @param appendKey 键
	 * @param appendVal 值
	 * @return 整合追加值的键值对
	 */
	public HashMap<String,Object> buildMap(String appendKey,Object appendVal){
		HashMap<String,Object> hashMap = this.buildMap();
		hashMap.put(appendKey, appendVal);
		return hashMap;
	}
	
	/**
	 * 将本身属性及值组成键值对,并追加传入的键值对
	 * @param appendKeyVal 键值对
	 * @return 整合追加值的键值对
	 */
	public HashMap<String,Object> buildMap(Map<String,Object> appendKeyVal){
		HashMap<String,Object> hashMap = this.buildMap();
		hashMap.putAll(appendKeyVal);
		return hashMap;
	}

}
