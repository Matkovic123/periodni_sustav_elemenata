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
import org.springframework.web.bind.support.SessionStatus;

import java.util.*;

import static hr.tvz.matkovic.controller.HomeController.PERIODIC_SYSTEM_REDIRECT;

@Controller
@RequestMapping("/quiz")
@SessionAttributes(names ={"sessionQuestionsAndAnswers", "userAnswer"})
public class QuizController {
    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String QUESTION = "question";
    private static final String QUESTIONS = "questions";
    private static final String ANSWERS = "answers";
    private static final String NEXT_QUESTION_NR = "nextQuestionNr";
    private static final String LAST_QUESTION = "lastQuestion";
    private static final String USER_ANSWER = "userAnswer";
    private static final String USER_ANSWERS = "userAnswers";
    private static final String TOTAL_NR_OF_QUESTIONS = "totalNrOfQuestions";
    private static final String CORRECT_ANSWERS = "correctAnswers";

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
        List<Answer> answers = question.getAnswers();
        Collections.shuffle(answers);

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
                              Model model,
                              SessionStatus status) {
        List<Question> questions = questionService.findAllByDifficulty(difficulty);

        sessionQuestionsAndAnswers.put(questions.get(questionNr-1).getId(),userAnswer.getAnswerId());

        //Last question answered
        if(questionNr.equals(questions.size())){
            List<Answer> userAnswers = new ArrayList<>();
            Integer rightAnswers = 0;
            for(Map.Entry<Long,Long> entry : sessionQuestionsAndAnswers.entrySet())
            {

                Answer answer = answerService.findOne(entry.getValue());
                userAnswers.add(answer);
                if (answer.getCorrect())
                    rightAnswers++;
            }

            model.addAttribute(USER_ANSWERS,userAnswers);
            model.addAttribute(QUESTIONS, questions);
            model.addAttribute(TOTAL_NR_OF_QUESTIONS, questions.size());
            model.addAttribute(CORRECT_ANSWERS,rightAnswers);
            status.setComplete();
            return "quiz_results";
        }




        Boolean lastQuestion = false;
        if(questionNr.equals(questions.size()))
        {
            lastQuestion=true;
        }

        Question question = questions.get(questionNr - 1);
        List<Answer> answers = question.getAnswers();

        model.addAttribute(USER_ANSWER, userAnswer);
        model.addAttribute(QUESTION, question);
        model.addAttribute(ANSWERS, answers);
        model.addAttribute(NEXT_QUESTION_NR, ++questionNr);
        model.addAttribute(LAST_QUESTION, lastQuestion);

        return "redirect:/quiz/"+difficulty+"/"+questionNr;
    }

    @RequestMapping("/cleanSession")
    public String cleanSession(SessionStatus status){
        status.setComplete();
        return PERIODIC_SYSTEM_REDIRECT;
    }
}