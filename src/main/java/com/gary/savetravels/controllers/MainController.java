package com.gary.savetravels.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gary.savetravels.models.Expense;
import com.gary.savetravels.services.ExpenseService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/")
public class MainController {
	private ExpenseService expenseService;

	public MainController(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
	
	
	
	@GetMapping("/expenses")
	public String displayAllExpenses(Model model) {
		
		model.addAttribute("expenseList", expenseService.allExpenses());
		
		return "index.jsp";	
	}
	
	
	// Create Expense
	@PostMapping("/expenses")
	public String addExpense(@Valid @ModelAttribute("expense") Expense newExpense,
			BindingResult result
			) {
		/* Behind the scene:
		 * 1. Created an empty Expense
		 * 2. update the expense using setters
		 */
		 expenseService.createExpense(newExpense);
		 return "redirect:/expenses";
	}
	
	// Create Expense
	@GetMapping("/create")
	public String createExpense(@ModelAttribute("expense") Expense newExpense) {
		return "form.jsp";
	}
	
	
	@GetMapping("/expenses/edit/{id}")
	public String renderEditForm(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.oneExpense(id);
		model.addAttribute("expense", expense);
		return "edit.jsp";
	}
	
	@GetMapping("/expenses/{id}")
	public String renderDetails(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.oneExpense(id);
		model.addAttribute("expense", expense);
		return "details.jsp";
	}
	
	@PutMapping("/expenses/edit/{id}")
	public String processEdit(@Valid @ModelAttribute("expense") Expense Expense,
			BindingResult result) {
		if(result.hasErrors()) {
			return "edit.jsp";
		} else {
			expenseService.updateExpense(Expense);
			return "redirect:/expenses";
			
		}
	}
	
	@DeleteMapping("/expenses/{id}")
	public String processDelete(@PathVariable("id") Long id) {
		expenseService.deleteExpenseById(id);
		return "redirect:/expenses";
	}
	
}

	

