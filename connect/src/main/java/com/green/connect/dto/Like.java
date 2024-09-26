package com.green.connect.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Like {
	
	private int likeno;
	private String username;
	private int bno;
	private boolean likeState;
}
