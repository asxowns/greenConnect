package com.green.connect.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.green.connect.dto.Board;
import com.green.connect.dto.Category;
import com.green.connect.dto.User;

@Mapper
public interface IBoardDao {
	//categoryNo값 얻어내기
	public List<Category> getCategoryList(); 
	//categoryName값 얻어내기
	public String getCategoryName(@Param("categoryNo") int categoryNo);
	//게시판 글 작성자 정보
	public User getUserName(@Param("username") String username);
	//게사판 글 등록
	public void registBoard(@Param("board") Board board);
	//파일 게시판 글 등록
	public void registFileBoard(@Param("board") Board board);
	//게시판 글 리스트
	public List<Board> getBoardList(@Param("categoryNo") int categoryNo);
	//게시판 디테일 페이지
	public Board getBoardDetail(@Param("bno") int bno);
	//게시판 조회수 업데이트
	public void boardViewCnt(@Param("view") int view, @Param("bno") int bno);
}
