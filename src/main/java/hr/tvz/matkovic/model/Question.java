package hr.tvz.matkovic.model;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Matkovic on 07/08/2017.
 */

@Entity
@Table(name = "QUESTION", schema = "PERIODIC_SYSTEM")
public class Question implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "TEXT")
    private String text;

    @Column(name = "DIFFICULTY")
    private Integer difficulty;

    public Question(){}

    public Question(String text, Integer difficulty) {
        this.text = text;
        this.difficulty = difficulty;
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

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }
}
