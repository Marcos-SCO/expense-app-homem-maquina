@extends('layouts.app')

@section('content')
<div class="container">
    <h1 class="mb-4">Editar Despesa</h1>

    <form action="{{ route('expenses.update', $expense->id) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="category" class="form-label">Categoria:</label>
            <select name="category_id" id="category" class="form-select">
                @foreach ($categories as $category)
                <option value="{{ $category->id }}" {{ $expense->category_id == $category->id ? 'selected' : '' }}>
                    {{ $category->name }}
                </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Descrição da Despesa:</label>
            <input type="text" name="description" id="description" class="form-control" value="{{ $expense->description }}" required>
        </div>

        <div class="mb-3">
            <label for="amount" class="form-label">Valor:</label>
            <input type="text" name="amount" id="amount" class="form-control" value="{{ $expense->amount }}" required>
        </div>

        <div class="mb-3">
            <label for="date" class="form-label">Data da despesa:</label>
            <input type="date" name="expense_date" id="date" class="form-control" value="{{ $expense->expense_date->format('Y-m-d') }}" required>
        </div>

        <button type="submit" class="btn btn-primary">Salvar Alterações</button>
    </form>
</div>
@endsection