package hr.tvz.matkovic.repository;

import hr.tvz.matkovic.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
public interface QuizRepository extends JpaRepository<Quiz,Long> {

    List<Quiz> findAllOrderByDifficulty(Integer difficulty);
}
