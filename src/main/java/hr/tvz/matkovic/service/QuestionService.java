package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.model.Quiz;

import java.util.List;

public interface QuestionService {

    List<Question> findAll();

    Question findOne(Long id);

    List<Question> findAllByQuiz(Quiz quiz);

    void save(Question question);
}
