package hr.tvz.matkovic.service.impl;

import hr.tvz.matkovic.model.Quiz;
import hr.tvz.matkovic.repository.QuizRepository;
import hr.tvz.matkovic.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
@Service
public class QuizServiceImpl implements QuizService {

    @Autowired
    private QuizRepository quizRepository;

    @Override
    public List<Quiz> findAllOrderByDifficulty() {

        return quizRepository.findAllByOrderByDifficultyAsc();
    }

    @Override
    public Quiz findOne(Long quizId) {
        return quizRepository.findOne(quizId);
    }
}
