package hr.tvz.matkovic.model.form;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by tmatkovic on 13.8.2017..
 */
public class NewQuestionForm implements Serializable {

    @Size(min = 5, max = 512)
    private String text;

    private List<String> answersText = new ArrayList<>();


    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public List<String> getAnswersText() {
        return answersText;
    }

    public void setAnswersText(List<String> answersText) {
        this.answersText = answersText;
    }
}
