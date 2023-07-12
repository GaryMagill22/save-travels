package com.gary.savetravels.services;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.gary.savetravels.models.Expense;
import com.gary.savetravels.repositories.ExpenseRepository;




@Service
public class ExpenseService {
	
	private final ExpenseRepository expenseRepo;
	
	public ExpenseService(ExpenseRepository expenseRepo) {
		this.expenseRepo = expenseRepo;
	}
		
	
	// Methods to run Queries
	
	
	// Find All
	public List<Expense> allExpenses() {
		return expenseRepo.findAll();
	}
	
	
	// Create Expense
	public Expense createExpense(Expense newExpense) {
		return expenseRepo.save(newExpense);
	}
	
	
	// Find one by Id
	public Expense oneExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	
	
	// Update Expense
	public Expense updateExpense(Expense updatedExpense) {
		return expenseRepo.save(updatedExpense);
	}
	
	
	// Delete Expense
	public void deleteExpenseById(Long id) {
		expenseRepo.deleteById(id);
	}
	
	
	
}
