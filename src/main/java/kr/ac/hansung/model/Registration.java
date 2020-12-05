package kr.ac.hansung.model;


import javax.validation.constraints.NotEmpty;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString

public class Registration {
	
	private int no;
	
	@NotEmpty(message="The year cannot be empty")
	private String year;
	
	@NotEmpty(message="The semesters cannot be empty")
	private String semester;
	
	@NotEmpty(message="The subject cannot be empty")
	private String subject;
	
	@NotEmpty(message="The division cannot be empty")
	private String division;
	
	@NotEmpty(message="The professor cannot be empty")
	private String professor;
	
	@NotEmpty(message="The credit cannot be empty")
	private String credit;
	
}
