package hr.tvz.matkovic.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/quiz")
public class QuizController {

    @GetMapping({"/", "/start"})
    public String starQuiz() {
        return "quiz_start";
    }


    @GetMapping("/{quizNumber}/{questionNumber}")
    public String quiz(@PathVariable("quizNumber") final Integer quizNumber,
                       @PathVariable("questionNumber") final Integer questionNumber,
                       Model model) {

        return "quiz_question";
    }
}