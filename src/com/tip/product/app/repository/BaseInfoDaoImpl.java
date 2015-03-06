package com.tip.product.app.repository;

import java.util.HashMap;

import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.tip.product.app.base.BaseInfo;
import com.tip.product.app.base.IOperator;

public class BaseInfoDaoImpl extends SqlMapClientDaoSupport  implements IBaseInfoDao {

	public  BaseInfoDaoImpl(SqlMapClient sqlMapClient) {
		setSqlMapClient(sqlMapClient);
	}
	
	@Override
	public int save(IOperator paramIOperator, BaseInfo paramBaseInfo) {
		HashMap params=new HashMap();
		params.put("params", params);
		
		return 0;
	}

	@Override
	public boolean updateStatus(int paramInt, String paramString) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean saveException(int paramInt, String paramString) {
		// TODO Auto-generated method stub
		return false;
	}

}
