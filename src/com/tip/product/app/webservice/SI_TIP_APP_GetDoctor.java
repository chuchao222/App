package com.tip.product.app.webservice;

import com.tip.product.app.get_doctor.Operator;
import com.tip.product.app.get_doctor.Request;
import com.tip.product.app.get_doctor.Response;

public class SI_TIP_APP_GetDoctor {
	
	 public Response OP_Get_Doctor(Request request){
		return new Operator().process(request);
	 }
	 
	 public Response OP_Update_Doctor(Request request){
		 return new Operator().GetDoctorByID(request);
	 }
	 
}
