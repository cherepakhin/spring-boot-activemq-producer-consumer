package ru.perm.v.activemq.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.Objects;

@Getter
@Setter
public class Student {

	private Integer id;
	private String name;

	public Student() {
	}

	public Student(Integer i, String n) {
		this();
		id = i;
		name = n;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (!(o instanceof Student)) return false;
		Student student = (Student) o;
		return Objects.equals(id, student.id) && Objects.equals(name, student.name);
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, name);
	}

	@Override
	public String toString() {
		return "Student{" +
				"id=" + id +
				", name='" + name + '\'' +
				'}';
	}
}