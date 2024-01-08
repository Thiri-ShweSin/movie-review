package com.SpringBoot.MovieReview.Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.SpringBoot.MovieReview.Entity.Movie;
import com.SpringBoot.MovieReview.Entity.MovieUser;
import com.SpringBoot.MovieReview.Service.MovieService;
import com.SpringBoot.MovieReview.Service.UserService;

@RestController
@RequestMapping("/demo")
public class MovieTheatreController {

	@Autowired
	UserService userService;
	@Autowired
	MovieService movieService;
	
	public void getMovies(ModelAndView mv) {
		List<Movie> movies = movieService.getAllMovie(); 
		mv.addObject("movies",movies);
	}
	
	public void getUsers(ModelAndView mv) {
		List<MovieUser> users = userService.getAllMovieUser();
		mv.addObject("users", users);
	}
	
	@GetMapping("/")
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView();
		getMovies(mv);
		mv.setViewName("index");
		return mv;
	}

	@GetMapping("/register")
	public ModelAndView userRegisterPage() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new MovieUser());
		mv.setViewName("user_register");
		return mv;
	}

	@PostMapping("/registerUser")
	public ModelAndView registerUser(@ModelAttribute("user") MovieUser userData) {
		ModelAndView mv = new ModelAndView();
		if(userData.getName().isEmpty()||userData.getGmail().isEmpty()||userData.getPassword().isEmpty()) {
			mv.addObject("enterInfo", "Please enter all the Information");
			mv.setViewName("user_register");
		}
		else {
			MovieUser user = new MovieUser();
			user.setName(userData.getName());
			user.setPassword(userData.getPassword());
			user.setGmail(userData.getGmail());
			user.setStart_join_date(LocalDate.now());
			user.setLast_join_date(LocalDate.now());
			user.setAccess_count(0);
			user.setRole("user");
			userService.saveMovieUser(user);
		
			getMovies(mv); 
			mv.setViewName("index");
		}
		return mv;
	}
	
	
	
	@GetMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	@GetMapping("/checkLogin")
	public ModelAndView check(@RequestParam String gmail,@RequestParam String pwd,HttpSession session) {
		ModelAndView mv = new ModelAndView();
		getMovies(mv);
		getUsers(mv);
		MovieUser user = userService.checkUserLogin(gmail, pwd);
		if(user!=null) {
			user.setLast_join_date(LocalDate.now());
			user.setAccess_count(user.getAccess_count()+1);
			userService.saveMovieUser(user);
			
			if(user.getRole().equals("admin")) {
				session.setAttribute("admin",user);
				mv.setViewName("adminDashboard");
			}
			else {
				session.setAttribute("user", user);
				mv.setViewName("user_page");
			}
		}
		else {
			mv.addObject("notMatch","Invalid Username or Password");
			mv.setViewName("login");
		}
		return mv;
	}
	
	@GetMapping("/admin/getUsers")
	public ModelAndView showUsers() {
		ModelAndView mv = new ModelAndView();
		getUsers(mv);
		mv.setViewName("users");
		return mv;
	}
	
	@GetMapping("/admin/updateUser/{user_id}")
	public ModelAndView updateUser(@PathVariable("user_id")int id) {	
		ModelAndView mv = new ModelAndView();
		MovieUser user = userService.getMovieUser(id);
		mv.addObject("userdata",user);
		mv.addObject("newData",new MovieUser());
		mv.setViewName("update_user");
		return mv;
	}
	
	@PostMapping("/admin/updateUser")
	public void updatedUser(@ModelAttribute("newData") MovieUser user,HttpServletResponse response) throws IOException {
		userService.updateMovieUserRole(user);
		response.sendRedirect("/demo/admin/getUsers");
	}
	
	@GetMapping("/admin/deleteUser/{user_id}")
	public void deleteUser(@PathVariable("user_id")int id,HttpServletResponse response) throws IOException {
		userService.deleteMovieUser(id);
		response.sendRedirect("/demo/admin/getUsers");
	}
	
	@GetMapping("/admin/registerMovie")
	public ModelAndView AddMovie() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("movie", new Movie());
		mv.setViewName("movie_register");
		return mv;
	}

	@PostMapping("/admin/saveMovie")
	public ModelAndView saveMovie(@RequestParam String name,
			@RequestParam(required=false) String adult,
			@RequestParam MultipartFile poster_path,
			@RequestParam String budget,
			@RequestParam String homepage,
			@RequestParam MultipartFile trailer,
			@RequestParam String overview,
			@RequestParam String type,
			HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if(name.isEmpty()||adult.isEmpty()||poster_path.isEmpty()||budget.isEmpty()||homepage.isEmpty()||trailer.isEmpty()||overview.isEmpty()||type.isEmpty()) {
			mv.addObject("msg","Please enter all data information");
			mv.setViewName("movie_register");
		}
		else {
			movieService.saveMovieToDB(name,adult,poster_path,budget,homepage,trailer,overview,type,session);
			getMovies(mv);
			mv.setViewName("movies");
		}
		return mv;
	}
	
	@GetMapping("/admin/getMovies")
	public ModelAndView showMovies() {
		ModelAndView mv = new ModelAndView();
		getMovies(mv);
		mv.setViewName("movies");
		return mv;
	}

	@GetMapping("/admin/updateMovie/{id}")
	public ModelAndView updateMovie(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		Movie movie = movieService.getMovie(id);
		mv.addObject("movieInfo", movie);
		mv.addObject("newInfo", new Movie());
		mv.setViewName("update_movie");
		return mv;
	}

	@PostMapping("/admin/updateMovie")
	public void updatedMovie(@RequestParam int id,
			@RequestParam String name,
			@RequestParam String adult,
			@RequestParam MultipartFile poster_path,
			@RequestParam String budget,
			@RequestParam String homepage,
			@RequestParam MultipartFile trailer,
			@RequestParam String overview,
			@RequestParam String type,
			HttpSession session,
			HttpServletResponse response) throws IOException {
		movieService.updateMovie(id, name, adult, poster_path, budget, homepage, trailer, overview, type, session);
		response.sendRedirect("/demo/admin/getMovies");
	}

	@GetMapping("/admin/deleteMovie/{id}")
	public void deleteMovie(@PathVariable int id, HttpServletResponse response) throws IOException {
		movieService.deleteMovie(id);
		response.sendRedirect("/demo/admin/getMovies");
	}
	
	@GetMapping("/movieDetails/{id}")
	public ModelAndView movieDetail(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		Movie movie = movieService.getMovie(id);
		mv.addObject("movieInfo", movie);
		mv.setViewName("movie_detail");
		return mv;
	}
	
	@GetMapping("/user/movieDetails/{id}")
	public ModelAndView movieDetails(@PathVariable int id) {
		ModelAndView mv = new ModelAndView();
		Movie movie = movieService.getMovie(id);
		mv.addObject("movieInfo", movie);
		mv.setViewName("movie_details");
		return mv;
	}
	
	@GetMapping("/logout") 
	public void logout(HttpSession session,HttpServletResponse response) throws IOException {
		session.invalidate(); 
		response.sendRedirect("/demo/"); 
	}
	 
}
