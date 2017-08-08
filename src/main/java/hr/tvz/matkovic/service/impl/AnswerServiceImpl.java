package hr.tvz.matkovic.service.impl;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.repository.AnswerRepository;
import hr.tvz.matkovic.service.AnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnswerServiceImpl implements AnswerService{

    @Autowired
    private AnswerRepository answerRepository;

    @Override
    public List<Answer> findAll() {
        return answerRepository.findAll();
    }

    @Override
    public Answer findOne(Long id) {
        return answerRepository.findOne(id);
    }

    @Override
    public List<Answer> findAllByQuestion(Question question)
    {
        return answerRepository.findAllByQuestion(question);
    }
}
