package hr.tvz.matkovic.model.form;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * Created by tmatkovic on 13.8.2017..
 */
public class NewQuizForm implements Serializable{

    @Size(min = 3, max = 50)
    private String name;

    @Size(max = 250)
    private String description;

    @Min(1)
    @Max(4)
    private Integer difficulty;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }

    public NewQuizForm() {}
}
