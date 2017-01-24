package spring.mvc.united.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import spring.mvc.united.model.Good;

@Repository
public class GoodDAOImpl implements GoodDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(GoodDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addGood(Good g) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(g);
		logger.info("Good saved successfully, Good Details="+g);
	}

	@Override
	public void updateGood(Good g) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(g);
		logger.info("Good updated successfully, Good Details="+g);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Good> listGoods() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Good> goodsList = session.createQuery("from Good").list();
		for(Good g : goodsList){
			logger.info("Good List::"+g);
		}
		return goodsList;
	}

	@Override
	public Good getGoodById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Good g = (Good) session.load(Good.class, new Integer(id));
		logger.info("Good loaded successfully, Good details="+g);
		return g;
	}

	@Override
	public void removeGood(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Good g = (Good) session.load(Good.class, new Integer(id));
		if(null != g){
			session.delete(g);
		}
		logger.info("Good deleted successfully, good details="+g);
	}

}
