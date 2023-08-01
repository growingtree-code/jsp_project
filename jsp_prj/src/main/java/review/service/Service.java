package review.service;

import java.util.ArrayList;

import model.Review;

public interface Service {

	void insert(Review r);
	ArrayList<Review> select(int p);
}
