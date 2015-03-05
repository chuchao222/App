package com.tip.product.app.get_friend_list;


import java.util.HashMap;
import java.util.List;

import com.tip.product.app.base.BaseInfo;
import com.tip.product.app.base.MessageStatus;
import com.tip.product.app.ibatis.SqlClient;



public class Operator {

	private boolean hasError = false;
	private StringBuilder errorBuf = new StringBuilder(256);
	
	public Response process(Request request) {
		//检查请求基本信息并生成返回信息
		Response response = this.check(request);
		//如果有错误直接返回
		if(this.hasError){
			return response;
		}		

		RequestMessage requestMessage = request.getMessage();
		ResponseMessage responseMessage = response.getMessage();

		int baseId = 0;
		try {
			//保存基础信息
		//	baseId = BaseInfoManager.save(this.getClass().getPackage().getName(),request.getBaseInfo());
			//开始业务处理
			HashMap<String,Object> params = new HashMap<String,Object>();
			RequestItem[] requestItems = requestMessage.getItems();	
			
		
			// 数据库 输出接口参数		
			List<ResponseItem> responseItemLists= SqlClient.getInstance().queryForList("get_friend_list");
			
			ResponseItem[] responseItems = new ResponseItem[responseItemLists.size()];
			responseItemLists.toArray(responseItems);
			responseMessage.setItems(responseItems);
		} catch (Exception e) {
			responseMessage.setType(MessageStatus.ERROR);
			e.printStackTrace();
		//	responseMessage.setErrorMsg(e.getMessage());
		//	BaseInfoManager.saveException(baseId, e.getMessage());
		} finally {
			//放置返回信息
			response.setMessage(responseMessage);
			//更新处理状态
		//	BaseInfoManager.updateStatus(request.getBaseInfo(),responseMessage.getType());
		}

		return response;
	}
	
	private Response check(Request request){		
		Response response = new Response();
		ResponseMessage responseMessage = new ResponseMessage();
		responseMessage.setType(MessageStatus.SUCCESS);
		//responseMessage.setErrorMsg("");
		
		//得到基础信息
		BaseInfo requestInfo = request.getBaseInfo();
		//基础信息自检
		this.errorBuf.append(requestInfo.checkSelf());
		
		//得到业务信息
		RequestMessage requestMessage = request.getMessage();
		RequestItem[] requestItems = requestMessage.getItems();
		
		//业务信息项自检
		for(RequestItem requestItem:requestItems){			
			this.errorBuf.append(requestItem.checkSelf());
		}	
		
		//错误信息不为空
		if(this.errorBuf.length()>0){
			this.hasError = true;
			responseMessage.setType(MessageStatus.ERROR);
		//	responseMessage.setErrorMsg(this.errorBuf.toString());
		}
		
		//放置返回信息
		response.setMessage(responseMessage);
		response.setBaseInfo(requestInfo.buildResponse());
		
		return response;
		
	}
}
