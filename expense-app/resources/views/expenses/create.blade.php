@extends('layouts.app')

@section('content')
<h1 class="mb-4">Nova Despesa</h1>
<form action="{{ route('expenses.store') }}" method="POST" hx-post="{{ route('expenses.store') }}" hx-swap="outerHTML" class="mb-4">
    @csrf

    <div class="mb-3">
        <label for="category" class="form-label">Categoria:</label>
        <select name="category_id" id="category" class="form-select" data-js="category">
            @foreach ($categories as $category)
                <option value="{{ $category->id }}">{{ $category->name }}</option>
            @endforeach
        </select>
    </div>

    <div class="mb-3">
        <label for="description" class="form-label">Nome da Despesa:</label>
        <input type="text" name="description" id="description" class="form-control" required>
    </div>

    <div class="mb-3">
        <label for="amount" class="form-label">Valor:</label>
        <input type="text" name="amount" id="amount" class="form-control" required>
    </div>

    <div class="mb-3">
        <label for="date" class="form-label">Data da despesa:</label>
        <input type="datetime-local" name="expense_date" id="date" class="form-control" required>
    </div>

    <button type="submit" class="btn btn-primary">Adicionar Despesa</button>
</form>
@endsection
