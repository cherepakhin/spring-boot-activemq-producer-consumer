package com.asbnotebook.rest;

import com.asbnotebook.dto.Student;
import com.asbnotebook.jms.StudentProducer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/student")
public class StudentRestController {

	Logger logger = LoggerFactory.getLogger(StudentRestController.class);

	@Autowired
	StudentProducer studentProducer;

	@Value("${activemq.destination}")
	private String queueStudent;

	ObjectMapper mapper = new ObjectMapper();

	@GetMapping("/send_one/{id}")
	public Student sendOne(@PathVariable("id") Integer id) {
		Student student = new Student(id, "name" + id);
		logger.info("Sending message {}", student);
		try {
			String json = mapper.writeValueAsString(student);
			studentProducer.sendTo(queueStudent, json);
			logger.info("Sent one: {}", json);
		} catch (JsonProcessingException e) {
			logger.error(e.getMessage());
		}

		return student;
	}

	@PostMapping("/send_many/{count}")
	public String sendMany(@PathVariable Integer count) {
		logger.info("Sending count:  {}", count);
		for (int i = 1; i <= count; i++) {
			Student student = new Student(i, "name_" + i);
			String json = "";
			try {
				json = mapper.writeValueAsString(student);
				studentProducer.sendTo(queueStudent, json);
			} catch (JsonProcessingException e) {
				logger.error(e.getMessage());
			}
		}
		return "sent";
	}
}
