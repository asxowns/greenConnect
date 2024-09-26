package com.green.connect.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {
	
	private int rcode;
	private String replyContent;
	private Date replyDate;
	
	private String username;
	private int bno;
}
