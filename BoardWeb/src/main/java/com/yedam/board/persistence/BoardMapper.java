package com.yedam.board.persistence;

import java.util.List;

import com.yedam.board.domain.BoardVO;
import com.yedam.board.domain.Criteria;

public interface BoardMapper {
	
	//@Select("select * from tbl_board where bno > 0")
	public List<BoardVO> getList(); //목록
	public List<BoardVO> getListWithPaging(Criteria cri); //페이징
	public void insertSelectKey(BoardVO board);//등록
	public BoardVO read(Long bno); //조회
	public int delete(Long bno);//삭제
	public int update(BoardVO board);
	public int getTotalCount(Criteria cri);//전체페이지
}
