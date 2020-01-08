package com.example.demo.model;

public class Movie {
	private int movieId;
	private String movieName;
	private int availableSeats;
	private double movieRating;
	private int totalSeats;

	public int getMovieId() {
		return movieId;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public String getMovieName() {
		return movieName;
	}
	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}
	public int getAvilableSeats() {
		return availableSeats;
	}
	public void setAvilableSeats(int avilableSeats) {
		this.availableSeats = avilableSeats;
	}
	public double getMovieRating() {
		return movieRating;
	}
	public void setMovieRating(double movieRating) {
		this.movieRating = movieRating;
	}
	public int getTotalSeats() {
		return totalSeats;
	}
	public void setTotalSeats(int totalSeats) {
		this.totalSeats = totalSeats;
	}
	@Override
	public String toString() {
		return "Movie [movieId=" + movieId + ", movieName=" + movieName + ", avilableSeats=" + availableSeats
				+ ", movieRating=" + movieRating + ", totalSeats=" + totalSeats + "]";
	}

}
