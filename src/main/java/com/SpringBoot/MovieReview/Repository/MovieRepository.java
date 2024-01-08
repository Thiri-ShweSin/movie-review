package com.SpringBoot.MovieReview.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.SpringBoot.MovieReview.Entity.Movie;
import com.SpringBoot.MovieReview.Entity.MovieUser;

public interface MovieRepository extends JpaRepository<Movie,Integer> {
	public Movie findByName(String name);
}
