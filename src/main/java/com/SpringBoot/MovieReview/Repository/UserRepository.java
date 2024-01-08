package com.SpringBoot.MovieReview.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.SpringBoot.MovieReview.Entity.MovieUser;

public interface UserRepository extends JpaRepository<MovieUser, Integer> {
	public MovieUser findByGmailAndPassword(String gmail, String password);

}
