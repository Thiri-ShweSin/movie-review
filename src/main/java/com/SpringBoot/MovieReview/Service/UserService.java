package com.SpringBoot.MovieReview.Service;

import java.util.List;
import com.SpringBoot.MovieReview.Entity.MovieUser;

public interface UserService {
	// CRUD
	public MovieUser saveMovieUser(MovieUser movieUser);

	public MovieUser getMovieUser(int id);

	public List<MovieUser> getAllMovieUser();
	
	public MovieUser updateMovieUserRole(MovieUser movieUser);

	public MovieUser updateMovieUser(MovieUser movieUser);

	public boolean deleteMovieUser(int id);
	
	public MovieUser checkUserLogin(String gmail,String password);
}
