package ru.perm.v.activemq.producer;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsTemplate;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class StudentProducer {

	@Autowired
	private JmsTemplate jmsTemplate;

	public void sendTo(String destination, String student) {
		log.info("Sending: {}", student);
		jmsTemplate.convertAndSend(destination, student);
		log.info("Message sent.");
	}
}