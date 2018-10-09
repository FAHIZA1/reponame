package com.spring.Controller;



import java.security.Principal;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class controller {

   @GetMapping("/")
   public String index() {
      return "index";
   }
   
   @GetMapping("/1stuserand2nduser")
   public String user1anduser2(Principal principal) {
      // Get authenticated user name from Principal
      System.out.println(principal.getName());
      return "1stuserand2nduser";
   }
   @GetMapping("/2nduserand3rduser")
   public String user2anduser3(Principal principal) {
      // Get authenticated user name from Principal
      System.out.println(principal.getName());
      return "2nduserand3rduser";
   }
   
}
