package com.codingdojo.savetravels.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.codingdojo.savetravels.models.Expense;
import com.codingdojo.savetravels.services.ExpenseService;

@RestController
public class ExpensesAPI {
	private final ExpenseService expenseService;

	public ExpensesAPI(ExpenseService expenseService) {
		this.expenseService = expenseService;
	}
	
	@RequestMapping("/api/expenses")
    public List<Expense> index() {
        return expenseService.allExpenses();
    }
    
    @RequestMapping(value="/api/expenses", method=RequestMethod.POST)
    public Expense create(@RequestParam(value="name") String name, @RequestParam(value="vendor") String vendor, @RequestParam(value="amount") double amount, @RequestParam(value="description") String description) {
        Expense expense = new Expense(name, vendor, amount, description);
        return expenseService.createExpense(expense);
    }
    
    @RequestMapping("/api/expenses/{id}")
    public Expense show(@PathVariable("id") Long id) {
        Expense expense = expenseService.findExpense(id);
        return expense;
    }
	
	

}
