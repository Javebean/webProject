package com.example.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.actions.UserAction;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/application.xml")
public class ActionTest {
	@Autowired
	private UserAction userAction;
	@Test
	public void testRegister() {
		userAction.register();
	}

}
