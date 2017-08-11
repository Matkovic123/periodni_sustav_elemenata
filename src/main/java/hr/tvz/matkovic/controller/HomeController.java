package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;

/**
 * Created by Matkovic on 07/07/2017.
 */
@Controller
public class HomeController {

    // --- VIEW NAMES ---------------------------------------------------------
    public static final String PERIODIC_TABLE_REDIRECT = "redirect:/periodic_table";

    @RequestMapping("/")
    public String home(){
        return PERIODIC_TABLE_REDIRECT;
    }

    @RequestMapping("/login")
    public String login(){
        return"login";
    }


}
