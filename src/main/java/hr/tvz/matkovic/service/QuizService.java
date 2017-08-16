package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.Quiz;

import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
public interface QuizService {

    List<Quiz> findAllOrderByDifficulty();

    Quiz findOne(Long quizId);

    void save(Quiz quiz);
}
