package com.SpringBoot.MovieReview.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.SpringBoot.MovieReview.Entity.MovieUser;
import com.SpringBoot.MovieReview.Repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepository userRepository;

	@Override
	public MovieUser saveMovieUser(MovieUser movieUser) {
		return userRepository.save(movieUser);
	}

	@Override
	public MovieUser getMovieUser(int id) {
		MovieUser user = userRepository.findById(id).get();
		return user;
	}

	@Override
	public List<MovieUser> getAllMovieUser() {
		return userRepository.findAll();
	}
	
	@Override
	public MovieUser updateMovieUserRole(MovieUser movieUser) {
		MovieUser user = getMovieUser(movieUser.getUser_id());
		if (user != null) {
			user.setRole(movieUser.getRole());
		}
		userRepository.save(user);
		return null;
	}

	@Override
	public MovieUser updateMovieUser(MovieUser movieUser) {
		MovieUser user = getMovieUser(movieUser.getUser_id());
		if (user != null) {
			user.setName(movieUser.getName());
			user.setPassword(movieUser.getPassword());
			user.setGmail(movieUser.getGmail());
			user.setRole(movieUser.getRole());
			user.setStart_join_date(movieUser.getStart_join_date());
			user.setLast_join_date(movieUser.getLast_join_date());
			user.setAccess_count(movieUser.getAccess_count());
		}
		userRepository.save(user);
		return null;
	}

	@Override
	public boolean deleteMovieUser(int id) {
		userRepository.deleteById(id);
		return false;
	}

	@Override
	public MovieUser checkUserLogin(String gmail, String password) {
		return userRepository.findByGmailAndPassword(gmail, password);
	}

}