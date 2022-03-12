package com.spring.codelog;


import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
    		  
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String home(Locale locale, Model model, String fromT) {    
      System.out.println("겟 formT "+fromT); 
      model.addAttribute("recent", true);
      model.addAttribute("trending", false);
      if(fromT!=null) {
      if(fromT.equals("true")) {
    	  model.addAttribute("fromT", true);
    	  model.addAttribute("fromR", false);

      }
      }
      else {
    	  model.addAttribute("fromT", false);
    	  model.addAttribute("fromR", false);
      }    
      return "home";
   }
   
   @RequestMapping(value = "/", method = RequestMethod.POST)
   public String home2(Locale locale, Model model, String fromT) {
      System.out.println("포스트 formT "+fromT);      
      model.addAttribute("recent", true);
      model.addAttribute("trending", false);
      if(fromT!=null) {
      if(fromT.equals("true")) {
    	  model.addAttribute("fromT", true);
    	  model.addAttribute("fromR", false);
      }
      }
      else {
    	  model.addAttribute("fromT", false);
    	  model.addAttribute("fromR", false);     
      }     
      return "home";
   }
   
   @RequestMapping(value = "/trending", method = RequestMethod.GET)
   public String trending(Locale locale, Model model, String fromR) {
	   
	  System.out.println("겟 formR "+fromR);      
      model.addAttribute("trending", true);
      model.addAttribute("recent", false);
      if(fromR!=null) {
      if(fromR.equals("true")) {
    	  model.addAttribute("fromR", true);
          model.addAttribute("fromT", false);

      }
      }
      else {
    	  model.addAttribute("fromR", false);
          model.addAttribute("fromT", false);    
      }
      return "home";
   }
   
   @RequestMapping(value = "/trending", method = RequestMethod.POST)
   public String trending2(Locale locale, Model model, String fromR) {	   
	  System.out.println("포스트 formR "+fromR);
      model.addAttribute("trending", true);
      model.addAttribute("recent", false);
      if(fromR!=null) {
      if(fromR.equals("true")) {
    	  model.addAttribute("fromR", true);
          model.addAttribute("fromT", false);
      }
      }
      else {
    	  model.addAttribute("fromR", false);
          model.addAttribute("fromT", false);
      }
      return "home";
   }
}
