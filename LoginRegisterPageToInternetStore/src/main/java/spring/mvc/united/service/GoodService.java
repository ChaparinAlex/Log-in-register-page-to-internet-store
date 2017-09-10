package spring.mvc.united.service;

import java.util.List;

import spring.mvc.united.model.Good;

public interface GoodService {

	public void addGood(Good g);
	public void updateGood(Good g);
	public List<Good> listGoods();
	public Good getGoodById(int id);
	public void removeGood(int id);
	
}
