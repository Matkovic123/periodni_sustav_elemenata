package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.Question;

import java.util.List;

public interface QuestionService {

    List<Question> findAll();

    Question findOne(Long id);

    List<Question> findAllByDifficulty(Integer difficulty);
}
