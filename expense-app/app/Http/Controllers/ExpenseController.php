<?php

namespace App\Http\Controllers;

use App\Http\Requests\ExpenseRequest;
use App\Models\Category;
use App\Models\Expense;
use Illuminate\Http\Request;

class ExpenseController extends Controller
{
    public function index()
    {
        $expenses = Expense::with('category')
            ->orderBy('expense_date', 'desc')
            ->paginate(8);

        return view('expenses.index', compact('expenses'));
    }

    public function create()
    {
        $categories = Category::all();

        return view('expenses.create', compact('categories'));
    }

    public function store(ExpenseRequest $request)
    {
        Expense::create($request->validated());

        return redirect()->route('expenses.index')->with('success', 'Despesa adicionada com sucesso.');
    }


    public function edit($id)
    {
        $expense = Expense::findOrFail($id);
        $categories = Category::all();

        return view('expenses.edit', compact('expense', 'categories'));
    }

    public function update(ExpenseRequest $request, $id)
    {
        $expense = Expense::findOrFail($id);

        $expense->update($request->validated());

        return redirect()->route('expenses.index')->with('success', 'Despesa atualizada com sucesso.');
    }

    public function destroy($id)
    {
        $expense = Expense::findOrFail($id);
        $expense->delete();

        return redirect()->route('expenses.index')->with('success', 'Despesa excluída com sucesso.');
    }
}
