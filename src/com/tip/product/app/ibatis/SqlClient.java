package com.tip.product.app.ibatis;

import java.io.IOException;
import java.io.Reader;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;

public class SqlClient {
	
	private static SqlMapClient sqlClient;
	
	
	
	public static SqlMapClient getInstance() throws IOException{
		if(sqlClient ==null){
			Reader reader=Resources.getResourceAsReader("com/tip/product/app/ibatis/SqlMapConfig-oracle.xml");
			sqlClient=SqlMapClientBuilder.buildSqlMapClient(reader);
			
		}
		
		return sqlClient;
		
	}
	
	
	
}
