package nucleus.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.security.Principal;
import java.util.Collection;

@Controller
public class LoginController {

    @GetMapping("/mycustomlogin")
    public String customLogin(){
        return "login";
    }

    @GetMapping(value = "/maker")
    public String showMakerDashboard(){
        return "makerdashboard";
    }

    @GetMapping(value = "/checker")
    public String showCheckerDashboard(){
        return "checkerdashboard";
    }

    @GetMapping("/accessdeny")
    public String error(Principal principal, Authentication auth)  {
      System.out.println(principal.getName());
        Collection<? extends GrantedAuthority> authorities = auth.getAuthorities();
        System.out.println(authorities);
        return "accessdeny";
    }
}
