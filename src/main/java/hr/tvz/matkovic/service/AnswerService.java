package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;

import java.util.List;

public interface AnswerService {

    List<Answer> findAll();

    Answer findOne(Long id);

    List<Answer> findAllByQuestion(Question question);
}