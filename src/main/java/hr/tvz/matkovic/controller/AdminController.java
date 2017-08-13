package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.security.RolesAllowed;

/**
 * Created by tmatkovic on 13.8.2017..
 */

@Controller
@RequestMapping("/admin")
public class AdminController {

    // --- VIEWS  -------------------------------------------------------------
    private static final String ADD_QUIZ_VIEW = "add_quiz";

    @RolesAllowed("ROLE_ADMIN")
    @GetMapping(value={"/addQuiz", ""})
    public String adminQuizPanel(){

        return ADD_QUIZ_VIEW;
    }


}
