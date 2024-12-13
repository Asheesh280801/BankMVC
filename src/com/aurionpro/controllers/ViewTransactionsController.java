package com.aurionpro.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aurionpro.entities.Transaction;
import com.aurionpro.service.Database;


@WebServlet("/ViewTransactionsController")
public class ViewTransactionsController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = null;
		Database database = new Database();
		database.connect();
		List<Transaction> transactions = database.getAllTransactions();
		request.setAttribute("transactions", transactions);
		request.getRequestDispatcher("viewTransactions.jsp").forward(request, response);
		database.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
