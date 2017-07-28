package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Matkovic on 28/07/2017.
 */
@Controller
@RequestMapping("periodic_table")
public class PeriodicTableController {

    @GetMapping
    public String showPeriodicTable(){
        return "periodic_system";
    }
}
