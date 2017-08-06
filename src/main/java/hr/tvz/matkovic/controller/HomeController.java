package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Matkovic on 07/07/2017.
 */
@Controller
public class HomeController {

    // --- VIEW NAMES ---------------------------------------------------------
    public static final String PERIODIC_SYSTEM_REDIRECT = "redirect:/periodic_table";

    @RequestMapping("/")
    public String home(){
        return PERIODIC_SYSTEM_REDIRECT;
    }
}
