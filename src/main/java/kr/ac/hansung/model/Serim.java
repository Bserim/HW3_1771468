package kr.ac.hansung.model;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString

public class Serim {
	
	private int no;
	
	private String year;
	
	private String semester;
	
	private String subject;
	
	private String division;
	
	private String professor;
	
	private String credit;
	
}
