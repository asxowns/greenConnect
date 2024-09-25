package com.green.connect.controller;

import java.io.File;
import java.nio.file.Paths;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.green.connect.dao.IBoardDao;
import com.green.connect.dto.Board;

@Controller
@RequestMapping("/member")
public class MemberBoardController {

	@Autowired
	private IBoardDao iBoardDao;
	
	@RequestMapping("/writeForm")
	public String writeForm(Model model) {
		System.out.println(iBoardDao.getCategoryList());
		model.addAttribute("categoryList", iBoardDao.getCategoryList());
		return "member/writeForm";
	}
		
	@RequestMapping("/boardList")
	public String boardListPage(Model model, @RequestParam("categoryNo") int categoryNo) {
		//카테고리 번호를 전달받아 해당 카테고리 게시판 리스트만출력
		List<Board> boardList = iBoardDao.getBoardList(categoryNo);
	
		model.addAttribute("boardList", boardList);
		return "member/boardListPage";
	}
	
	@RequestMapping("/registBoard")
	public String registBoard(@RequestParam("etc") MultipartFile file, @RequestParam("categoryNo") int categoryNo, @RequestParam("title") String title, @RequestParam("content") String content, Model model) {
		Date regDate = new Date();
		System.out.println(categoryNo);
		System.out.println("controller통과~~~~~");
		System.out.println(title);
		System.out.println(content);
		
		int view = 0;
		String username = "user1";
		Board board = new Board(title, content, categoryNo, regDate, view, username);
		
		//로그인 후 세션에 저장된 username으로 값 집어넣기
		//첨부파일 존재시 처리방법
		
		if(file.isEmpty()) {
			iBoardDao.registBoard(board);
			model.addAttribute("msg", "글 등록 성공");
			return "member/writeForm";
		} else {
			String fileName = file.getOriginalFilename();
			Random random = new Random();
			fileName = fileName + random.nextInt(100);
			String uniqueFileName = UUID.randomUUID().toString() + "_" + fileName;
			System.out.println(fileName);
			String uploadDir = Paths.get("src/main/resources/static/images/").toAbsolutePath().toString() + "/";
			File dir = new File(uploadDir);
	        if (!dir.exists()) {
	            dir.mkdirs();  // 디렉토리 생성
	        }
			try {
				File destFile = new File(uploadDir + fileName);
				file.transferTo(destFile);
				board.setEtc(uniqueFileName);
				iBoardDao.registFileBoard(board);
				model.addAttribute("msg", "파일 업로드 성공");
				return "member/writeForm";
			} catch(Exception e){
				e.printStackTrace();
				model.addAttribute("msg", "파일 업로드 실패");
				return "member/writeForm";
			}
		}
	}
	
	@RequestMapping("/boardDetail")
	public String boardDetail(@RequestParam("bno") int bno, Model model) {
		System.out.println("bno : " + bno);
		model.addAttribute("boardDetail",iBoardDao.getBoardDetail(bno));
		return "member/detailPage";
	}
}
