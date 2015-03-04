package com.tip.product.app.get_friend_list;

public class ResponseMessage {
	
	private String type;  // ×´Ì¬  S£º ³É¹¦  E£º Ê§°Ü
	
	private String errMsg;
	
	private ResponseItem[] items;

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public ResponseItem[] getItems() {
		return items;
	}

	public void setItems(ResponseItem[] items) {
		this.items = items;
	}
	
	

}
