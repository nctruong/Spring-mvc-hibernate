package dao;

import java.util.List;

import model.Score;

public interface ScoreDao {
	public void createScore(Score score);
	public Score readScore(Integer id);
	public void updateScore(Score score);
	public void deleteScore(Integer id);
	public Score getScore();
	public List<Score> getListScore();
	
}
