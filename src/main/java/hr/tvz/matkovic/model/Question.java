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
@SequenceGenerator(name = "QUESTION_SEQUENCE", sequenceName = "QUESTION_SEQUENCE", initialValue = 100, allocationSize = 100)
public class Question implements Serializable {

    @Id
    @Column
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "QUESTION_SEQUENCE")
    private Long id;

    @Column(name = "NUMBER")
    private Integer number;

    @Column(name = "TEXT")
    private String text;

    @OneToMany(mappedBy = "question")
    private List<Answer> answers = new ArrayList<>();

    @ManyToOne
    @JoinColumn(name = "QUIZ_ID")
    private Quiz quiz;

    public Question() {
    }

    public Question(Integer number, String text, Quiz quiz) {
        this.number = number;
        this.text = text;
        this.quiz = quiz;
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
