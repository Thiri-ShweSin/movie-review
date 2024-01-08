package com.SpringBoot.MovieReview.Service;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.SpringBoot.MovieReview.Entity.Movie;
import com.SpringBoot.MovieReview.Repository.MovieRepository;

@Service
public class MovieServiceImpl implements MovieService {
	@Autowired
	MovieRepository movieRepository;

	@Override
	public Movie saveMovie(Movie movie) {
		return movieRepository.save(movie);
	}

	@Override
	public Movie getMovie(int id) {
		return movieRepository.findById(id).get();
	}
	
	@Override
	public Movie getMovieByName(String name) {
		return movieRepository.findByName(name);
	}

	@Override
	public List<Movie> getAllMovie() {
		return movieRepository.findAll();
	}

	@Override
	public boolean deleteMovie(int id) {
		movieRepository.deleteById(id);
		return false;
	}
	
	@Override
	public String saveImg(MultipartFile poster_path, HttpSession session) {
		String fileName = StringUtils.cleanPath(poster_path.getOriginalFilename());
		ServletContext context = session.getServletContext();
		Path uploadPath = Paths.get(context.getRealPath("/resources/images"));
		if (!Files.exists(uploadPath)) {
			try {
				Files.createDirectories(uploadPath);

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		InputStream inputStream,inputStream1;
		try {
			inputStream = poster_path.getInputStream();
			Path filePath = uploadPath.resolve(fileName);
			Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
			System.out.println("save " + filePath);
		} catch (IOException e) {
			System.out.println("file can not save");
			e.printStackTrace();
		}

		return fileName;
	}
	
	@Override
	public String saveVid(MultipartFile trailer, HttpSession session) {
		String fileName = StringUtils.cleanPath(trailer.getOriginalFilename());
		ServletContext context = session.getServletContext();
		Path uploadPath = Paths.get(context.getRealPath("/resources/videos"));
		if (!Files.exists(uploadPath)) {
			try {
				Files.createDirectories(uploadPath);

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		InputStream inputStream,inputStream1;
		try {
			inputStream = trailer.getInputStream();
			Path filePath = uploadPath.resolve(fileName);
			Files.copy(inputStream, filePath, StandardCopyOption.REPLACE_EXISTING);
			System.out.println("save " + filePath);
		} catch (IOException e) {
			System.out.println("file can not save");
			e.printStackTrace();
		}

		return fileName;
	}
	
	@Override
	public void saveMovieToDB(String name,String adult,MultipartFile poster_path,String budget,String homepage,MultipartFile trailer,String overview,String type,HttpSession session) {
		Movie movie = new Movie();
		String img = saveImg(poster_path,session);
		String vid = saveVid(trailer,session);
		movie.setName(name);
		movie.setAdult(adult);
		movie.setPoster_path(img);
		movie.setBudget(budget);
		movie.setHomepage(homepage);
		movie.setTrailer(vid);
		movie.setOverview(overview);
		movie.setType(type);
		movieRepository.save(movie);
	}
	
	@Override
	public Movie updateMovie(int id, String name,String adult,MultipartFile poster_path,String budget,String homepage,MultipartFile trailer,String overview,String type,HttpSession session) {
		Movie movie = getMovie(id);
		if(movie!=null) {
			movie.setName(name);
			movie.setAdult(adult);
			movie.setBudget(budget);
			movie.setHomepage(homepage);
			movie.setOverview(overview);
			movie.setType(type);
			if(!(poster_path.isEmpty())) {
				String img = saveImg(poster_path,session);
				movie.setPoster_path(img);
			}
			if(!(trailer.isEmpty())){
				String vid = saveVid(trailer,session);
				movie.setTrailer(vid);
			}
		}
		movieRepository.save(movie);
		return null;
	}

}
