package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


@Repository
public class BoardDAO {

    @Autowired
    SqlSession sqlSession;

    public int insertBoard(BoardVO vo) {
        System.out.println("===> JDBC로 insertBoard() 기능 처리");
        int result = sqlSession.insert("Board.insertBoard", vo);
        return result;
    }

    // 글 삭제
    public int deleteBoard(int seq) {
        System.out.println("===> JDBC로 deleteBoard() 기능 처리");
        int result = sqlSession.delete("Board.deleteBoard", seq);
        return result;
    }
    public int updateBoard(BoardVO vo) {
        System.out.println("===> JDBC로 updateBoard() 기능 처리");
        int result = sqlSession.update("Board.updateBoard", vo);
        return result;
    }
    /*
    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setCategory(rs.getString("category"));
            vo.setTitle(rs.getString("title"));
            vo.setWriter(rs.getString("writer"));
            vo.setContent(rs.getString("content"));
            vo.setRegdate(rs.getDate("regdate"));
            return vo;
        }
    }
    */
    public BoardVO getBoard(int seq) {
        System.out.println("===> JDBC로 getBoard() 기능 처리");
        BoardVO result = sqlSession.selectOne("Board.getBoard", seq);
        return result;
    }

    public List<BoardVO> getBoardList(){
        System.out.println("===> JDBC로 getBoardList() 기능 처리");
        List<BoardVO> result = sqlSession.selectList("Board.getBoardList");
        return result;
    }
}