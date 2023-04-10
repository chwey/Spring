package com.yedam.board.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor//매개값을 가지는 생성자
@NoArgsConstructor //매개값이 없는 생성자
public class SampleVO {
	private int mno;
	private String firstName;
	private String lastName;
}
