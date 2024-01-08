package com.SpringBoot.MovieReview.Entity;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Movie {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(length = 30)
	private String name;
	private String adult;
	private String poster_path;
	private String budget;
	private String homepage;
	@Column(length = 500)
	private String trailer;
	@Lob
	private String overview;
	private String type;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	public String getPoster_path() {
		return poster_path;
	}

	public void setPoster_path(String poster_path) {
		this.poster_path = poster_path;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getHomepage() {
		return homepage;
	}

	public void setHomepage(String homepage) {
		this.homepage = homepage;
	}

	public String getTrailer() {
		return trailer;
	}

	public void setTrailer(String trailer) {
		this.trailer = trailer;
	}

	public String getOverview() {
		return overview;
	}

	public void setOverview(String overview) {
		this.overview = overview;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Movie [id=" + id + ", name=" + name + ", adult=" + adult + ", poster_path=" + poster_path + ", budget="
				+ budget + ", homepage=" + homepage + ", trailer=" + trailer + ", overview=" + overview + ", type="
				+ type + "]";
	}

}
