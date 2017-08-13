package hr.tvz.matkovic.repository;

import hr.tvz.matkovic.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
@Repository
public interface QuizRepository extends JpaRepository<Quiz,Long> {

    List<Quiz> findAllByOrderByDifficultyAsc();
}
