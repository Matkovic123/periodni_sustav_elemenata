package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Matkovic on 07/08/2017.
 */

@Entity
@Table(name = "QUESTION", schema = "PERIODIC_SYSTEM")
public class Question implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "NUMBER")
    private Integer number;

    @Column(name = "TEXT")
    private String text;

    @Column(name = "DIFFICULTY")
    private Integer difficulty;

    @OneToMany(mappedBy = "question")
    private List<Answer> answers = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "QUIZ_ID")
    private Quiz quiz;

    public Question() {
    }


    //--- set / get methods ---------------------------------------------------


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

    public Quiz getQuiz() {
        return quiz;
    }

    public void setQuiz(Quiz quiz) {
        this.quiz = quiz;
    }

    public Answer getCorrectAnswer() {
        for (Answer answer : answers) {
            if (answer.getCorrect())
                return answer;
        }
        return null;
    }


}
