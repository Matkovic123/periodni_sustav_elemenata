package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Matkovic on 07/08/2017.
 */

@Entity
@Table(name = "ANSWER", schema = "PERIODIC_SYSTEM")
public class Answer implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "TEXT", nullable = false, updatable = false)
    private String text;

    @Column(name = "CORRECT", nullable = false, updatable = false)
    private Boolean correct;

    @ManyToOne
    @JoinColumn(name = "QUESTION_ID", nullable = false, updatable = false)
    private Question question;

    public Answer(){}

    public Answer(String text, Boolean correct, Question question) {
        this.text = text;
        this.correct = correct;
        this.question = question;
    }

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

    public Boolean getCorrect() {
        return correct;
    }

    public void setCorrect(Boolean correct) {
        this.correct = correct;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }
}
