package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import model.Score;

@Repository
public class ScoreDaoImpl implements ScoreDao {
	
	private SessionFactory sessionFactory;

	@Override
	public void createScore(Score score) {
		Session session = getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(score);
        tx.commit();
        session.close();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public Score readScore(Integer id) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Score score = (Score) session.get(Score.class, id);
		session.close();
		return score;
	}

	@Override
	public void updateScore(Score score) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(score);;
		tx.commit();
		session.close();
	}

	@Override
	public void deleteScore(Integer id) {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
		Transaction tx = session.beginTransaction();
		Score score = (Score) session.get(Score.class, id);
		session.delete(score);
		tx.commit();
		session.close();
	}

	@Override
	public Score getScore() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Score> getListScore() {
		// TODO Auto-generated method stub
		Session session = getSessionFactory().openSession();
        List<Score> list = session.createQuery("from score").list();
        session.close();
        return list;
	}


	
}
