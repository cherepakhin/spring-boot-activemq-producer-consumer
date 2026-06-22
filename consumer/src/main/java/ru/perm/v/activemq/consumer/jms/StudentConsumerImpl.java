package ru.perm.v.activemq.consumer.jms;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;
import ru.perm.v.activemq.dto.Student;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import static java.lang.String.format;


@Component
@Slf4j
public class StudentConsumerImpl implements StudentConsumer {
	List<Student> listStudents = new ArrayList<>();
	//Logger log = Logger.getLogger(this.getClass())
	ObjectMapper mapper = new ObjectMapper();
	// jmsFactory - определено как @Bean в StudentConfig
	// student - имя очереди
	//@JmsListener(destination = "student", containerFactory = "jmsFactory")
	//public void receiveMessage(Student student) {
	//	log.info(format("Received from queue student message : %s", student));
	//}


	@JmsListener(destination = "student", containerFactory = "jmsFactory")
	public void receiveMessage(String dto) {

		log.info("Received from queue 'student'");
		log.info("Receive STRING: {}", dto);

		Student student = null;
		try {
			student = mapper.readValue(dto, Student.class);
			listStudents.add(student);
		} catch (IOException e) {
			log.error(e.getLocalizedMessage());
			throw new RuntimeException(e);
		}
		log.info(format("Received from queue 'student' OBJECT: %s", student));
	}

	public List<Student> getListStudents() {
		return listStudents;
	}

	@Override
	public void clearStudents() {
		listStudents = new ArrayList<>();
	}
}