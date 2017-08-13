package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Matkovic on 07/07/2017.
 */
@Controller
public class HomeController {

    // --- VIEW NAMES ---------------------------------------------------------
    public static final String PERIODIC_TABLE_REDIRECT = "redirect:/periodic_table";
    private static final String LOGIN_VIEW = "login";

    @RequestMapping("/")
    public String home() {
        return PERIODIC_TABLE_REDIRECT;
    }

    @RequestMapping("/login")
    public String login() {
        return LOGIN_VIEW;
    }


}
