package com.ko.kodemo.test;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

import com.ko.FeedMessage;
import com.ko.KODemoController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring-servlet.xml")
public class DemoTest {
	@Test
	public void accessorTest() {
		FeedMessage fm = new FeedMessage();
		fm.setTitle("title");
		assertEquals("Asserting FeedMessage.setTitle()", "title", fm.getTitle());
	}
	@Test
	public void landingTest() {
		KODemoController koDemoC = new KODemoController();
		assertEquals("Asserting landing", "landing", koDemoC.display());
	}
	@Test
	public void dataTest() {
		KODemoController koDemoC = new KODemoController();
		Model m = new ExtendedModelMap();
		assertEquals("Asserting data", "data", koDemoC.rss(m));
	}
}
