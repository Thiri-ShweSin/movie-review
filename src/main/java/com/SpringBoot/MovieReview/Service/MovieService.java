package com.SpringBoot.MovieReview.Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.SpringBoot.MovieReview.Entity.Movie;

public interface MovieService {
	//CRUD
	public Movie saveMovie(Movie movie);
	
	public Movie getMovie(int id);
	
	public Movie getMovieByName(String name);
	
	public List<Movie> getAllMovie();
	
	public boolean deleteMovie(int id);
	
	public String saveImg(MultipartFile poster_path, HttpSession session);
	
	public String saveVid(MultipartFile trailer, HttpSession session);
	
	public void saveMovieToDB(String name, String adult, MultipartFile poster_path, String budget, String homepage, MultipartFile trailer,
			String overview, String type,HttpSession session);

	public Movie updateMovie(int id, String name, String adult, MultipartFile poster_path, String budget, String homepage,
			MultipartFile trailer, String overview, String type, HttpSession session);

}
