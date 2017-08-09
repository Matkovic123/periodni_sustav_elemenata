package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.service.AnswerService;
import hr.tvz.matkovic.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/quiz")
public class QuizController {
    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String QUESTIONS = "questions";
    private static final String ANSWERS = "answers";

    // --- SERVICES -----------------------------------------------------------
    @Autowired
    private QuestionService questionService;

    @Autowired
    private AnswerService answerService;

    // --- MAPPINGS -----------------------------------------------------------

    @GetMapping({"/", "/start"})
    public String starQuiz() {
        return "quiz_start";
    }


    @GetMapping("/{difficulty}")
    public String quiz(@PathVariable(value = "difficulty") final Integer difficulty,
                       Model model) {
        List<Question> questions = questionService.findAllByDifficulty(difficulty);
        List<Answer> answers = answerService.findAll();
        Collections.shuffle(answers);

        model.addAttribute(QUESTIONS, questions);
        model.addAttribute(ANSWERS, answers);
        return "quiz_question";
    }

    @PostMapping(value = "/{difficulty}", consumes = MediaType.APPLICATION_JSON_VALUE)
    public  String checkAnswer(@RequestBody List<Long> answerIdArray,
                              @PathVariable(value = "difficulty") final Integer difficulty,
                              Model model) {


        return "redirect:/";
    }
}