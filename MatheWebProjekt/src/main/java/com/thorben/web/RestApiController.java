package com.thorben.web;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.thorben.objects.Matrix;
import com.thorben.service.MathService;
import com.thorben.service.TypeConverter;

@RestController
public class RestApiController {

	private final Logger logger = LoggerFactory.getLogger(RestApiController.class);
	private final MathService mathService;

	@Autowired
	public RestApiController(MathService mathService) {
		this.mathService = mathService;
	}

	@PostMapping(value = "/solveLgs", produces = "application/json")
	public Matrix solveLgs(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {

		logger.debug("solveLgs() is executed!"); 
		int numberOfEquationsInt = TypeConverter.string2int(request.getParameter("numberOfEquations"), 0);
		double[][] testArray = new double[numberOfEquationsInt][numberOfEquationsInt];
		Matrix test = new Matrix(2,2,testArray);
		
		return test;
	}

}