package com.ko;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class KODemoController {
	@RequestMapping("/landing")  
    public String display() {
        return "landing";  
    }

	@RequestMapping("/data")  
    public String rss(Model m) {
		RSSFeedParser parser = new RSSFeedParser("https://nvd.nist.gov/feeds/xml/cve/misc/nvd-rss.xml");
        Feed feed = parser.readFeed();
        m.addAttribute("feedMessages", feed.getMessages());
        return "data";
	}
}
