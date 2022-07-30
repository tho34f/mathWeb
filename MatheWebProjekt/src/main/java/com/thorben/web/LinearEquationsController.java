package com.thorben.web;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thorben.service.DateConverter;
import com.thorben.objects.Matrix;
import com.thorben.service.MathService;

@Controller
public class LinearEquationsController {

	private final Logger logger = LoggerFactory.getLogger(LinearEquationsController.class);
	private final MathService mathService;
	private static Date indexDate = new Date();

	@Autowired
	public LinearEquationsController(MathService mathService) {
		this.mathService = mathService;
	}

	@GetMapping(value = "/lgs")
	public String index(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {

		logger.debug("index() is executed!");
		DateConverter.setDateFooter(indexDate, request);
		
		return "lgs/lgs";
	}
	
}