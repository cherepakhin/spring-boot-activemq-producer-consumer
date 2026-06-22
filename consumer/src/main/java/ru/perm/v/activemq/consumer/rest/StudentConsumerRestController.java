package ru.perm.v.activemq.consumer.rest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.perm.v.activemq.consumer.jms.StudentConsumer;
import ru.perm.v.activemq.dto.Student;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/student")
public class StudentConsumerRestController {
	Logger log = LoggerFactory.getLogger(StudentConsumerRestController.class);
	@Autowired
	StudentConsumer studentConsumer;

	@GetMapping("/getLast")
	List<Student> getLast() throws Exception {
		log.info("[GET from consumer] /student/getLast");
		if(studentConsumer == null) {
			throw new Exception("Student consumer is not initialized");
		}
		if(studentConsumer.getListStudents() == null) {
			return new ArrayList<>();
		}
		return studentConsumer.getListStudents();
	}
}
