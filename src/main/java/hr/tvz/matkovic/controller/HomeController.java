package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Matkovic on 07/07/2017.
 */
@Controller
public class HomeController {

    @GetMapping("/")
    public String home(){
        return "index";
    }
}
