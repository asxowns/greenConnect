package com.green.connect.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.green.connect.dto.Board;
import com.green.connect.dto.Category;

@Mapper
public interface IBoardDao {
	//categoryNo값 얻어내기
	public List<Category> getCategoryList(); 
	//게사판 글 등록
	public void registBoard(@Param("board") Board board);
	//파일 게시판 글 등록
	public void registFileBoard(@Param("board") Board board);
	//게시판 글 리스트
	public List<Board> getBoardList(@Param("categoryNo") int categoryNo);
	//게시판 디테일 페이지
	public Board getBoardDetail(@Param("bno") int bno);
}
