package hr.tvz.matkovic.service.impl;

import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.model.Quiz;
import hr.tvz.matkovic.repository.QuestionRepository;
import hr.tvz.matkovic.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionRepository questionRepository;

    @Override
    public List<Question> findAll() {
        return questionRepository.findAll();
    }

    @Override
    public Question findOne(Long id) {
        return questionRepository.findOne(id);
    }

    @Override
    public List<Question> findAllByQuiz(Quiz quiz) {
        return questionRepository.findAllByQuiz(quiz);
    }

    @Override
    public void save(Question question) {
        questionRepository.save(question);
    }


}
