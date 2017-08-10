package hr.tvz.matkovic.repository;

import hr.tvz.matkovic.model.Answer;
import hr.tvz.matkovic.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswerRepository extends JpaRepository<Answer,Long>
{
    List<Answer> findAllByQuestion(Question question);
    List<Answer> findAllByQuestion_Id(Long id);

}
