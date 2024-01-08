package com.SpringBoot.MovieReview.Entity;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDate;

@Entity
public class MovieUser {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int user_id;
	@Column(name = "user_name", nullable = false, length = 30)
	String name;
	@Column(nullable = false)
	String password;
	@Column(unique = true, nullable = false)
	String gmail;
	String role;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	LocalDate start_join_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	LocalDate last_join_date;
	int access_count;

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGmail() {
		return gmail;
	}

	public void setGmail(String gmail) {
		this.gmail = gmail;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public LocalDate getStart_join_date() {
		return start_join_date;
	}

	public void setStart_join_date(LocalDate start_join_date) {
		this.start_join_date = start_join_date;
	}

	public LocalDate getLast_join_date() {
		return last_join_date;
	}

	public void setLast_join_date(LocalDate last_join_date) {
		this.last_join_date = last_join_date;
	}

	public int getAccess_count() {
		return access_count;
	}

	public void setAccess_count(int access_count) {
		this.access_count = access_count;
	}

	@Override
	public String toString() {
		return "MovieUser{" + "user_id=" + user_id + ", name='" + name + '\'' + ", password='" + password + '\''
				+ ", gmail='" + gmail + '\'' + ", role='" + role + '\'' + ", start_join_date=" + start_join_date
				+ ", last_join_date=" + last_join_date + ", access_count=" + access_count + '}';
	}
}
