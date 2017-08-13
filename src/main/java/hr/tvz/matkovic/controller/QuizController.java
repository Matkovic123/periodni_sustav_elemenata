package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.model.Quiz;
import hr.tvz.matkovic.model.UserAnswer;
import hr.tvz.matkovic.service.AnswerService;
import hr.tvz.matkovic.service.QuestionService;
import hr.tvz.matkovic.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import java.util.*;

import static hr.tvz.matkovic.controller.HomeController.PERIODIC_TABLE_REDIRECT;

@Controller
@RequestMapping("/quiz")
@SessionAttributes(names = {"sessionQuestionsAndAnswers", "userAnswer"})
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
    private static final String QUIZES = "quizes";

    // --- VIEWS  -------------------------------------------------------------
    private static final String QUIZ_START_VIEW = "quiz_start";
    private static final String QUIZ_QUESTION_VIEW = "quiz_question";
    private static final String QUIZ_RESULTS_VIEW = "quiz_results";
    private static final String PERIODIC_TABLE_VIEW = "periodic_table";


    @ModelAttribute("sessionQuestionsAndAnswers")
    public Map<Long, Long> getSessionQuestionsAndAnswers() {
        return new TreeMap<>();
    }

    @ModelAttribute("userAnswer")
    public UserAnswer getUserAnswer() {
        return new UserAnswer();
    }


    // --- SERVICES -----------------------------------------------------------

    @Autowired
    private QuizService quizService;

    @Autowired
    private QuestionService questionService;

    @Autowired
    private AnswerService answerService;

    // --- MAPPINGS -----------------------------------------------------------
    @GetMapping({"/", "/start"})
    public String quizSelection(Model model) {

        model.addAttribute(QUIZES, quizService.findAllOrderByDifficulty());

        return QUIZ_START_VIEW;
    }


    @GetMapping("/{quizId}/{questionNr}")
    public String quizQuestions(@PathVariable(value = "quizId") final Long quizId,
                                @PathVariable(value = "questionNr") Integer questionNr,
                                @SessionAttribute Map<Long,Long> sessionQuestionsAndAnswers,
                                Model model) {
        Quiz quiz = quizService.findOne(quizId);
        List<Question> questions = questionService.findAllByQuiz(quiz);
        Question question = questions.get(questionNr - 1);
        List<Answer> answers = question.getAnswers();
        Collections.shuffle(answers);

//        reset session on new quiz start
        if(questionNr.equals(1))
            sessionQuestionsAndAnswers.clear();

        Boolean lastQuestion = false;
        if (questionNr.equals(questions.size())) {
            lastQuestion = true;
        }

        model.addAttribute(QUESTION, question);
        model.addAttribute(ANSWERS, answers);
        model.addAttribute(LAST_QUESTION, lastQuestion);


        return QUIZ_QUESTION_VIEW;
    }

    @PostMapping("/{quizId}/{questionNr}")
    public String checkAnswer(@PathVariable(value = "quizId") final Long quizId,
                              @PathVariable(value = "questionNr") Integer questionNr,
                              @SessionAttribute Map<Long, Long> sessionQuestionsAndAnswers,
                              @ModelAttribute UserAnswer userAnswer,
                              Model model,
                              SessionStatus status) {
        Quiz quiz = quizService.findOne(quizId);
        List<Question> questions = questionService.findAllByQuiz(quiz);

        sessionQuestionsAndAnswers.put(questions.get(questionNr - 1).getId(), userAnswer.getAnswerId());

        //Last question answered
        if (questionNr.equals(questions.size())) {
            List<Answer> userAnswers = new ArrayList<>();
            Integer rightAnswers = 0;
            for (Map.Entry<Long, Long> entry : sessionQuestionsAndAnswers.entrySet()) {

                Answer answer = answerService.findOne(entry.getValue());
                userAnswers.add(answer);
                if (answer.getCorrect())
                    rightAnswers++;
            }

            model.addAttribute(USER_ANSWERS, userAnswers);
            model.addAttribute(QUESTIONS, questions);
            model.addAttribute(TOTAL_NR_OF_QUESTIONS, questions.size());
            model.addAttribute(CORRECT_ANSWERS, rightAnswers);
            status.setComplete();
            return QUIZ_RESULTS_VIEW;
        }


        Boolean lastQuestion = false;
        if (questionNr.equals(questions.size())) {
            lastQuestion = true;
        }

        Question question = questions.get(questionNr - 1);
        List<Answer> answers = question.getAnswers();

        model.addAttribute(USER_ANSWER, userAnswer);
        model.addAttribute(QUESTION, question);
        model.addAttribute(ANSWERS, answers);
        model.addAttribute(NEXT_QUESTION_NR, ++questionNr);
        model.addAttribute(LAST_QUESTION, lastQuestion);

        return "redirect:/quiz/" + quizId + "/" + questionNr;
    }

    @RequestMapping("/cleanSession")
    public String cleanSession(SessionStatus status) {
        status.setComplete();
        return PERIODIC_TABLE_REDIRECT;
    }
}