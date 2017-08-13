package hr.tvz.matkovic.model.form;

import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * Created by tmatkovic on 13.8.2017..
 */
public class NewQuestionForm implements Serializable{

    @Size(min = 5,max = 512)
    private String text;


}
