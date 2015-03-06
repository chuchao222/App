package com.tip.product.app.get_friend_list;

import javax.xml.namespace.QName;

import org.apache.axis2.AxisFault;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.rpc.client.RPCServiceClient;

 

public class TestWS {
	

	public static void main(String[] args) throws AxisFault {
		
		RPCServiceClient serviceClient=new RPCServiceClient();
		Options options=serviceClient.getOptions();
		
		EndpointReference targetEpr=new EndpointReference("http://localhost:8080/appServer/services/SI_TIP_APP_GetFriendList");
		options.setTo(targetEpr);
		
		Object[] opAddEntryArgs=new Object[]{"1"};
		
		Class[] classes=new Class[]{String.class};
		QName opAddEntry=new  QName("http://webservice.app.product.tip.com","OP_GetFriendList");
		
		//System.out.println(serviceClient.invokeBlocking(opAddEntry, opAddEntryArgs));
		System.out.println(serviceClient.getOptions().toString());
		System.out.println(serviceClient.invokeBlocking(opAddEntry, opAddEntryArgs,classes)[0]);
	}

}
