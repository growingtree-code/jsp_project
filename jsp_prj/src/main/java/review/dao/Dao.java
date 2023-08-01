package review.dao;

import java.util.ArrayList;

import model.Review;

public interface Dao {

	void insert(Review r);
	ArrayList<Review> select(int p);
	
}
