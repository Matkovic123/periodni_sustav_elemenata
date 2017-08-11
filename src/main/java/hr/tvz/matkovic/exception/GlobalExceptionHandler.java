package hr.tvz.matkovic.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {
    private static final Logger LOGGER = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    // --- VIEW NAMES ---------------------------------------------------------
    public static final String PERIODIC_TABLE_REDIRECT = "redirect:/periodic_table";

    @ExceptionHandler(Exception.class)
    public ModelAndView handleException(Exception ex) {
        LOGGER.error("Caught Exception: ", ex);
        ModelAndView mav = new ModelAndView();
        mav.addObject("exceptionClass", ex.getClass());
        mav.setViewName("redirect:/");
        return mav;
    }
}
