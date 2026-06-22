package ru.perm.v.activemq.consumer.jms;

import org.springframework.stereotype.Component;
import ru.perm.v.activemq.dto.Student;

import java.util.List;

@Component
public interface StudentConsumer {
	List<Student> getListStudents();
	void clearStudents();
}