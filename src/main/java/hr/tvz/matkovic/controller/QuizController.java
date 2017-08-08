package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.service.AnswerService;
import hr.tvz.matkovic.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/quiz")
public class QuizController {
    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String QUESTION = "question";
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


    @GetMapping("/{difficulty}/{questionNumber}")
    public String quiz(@PathVariable("difficulty") final Integer difficulty,
                       @PathVariable("questionNumber") Integer questionNumber,
                       Model model) {
            List<Question> questions = questionService.findAllByDifficulty(difficulty);
            Question question = questions.get(--questionNumber);
            List<Answer> answers = answerService.findAllByQuestion(question);
            Collections.shuffle(answers);

            model.addAttribute(QUESTION, question);
            model.addAttribute(ANSWERS, answers);



        return "quiz_question";
    }
     @PostMapping("/{difficulty}/{questionNumber}")
    public String checkAnswer(){

         return "quiz_question";
     }
}