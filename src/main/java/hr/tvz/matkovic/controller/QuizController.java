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

import java.util.List;

@Controller
@RequestMapping("/quiz")
public class QuizController {
    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String QUESTION = "question";
    private static final String ANSWERS = "answers";
    private static final String NR_OF_QUESTIONS = "nrOfQuestions";
    private static final String NEXT_QUESTION_NR = "nextQuestionNr";
    private static final String LAST_QUESTION = "lastQuestion";


    // --- SERVICES -----------------------------------------------------------
    @Autowired
    private QuestionService questionService;

    @Autowired
    private AnswerService answerService;

    // --- MAPPINGS -----------------------------------------------------------

    @GetMapping({"/", "/start"})
    public String quizSelection() {
        return "quiz_start";
    }


    @RequestMapping("/{difficulty}/{questionNr}")
    public String quizStart(@PathVariable(value = "difficulty") final Integer difficulty,
                            @PathVariable(value = "questionNr") Integer questionNr,
                            Model model) {


        List<Question> questions = questionService.findAllByDifficulty(difficulty);
        Boolean lastQuestion = false;
        if(questionNr.equals(questions.size()))
        {
            lastQuestion=true;
        }

        Question question = questions.get(questionNr - 1);
        List<Answer> answers = answerService.findAllByQuestion(question);

        model.addAttribute(QUESTION, question);
        model.addAttribute(ANSWERS, answers);
        model.addAttribute(NEXT_QUESTION_NR, ++questionNr);
        model.addAttribute(LAST_QUESTION, lastQuestion);


        return "quiz_question";
    }

    @PostMapping("/results")
    public String checkAnswer(@PathVariable(value = "difficulty") final Integer difficulty,
                              @PathVariable(value = "questionNr") final Integer questionNr,
                              Model model) {


        return "redirect:/";
    }
}