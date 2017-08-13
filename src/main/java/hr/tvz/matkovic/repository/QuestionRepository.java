package hr.tvz.matkovic.repository;

import hr.tvz.matkovic.model.Question;
import hr.tvz.matkovic.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question,Long>
{
    List<Question> findAllByQuiz(Quiz quiz);
}
