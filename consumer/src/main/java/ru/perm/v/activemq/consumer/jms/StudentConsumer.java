package ru.perm.v.activemq.consumer.jms;

import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;
import ru.perm.v.activemq.consumer.dto.Student;

import java.io.IOException;

import static java.lang.String.format;

@Component
@Slf4j
public class StudentConsumer {

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
		} catch (IOException e) {
			log.error(e.getLocalizedMessage());
			throw new RuntimeException(e);
		}
		log.info(format("Received from queue 'student' OBJECT: %s", student));
	}
}