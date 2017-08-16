package hr.tvz.matkovic.model.form;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
public class NewQuestionForm implements Serializable {

    @Size(min = 5, max = 250)
    private String text;

    @Size(min = 5, max = 150)
    private String correctAnswer;

    @Size(min = 5, max = 150)
    private String wrongAnswer1;

    @Size(min = 5, max = 150)
    private String wrongAnswer2;

    @Size(min = 5, max = 150)
    private String wrongAnswer3;


    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(String correctAnswer) {
        this.correctAnswer = correctAnswer;
    }

    public String getWrongAnswer1() {
        return wrongAnswer1;
    }

    public void setWrongAnswer1(String wrongAnswer1) {
        this.wrongAnswer1 = wrongAnswer1;
    }

    public String getWrongAnswer2() {
        return wrongAnswer2;
    }

    public void setWrongAnswer2(String wrongAnswer2) {
        this.wrongAnswer2 = wrongAnswer2;
    }

    public String getWrongAnswer3() {
        return wrongAnswer3;
    }

    public void setWrongAnswer3(String wrongAnswer3) {
        this.wrongAnswer3 = wrongAnswer3;
    }
}
