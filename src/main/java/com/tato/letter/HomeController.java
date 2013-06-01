package com.tato.letter;

import java.io.ByteArrayOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}
	@RequestMapping(value = "home", method = RequestMethod.GET)
    public String home2(Locale locale, Model model) {
        
        return "home";
    }
	@RequestMapping(value = "gallery", method = RequestMethod.GET)
    public String gallery(Locale locale, Model model) {
        
        return "gallery";
    }
	@RequestMapping(value = "boot", method = RequestMethod.GET)
    public String boot(Locale locale, Model model) {
        
        return "boot";
    }
	@RequestMapping(value = "location", method = RequestMethod.GET)
    public String enmy(Locale locale, Model model) {
        
        return "location";
    }
	@RequestMapping(value = "test", method = RequestMethod.GET)
    public String test(Locale locale, Model model) {
        return "test";
    }  
	@RequestMapping(value = "test2", method = RequestMethod.GET)
    public String test2(Locale locale, Model model) {
        return "test2";
    }
	@RequestMapping(value = "test3", method = RequestMethod.GET)
    public String test3(Locale locale, Model model) {
        return "test3";
    }  
}
