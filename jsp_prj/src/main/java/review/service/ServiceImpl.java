package review.service;

import java.util.ArrayList;

import review.dao.DaoImpl;
import model.Review;
import review.dao.Dao;

public class ServiceImpl implements Service{

	private Dao dao;
	
	public ServiceImpl() {
		this.dao = new DaoImpl();
	}
	
	
	@Override
	public void insert(Review r) {
		// TODO Auto-generated method stub
		dao.insert(r);
	}

	@Override
	public ArrayList<Review> select(int p) {
		// TODO Auto-generated method stub
		return dao.select(p);
	}

	
	
}
