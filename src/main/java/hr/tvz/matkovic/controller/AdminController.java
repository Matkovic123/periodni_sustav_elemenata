package hr.tvz.matkovic.controller;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.model.Quiz;
import hr.tvz.matkovic.model.form.NewQuestionForm;
import hr.tvz.matkovic.model.form.NewQuizForm;
import hr.tvz.matkovic.service.AnswerService;
import hr.tvz.matkovic.service.QuestionService;
import hr.tvz.matkovic.service.QuizService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */

@Controller
@RequestMapping("/admin")
public class AdminController {
    private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);


    // --- VIEWS  -------------------------------------------------------------
    private static final String ADD_QUIZ_VIEW = "add_quiz";
    private static final String ADD_QUESTION_VIEW = "add_question";


    // --- MODEL ATTRIBUTES ---------------------------------------------------
    private static final String NEW_QUIZ_FORM = "newQuizForm";
    private static final String NEW_QUESTION_FORM = "newQuestionForm";
    private static final String MESSAGE_DANGER = "messageDanger";
    private static final String MESSAGE_SUCCESS = "messageSuccess";
    private static final String QUIZ_NOT_SAVED_MESSAGE = "Could not save new quiz data, please try again.";
    private static final String QUESTION_NOT_SAVED_MESSAGE = "Could not save new question data, please try again.";
    private static final String QUESTION_SAVED_MESSAGE = "Question was successfully added!";
    private static final String QUIZ_ID = "quizId";
    private static final String QUESTION_ID = "questionId";
    private static final String USER_ANSWERS = "userAnswers";


    // --- SERVICES -----------------------------------------------------------

    @Autowired
    private QuizService quizService;

    @Autowired
    private QuestionService questionService;

    @Autowired
    private AnswerService answerService;

    @GetMapping("/add_quiz")
    public String createNewQuiz(Model model) {
        NewQuizForm newQuizForm = new NewQuizForm();

        model.addAttribute(NEW_QUIZ_FORM, newQuizForm);

        return ADD_QUIZ_VIEW;
    }

    @PostMapping("/add_quiz")
    public String saveQuizAndRenderQuestionsForm(@ModelAttribute(value = NEW_QUIZ_FORM) NewQuizForm newQuizForm,
                                                 Model model,
                                                 RedirectAttributes redirectAttributes) {

        String name = newQuizForm.getName();
        String description = newQuizForm.getDescription();
        Integer difficulty = newQuizForm.getDifficulty();

        Quiz quiz = new Quiz(name, difficulty, description);
        try {
            if(quiz.getName().isEmpty())
                throw new Exception("Quiz name can't be empty");
            quizService.save(quiz);
        } catch (Exception ex) {
            LOGGER.debug("Could not save new quiz to database. Exception:", ex);
            redirectAttributes.addFlashAttribute(MESSAGE_DANGER, QUIZ_NOT_SAVED_MESSAGE);
            return "redirect:/admin/add_quiz";
        }

        return "redirect:/admin/" + quiz.getId() + "/add_question";
    }

    @GetMapping("/{quizId}/add_question")
    public String addQuestionAndAnswers(@PathVariable(value = "quizId") Long quizId, Model model) {

        NewQuestionForm newQuestionForm = new NewQuestionForm();

        model.addAttribute(NEW_QUESTION_FORM, newQuestionForm);


        return ADD_QUESTION_VIEW;
    }

    @PostMapping("/{quizId}/add_question")
    public String storeQuestionAndAnswers(@PathVariable(value = "quizId") Long quizId,
                                          @ModelAttribute(value = NEW_QUESTION_FORM) NewQuestionForm newQuestionForm,
                                          Model model,
                                          RedirectAttributes redirectAttributes) {
        Quiz quiz = quizService.findOne(quizId);
        Integer number = quiz.getQuestions().size()+1;
        String questionText = newQuestionForm.getText();
        Question question = new Question(number,questionText,quiz);
        try {

        String correctAnswerText = newQuestionForm.getCorrectAnswer();
        String wrongAnswer1Text = newQuestionForm.getWrongAnswer1();
        String wrongAnswer2Text = newQuestionForm.getWrongAnswer2();
        String wrongAnswer3Text = newQuestionForm.getWrongAnswer3();

        if(correctAnswerText.isEmpty() || wrongAnswer1Text.isEmpty())
            throw new Exception("Not enough answers provided.");

        Answer correctAnswer = new Answer(correctAnswerText,true,question);
        Answer wrongAnswer1 = new Answer(wrongAnswer1Text, false, question);
        Answer wrongAnswer2 = new Answer(wrongAnswer2Text, false, question);
        Answer wrongAnswer3 = new Answer(wrongAnswer3Text, false, question);

        List<Answer> answers = new ArrayList<>();
        answers.add(correctAnswer);
        answers.add(wrongAnswer1);
        answers.add(wrongAnswer2);
        answers.add(wrongAnswer3);



            questionService.save(question);
            for(Answer answer : answers)
            {
                if(!answer.getText().isEmpty())
                    answerService.save(answer);
            }
        }
        catch (Exception ex){
            LOGGER.debug("Could not save new question and answers to database. Exception:", ex);
            redirectAttributes.addFlashAttribute(MESSAGE_DANGER, QUESTION_NOT_SAVED_MESSAGE);
            return "redirect:/admin/" + quizId + "/add_question";
        }

        redirectAttributes.addFlashAttribute(MESSAGE_SUCCESS, QUESTION_SAVED_MESSAGE);
        return "redirect:/admin/" + quizId + "/add_question";
    }

}
