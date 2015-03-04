package com.tip.product.app.webservice;

import com.tip.product.app.get_friend_list.Operator;
import com.tip.product.app.get_friend_list.Request;
import com.tip.product.app.get_friend_list.Response;

public class SI_TIP_APP_GetFriendList {

	public Response OP_GetFriendList(Request request){
		return new Operator().process(request);
	}
}
