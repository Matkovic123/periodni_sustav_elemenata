package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.service.AnswerService;
import hr.tvz.matkovic.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/results")
    public String checkAnswer(@RequestParam(value = "answerIdArray[]", required = false) Long[] answerIdArray ,
                              Model model) {
        System.out.println("Numbers: " + answerIdArray);

        return "redirect:/";
    }
}