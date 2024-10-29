<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ExpenseRequest extends FormRequest
{
    public function authorize()
    {
        return true; 
    }

    public function rules()
    {
        return [
            'category_id' => 'required|exists:categories,id',
            'description' => 'required|string',
            'amount' => 'required|numeric',
            'expense_date' => 'required|date',
        ];
    }

    public function messages()
    {
        return [
            'category_id.required' => 'O campo Categoria é obrigatório.',
            'category_id.exists' => 'A Categoria selecionada não é válida.',
            'description.required' => 'O campo Descrição é obrigatório.',
            'description.string' => 'A Descrição deve ser uma string.',
            'amount.required' => 'O campo Valor é obrigatório.',
            'amount.numeric' => 'O Valor deve ser um número.',
            'expense_date.required' => 'O campo Data da Despesa é obrigatório.',
            'expense_date.date' => 'A Data da Despesa deve ser uma data válida.',
        ];
    }
}
