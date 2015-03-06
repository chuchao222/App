package com.tip.product.app.repository;

import com.tip.product.app.base.BaseInfo;
import com.tip.product.app.base.IOperator;

public interface IBaseInfoDao {
	
	public int save(IOperator paramIOperator,BaseInfo paramBaseInfo);
	
	public boolean updateStatus(int paramInt,String paramString);
	
	public boolean saveException(int paramInt,String paramString);
	
}
