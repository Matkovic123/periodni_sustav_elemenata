package hr.tvz.matkovic.controller;

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
    private static final String MESSAGE = "message";
    private static final String QUIZ_NOT_SAVED_MESSAGE = "Could not save new quiz data, please try again.";
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
            quizService.save(quiz);
        } catch (Exception ex) {
            LOGGER.debug("Could not save new quiz to database. Exception:", ex);
            redirectAttributes.addFlashAttribute(MESSAGE, QUIZ_NOT_SAVED_MESSAGE);
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






        return "redirect:/admin/" + quizId + "/add_question";
    }

}
