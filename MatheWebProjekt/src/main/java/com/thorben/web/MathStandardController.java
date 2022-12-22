package com.thorben.web;

import java.util.Date;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.thorben.service.DateConverter;
import com.thorben.service.MathService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MathStandardController {

	private final Logger logger = LoggerFactory.getLogger(MathStandardController.class);
	private final MathService mathService;
	private static Date indexDate = new Date();

	@Autowired
	public MathStandardController(MathService mathService) {
		this.mathService = mathService;
	}

	@GetMapping(value = "/")
	public String index(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {

		logger.debug("index() is executed!");
		DateConverter.setDateFooter(indexDate, request);
		
		return "index";
	}
	
	@GetMapping(value = "/search")
	public String getSearch(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {
		
		String forwardPage = "orga/search";

		logger.debug("search() is executed!");

		request.getParameter("suchen");
		
		return forwardPage;
	}
	
	@GetMapping(value = "/datenschutz")
	public String getDatenschutz(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {
		
		String forwardPage = "orga/datenschutz";

		logger.debug("Datenschutz() is executed!");

		request.getParameter("suchen");
		
		return forwardPage;
	}
	
	@GetMapping(value = "/kontakt")
	public String getKontakt(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {
		
		String forwardPage = "orga/kontaktdaten";

		logger.debug("kontakt() is executed!");

		request.getParameter("suchen");
		
		return forwardPage;
	}
	
	@GetMapping(value = "/impressum")
	public String getImpressum(Map<String, Object> model, final HttpServletRequest request, final HttpServletResponse response) {
		
		String forwardPage = "orga/impressum";

		logger.debug("impressum() is executed!");

		request.getParameter("suchen");
		
		return forwardPage;
	}

}