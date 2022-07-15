package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import org.apache.ibatis.session.SqlSession;

import kr.ac.kopo.MyConfig;

public class Test {

	@org.junit.Test
	public void test() {
		MyConfig config = new MyConfig();
		SqlSession session = config.getInstance();
		
		assertNotNull(session);
	}
}
