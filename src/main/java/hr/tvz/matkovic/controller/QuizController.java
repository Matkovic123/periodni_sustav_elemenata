package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.model.UserAnswer;
import hr.tvz.matkovic.service.AnswerService;
import hr.tvz.matkovic.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/quiz")
@SessionAttributes(names ={"sessionQuestionsAndAnswers", "userAnswer"})
public class QuizController {
    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String QUESTION = "question";
    private static final String ANSWERS = "answers";
    private static final String NEXT_QUESTION_NR = "nextQuestionNr";
    private static final String LAST_QUESTION = "lastQuestion";
    private static final String USER_ANSWER = "userAnswer";


    @ModelAttribute("sessionQuestionsAndAnswers")
    public Map<Long, Long> getSessionQuestionsAndAnswers() {
        return new HashMap<>();
    }

    @ModelAttribute("userAnswer")
    public UserAnswer getUserAnswer(){
        return new UserAnswer();
    }


    // --- SERVICES -----------------------------------------------------------
    @Autowired
    private QuestionService questionService;

    @Autowired
    private AnswerService answerService;

    // --- MAPPINGS -----------------------------------------------------------

    @GetMapping({"/", "/start"})
    public String quizSelection(Model model) {

        UserAnswer userAnswer = new UserAnswer();
        model.addAttribute(USER_ANSWER, userAnswer);

        return "quiz_start";
    }


    @GetMapping("/{difficulty}/{questionNr}")
    public String quizQuestions(@PathVariable(value = "difficulty") final Integer difficulty,
                                @PathVariable(value = "questionNr") Integer questionNr,
                                Model model) {
        List<Question> questions = questionService.findAllByDifficulty(difficulty);
        Question question = questions.get(questionNr - 1);
        List<Answer> answers = answerService.findAllByQuestion(question);

        Boolean lastQuestion = false;
        if(questionNr.equals(questions.size()))
        {
            lastQuestion=true;
        }

        model.addAttribute(QUESTION, question);
        model.addAttribute(ANSWERS, answers);
        model.addAttribute(LAST_QUESTION, lastQuestion);


        return "quiz_question";
    }

    @PostMapping("/{difficulty}/{questionNr}")
    public String checkAnswer(@PathVariable(value = "difficulty") final Integer difficulty,
                              @PathVariable(value = "questionNr") Integer questionNr,
                              @SessionAttribute Map<Long,Long> sessionQuestionsAndAnswers,
                              @ModelAttribute UserAnswer userAnswer,
                              Model model) {
        List<Question> questions = questionService.findAllByDifficulty(difficulty);

        if(userAnswer.getAnswerId() ==null || userAnswer.getAnswerId().equals(0L)) {
            sessionQuestionsAndAnswers.put(questions.get(questionNr - 1).getId(), -1L);
        }

        else{
            sessionQuestionsAndAnswers.put(questions.get(questionNr-1).getId(),userAnswer.getAnswerId());
        }
        userAnswer=new UserAnswer();


        Boolean lastQuestion = false;
        if(questionNr.equals(questions.size()))
        {
            lastQuestion=true;
        }

        Question question = questions.get(questionNr - 1);
        List<Answer> answers = answerService.findAllByQuestion(question);
        model.addAttribute(USER_ANSWER, userAnswer);
        model.addAttribute(QUESTION, question);
        model.addAttribute(ANSWERS, answers);
        model.addAttribute(NEXT_QUESTION_NR, ++questionNr);
        model.addAttribute(LAST_QUESTION, lastQuestion);


        return "redirect:/quiz/"+difficulty+"/"+questionNr;
    }
}