package com.project.jpa.riteshProject.exceptionHandling;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.data.rest.webmvc.ResourceNotFoundException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class ExceptionHandling {
	Logger logger = LoggerFactory.getLogger(this.getClass());
	@ExceptionHandler(value=ResourceNotFoundException.class)
	public String resourceNotFound(Exception e) {
		return "pageNotFound";
	}
	@ExceptionHandler(value=NoHandlerFoundException.class)
	public String handleException(Exception e) {
		logger.info("exception: "+e);
		return "error";
	}
}
