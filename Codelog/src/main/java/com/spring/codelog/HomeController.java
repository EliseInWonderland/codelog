package com.spring.codelog;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
      logger.info("Welcome home! The client locale is {}.", locale);
      
      Date date = new Date();
      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
      
      String formattedDate = dateFormat.format(date);
      
      model.addAttribute("serverTime", formattedDate );
      
      return "home";
   }
   
   @RequestMapping(value = "/main", method = RequestMethod.GET)
   public String home2(Locale locale, Model model) {
      
      return "main";
   }
   @RequestMapping(value = "/write", method = RequestMethod.GET)
   public String home3(Locale locale, Model model) {
      
      
      return "/board/write";
   }
   @RequestMapping(value = "/board", method = RequestMethod.GET)
   public String home4(Locale locale, Model model) {
      
      
      return "/board/board";
   }
   @RequestMapping(value = "/mypage", method = RequestMethod.GET)
   public String home5(Locale locale, Model model) {
   
      
      return "user/mypage";
   }
   
   @RequestMapping(value = "/editProfile", method = RequestMethod.GET)
   public String home6(Locale locale, Model model) {
   
      
      return "user/editProfile";
   }
}
