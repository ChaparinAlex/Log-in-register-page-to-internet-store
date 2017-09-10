package spring.mvc.united.dao;

import java.util.List;

import spring.mvc.united.model.Good;

public interface GoodDAO {

	public void addGood(Good g);
	public void updateGood(Good g);
	public List<Good> listGoods();
	public Good getGoodById(int id);
	public void removeGood(int id);
}
