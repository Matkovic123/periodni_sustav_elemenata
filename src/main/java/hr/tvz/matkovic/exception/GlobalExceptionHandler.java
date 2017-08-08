package hr.tvz.matkovic.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class GlobalExceptionHandler {
    private static final Logger LOGGER = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    // --- VIEW NAMES ---------------------------------------------------------
    public static final String PERIODIC_SYSTEM_REDIRECT = "redirect:/periodic_table";

    @ExceptionHandler(Exception.class)
    public String handleException(Exception ex) {
        LOGGER.error("Caught Exception: ", ex);
        return "PERIODIC_SYSTEM_REDIRECT";
    }

}
