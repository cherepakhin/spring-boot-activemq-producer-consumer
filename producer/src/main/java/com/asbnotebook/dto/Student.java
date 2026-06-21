package com.asbnotebook.dto;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@EqualsAndHashCode
public class Student {
	
	private Integer id = -1;
	private String name = "-";

	public Student() {

	}

	public Student(Integer id, String name) {
		this.id = id;
		this.name = name;
	}

	@Override
	public String toString() {
		return "{" +
				"id: " + id +
				", name: '" + name + '\'' +
				'}';
	}
}