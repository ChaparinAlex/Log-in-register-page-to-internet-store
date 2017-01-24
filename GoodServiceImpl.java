package spring.mvc.united.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import spring.mvc.united.dao.GoodDAO;
import spring.mvc.united.model.Good;

@Service
public class GoodServiceImpl implements GoodService {
	
	private GoodDAO goodDAO;

	public void setGoodDAO(GoodDAO goodDAO) {
		this.goodDAO = goodDAO;
	}

	@Override
	@Transactional
	public void addGood(Good g) {
		this.goodDAO.addGood(g);
	}

	@Override
	@Transactional
	public void updateGood(Good g) {
		this.goodDAO.updateGood(g);
	}

	@Override
	@Transactional
	public List<Good> listGoods() {
		return this.goodDAO.listGoods();
	}

	@Override
	@Transactional
	public Good getGoodById(int id) {
		return this.goodDAO.getGoodById(id);
	}

	@Override
	@Transactional
	public void removeGood(int id) {
		this.goodDAO.removeGood(id);
	}

}
