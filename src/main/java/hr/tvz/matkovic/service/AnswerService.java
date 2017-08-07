package hr.tvz.matkovic.service;

import hr.tvz.matkovic.model.Answer;

import java.util.List;

public interface AnswerService {

    List<Answer> findAll();

    Answer findOne(Long id);
}
