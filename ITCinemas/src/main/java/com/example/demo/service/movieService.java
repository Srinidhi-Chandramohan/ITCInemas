package com.example.demo.service;

import java.awt.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.movieDAO;
import com.example.demo.model.Admin;
import com.example.demo.model.Movie;

@Service
public class movieService {
	@Autowired
	movieDAO dao;
	
	
	public List getMovie(){
		return dao.getMovies();
		}
	public List getSeats(){
		return dao.getSeats();	
	}
	public void postUserdata() {
		dao.postUserData();
	}
	
	public void postAdminData() {
		dao.postAdminData();
	}
	public void getAdminData() {
		dao.gerAdminData();
	}
	public void addMovie(Movie movie) {
		// TODO Auto-generated method stub
		System.out.println("Inside ser :");
		dao.addMovie(movie);
	}
	public boolean adminSignUp(Admin ad) {
		// TODO Auto-generated method stub
		if(dao.adminSignUp(ad)) {
			return true;
		}
		else
		return false;
	}
	
}
