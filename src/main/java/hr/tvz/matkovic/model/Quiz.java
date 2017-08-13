package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
@Entity
@Table(name = "QUIZ", schema = "PERIODIC_SYSTEM")
public class Quiz implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "DIFFICULTY", nullable = false)
    private Integer difficulty;

    @Column(name = "DESCRIPTION", nullable = false)
    private String description;

    @OneToMany(mappedBy = "quiz")
    private List<Question> questions;

    public Quiz() {
    }

    public Quiz(String name, Integer difficulty, String description, List<Question> questions) {
        this.name = name;
        this.difficulty = difficulty;
        this.description = description;
        this.questions = questions;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Question> getQuestions() {
        return questions;
    }

    public void setQuestions(List<Question> questions) {
        this.questions = questions;
    }
}