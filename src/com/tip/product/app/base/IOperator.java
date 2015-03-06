package com.tip.product.app.base;

import com.ibatis.sqlmap.client.SqlMapClient;

public interface IOperator {
	
	public void saveRequstContent(SqlMapClient paramSqlMapClient,int paramInt);
}
