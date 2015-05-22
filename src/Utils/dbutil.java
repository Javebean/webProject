package Utils;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;
/*用的是C3P0连接池,用c3p0-0.9.5-pre8,mchange-commons-java-0.2.7两个jar包
 * c3p0-config.xml 配置信息放在src下面
 * */
public class dbutil {
	private static ComboPooledDataSource cp;
	static {
		try {
			cp = new ComboPooledDataSource("flx");
		} catch (Exception e) {
			throw new ExceptionInInitializerError(e);
		}
	}

	public static DataSource getDateSource() {
		return cp;//获得连接池
	}

	public static Connection getConnection() throws SQLException {
		return cp.getConnection();
	}

}
/*
 	private String id;
	private String name;
	private String processor;
	private String net;
	private String size;
	private String rom;
	private String camera;
	private String simcart;
 ----------------
 create database production;
 use production;
 create table product
 (
 	id varchar(100) primary key,
 	name varchar(30),
 	processor varchar(30),
 	net varchar(30),
 	size varchar(30),
 	rom varchar(30),
 	camera varchar(30),
 	simcart varchar(30),
 	price double not null
 );
  
 */
